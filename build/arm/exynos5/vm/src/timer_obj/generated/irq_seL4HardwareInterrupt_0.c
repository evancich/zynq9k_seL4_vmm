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

#include <assert.h>
#include <camkes.h>
#include <sel4/sel4.h>
#include <stdbool.h>
#include <stddef.h>
#include <utils/util.h>









    
    
    
    
    


int irq__run(void) {
    while (true) {
        seL4_Wait(11, NULL);
        irq_handle();
    }

    UNREACHABLE();
}

int irq_poll(void) {
    assert(!"not implemented for this connector");
    return 0;
}

void irq_wait(void) {
    assert(!"not implemented for this connector");
    while (true);
}

int irq_reg_callback(void (*callback)(void*) UNUSED,
        void *arg UNUSED) {
    assert(!"not implemented for this connector");
    return -1;
}

int irq_acknowledge(void) {
    return seL4_IRQHandler_Ack(12);
}