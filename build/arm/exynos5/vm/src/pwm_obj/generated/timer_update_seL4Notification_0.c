/*
 * Copyright 2017, Data61
 * Commonwealth Scientific and Industrial Research Organisation (CSIRO)
 * ABN 41 687 119 230.
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(DATA61_BSD)
 */

/* The basic design of this connector is to wait for an incoming event on the
 * notification, `notification`, and then forward any events to the secondary
 * notiifaciton, `handoff`. We also preference any registered callback
 * over this forwarding. The callback registration checks to see if there is a
 * pending event and, if so, invokes the callback immediately to short circuit
 * the process of registering it, deregistering it and then invoking it. Note
 * that we only operate on the callback slot while holding an internal lock.
 *
 * This design is intended to avoid race conditions when operating on a single
 * endpoint in multiple modes. The intent is to also avoid reaching a state
 * where there is both a registered callback and a pending notification on the
 * `handoff` endpoint. We also strive to never invoke the caller's callback
 * function while holding the internal lock as it may inadvertently cause a
 * deadlock.
 */

#include <assert.h>
#include <camkes/error.h>
#include <camkes/tls.h>
#include <limits.h>
#include <sel4/sel4.h>
#include <stdbool.h>
#include <stddef.h>
#include <sync/bin_sem_bare.h>
#include <sync/sem-bare.h>
#include <utils/util.h>



/* Interface-specific error handling. */


/*
 * Copyright 2017, Data61
 * Commonwealth Scientific and Industrial Research Organisation (CSIRO)
 * ABN 41 687 119 230.
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(DATA61_BSD)
 */


     
 

/* The currently active error handler. This variable is marked UNUSED to squash
 * compiler warnings generated when the user's build configuration causes the
 * two following functions to be pruned from the final source.
 */
static camkes_error_handler_t timer_update_error_handler_fn UNUSED;

camkes_error_handler_t timer_update_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = timer_update_error_handler_fn;
    timer_update_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED timer_update_error_handler(camkes_error_t *error) {
    if (timer_update_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return timer_update_error_handler_fn(error);
}






static volatile int handoff_value;


static volatile int lock_count = 1;

static int lock(void) {
    int result = sync_bin_sem_bare_wait(26, &lock_count);
    __sync_synchronize();
    return result;
}

static int unlock(void) {
    __sync_synchronize();
    return sync_bin_sem_bare_post(26, &lock_count);
}

static void (*callback)(void*);
static void *callback_arg;

int timer_update__run(void) {
    while (true) {
        seL4_Wait(24, NULL);

        if (lock() != 0) {
            /* Failed to acquire the lock (`INT_MAX` threads in `register`?).
             * It's unsafe to go on at this point, so just drop the event.
             */
            continue;
        }

        /* Read and deregister any callback. */
        void (*cb)(void*) = callback;
        callback = NULL;
        void *arg = callback_arg;

        if (cb == NULL) {
            /* No callback was registered. */

            /* Check that we're not about to overflow the handoff semaphore. If
             * we are, we just silently drop the event as allowed by the
             * semantics of this connector. Note that there is no race
             * condition here because we are the only thread incrementing the
             * semaphore.
             */
            if (handoff_value != INT_MAX) {
                sync_sem_bare_post(25, &handoff_value);
            }
        }

        int result UNUSED = unlock();
        assert(result == 0);

        if (cb != NULL) {
            /* A callback was registered. Note that `cb` is a local variable
             * and thus we know that the semaphore post above was not executed.
             */
            cb(arg);
        }
    }
}

static int poll(void) {
    return sync_sem_bare_trywait(25, &handoff_value) == 0;
}

int timer_update_poll(void) {
    return poll();
}

void timer_update_wait(void) {
#ifndef CONFIG_KERNEL_RT
    camkes_protect_reply_cap();
#endif
    if (unlikely(sync_sem_bare_wait(25, &handoff_value) != 0)) {
        ERR(timer_update_error_handler, ((camkes_error_t){
                .type = CE_OVERFLOW,
                .instance = "pwm_obj",
                .interface = "timer_update",
                .description = "failed to wait on event due to potential overflow",
            }), ({
                return;
            }));
    }
}

int timer_update_reg_callback(void (*cb)(void*), void *arg) {

    /* First see if there's a pending event, allowing us to immediately invoke
     * the callback without having to register it.
     */
    if (poll()) {
        cb(arg);
        return 0;
    }

    if (lock() != 0) {
        /* Failed to acquire the lock (`INT_MAX` threads in this function?). */
        return -1;
    }

    if (poll()) {
        /* An event arrived in between us checking previously and acquiring the
         * lock.
         */
        int result UNUSED = unlock();
        assert(result == 0);
        cb(arg);
        return 0;

    } else if (callback != NULL) {
        /* There is already a registered callback. */
        int result UNUSED = unlock();
        assert(result == 0);
        return -1;

    } else {
        /* Register the callback. Expected case. */
        callback = cb;
        callback_arg = arg;
        int result UNUSED = unlock();
        assert(result == 0);
        return 0;
    }
}