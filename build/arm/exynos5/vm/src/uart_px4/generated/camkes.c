

#include <autoconf.h>
#include <assert.h>
#include <camkes.h> /* generated header */
#include <platsupport/io.h>
#include <sel4/types.h>
#include <sel4/sel4.h>
#include <sync/mutex.h>
#include <sync/sem.h>
#include <sync/bin_sem.h>
#include <sel4platsupport/platsupport.h>
#include <camkes/allocator.h>
#include <camkes/dataport.h>
#include <camkes/dma.h>
#include <camkes/error.h>
#include <camkes/fault.h>
#include <camkes/io.h>
#include <camkes/pid.h>
#include <camkes/tls.h>
#include <camkes/vma.h>
#include <camkes/version.h>
#include <camkes/syscalls.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <sync/sem-bare.h>
#include <sel4utils/mapping.h>
#include <sys/types.h>
#include <unistd.h>
#include <utils/util.h>




static void (* _camkes__36)(int c);

void set_putchar(void (*putchar)(int c)) {
    _camkes__36 = putchar;
}

void __arch_putchar(int c) {
    if (_camkes__36 != NULL) {
        _camkes__36(c);
        return;
    }
#ifdef CONFIG_PRINTING
    seL4_DebugPutChar(c);
#endif
}

const char *get_instance_name(void) {
    static const char name[] = "uart_px4";
    return name;
}

/* DMA functionality. */







static char camkes_dma_pool[0]

    
    
    SECTION("align_12bit")

;







uintptr_t _camkes_get_paddr_37(void *ptr) {
    uintptr_t base UNUSED = (uintptr_t)ptr & ~MASK(ffs(4096) - 1);
    uintptr_t offset UNUSED = (uintptr_t)ptr & MASK(ffs(4096) - 1);
    
    return (uintptr_t)NULL;
}


seL4_CPtr _camkes_get_cptr_38(void *ptr) {
    uintptr_t base UNUSED = (uintptr_t)ptr & ~MASK(ffs(4096) - 1);
    uintptr_t offset UNUSED = (uintptr_t)ptr & MASK(ffs(4096) - 1);
    
    return seL4_CapNull;
}

/* MMIO related functionality for interaction with libplatsupport. */
void *camkes_io_map(void *cookie UNUSED, uintptr_t paddr UNUSED,
        size_t size UNUSED, int cached UNUSED, ps_mem_flags_t flags UNUSED) {

    
        extern void * uart0base_translate_paddr(uintptr_t paddr,
            size_t size) WEAK;
        if (uart0base_translate_paddr != NULL) {
            void *p = uart0base_translate_paddr(paddr, size);
            if (p != NULL) {
                return p;
            }
        }
    
        extern void * client_buf_translate_paddr(uintptr_t paddr,
            size_t size) WEAK;
        if (client_buf_translate_paddr != NULL) {
            void *p = client_buf_translate_paddr(paddr, size);
            if (p != NULL) {
                return p;
            }
        }
    

    /* Not found. */
    return NULL;
}

/* IO port related functionality for interaction with libplatsupport. */
int camkes_io_port_in(void *cookie UNUSED, uint32_t port UNUSED,
        int io_size UNUSED, uint32_t *result UNUSED) {
    
        
    
    return -1;
}
int camkes_io_port_out(void *cookie UNUSED, uint32_t port UNUSED,
        int io_size UNUSED, uint32_t val UNUSED) {
    
        
    
    return -1;
}

/* Mutex functionality. */


/* Semaphore functionality. */



static sync_sem_t _camkes_read_sem_39;

static int semaphore_read_sem_init(void) {
    
    return sync_sem_init(&_camkes_read_sem_39, 1,
        1);
}

int read_sem_wait(void) {
#ifndef CONFIG_KERNEL_RT
    camkes_protect_reply_cap();
#endif
    return sync_sem_wait(&_camkes_read_sem_39);
}

int read_sem_trywait(void) {
    return sync_sem_trywait(&_camkes_read_sem_39);
}

int read_sem_post(void) {
    return sync_sem_post(&_camkes_read_sem_39);
}




static sync_sem_t _camkes_write_sem_40;

static int semaphore_write_sem_init(void) {
    
    return sync_sem_init(&_camkes_write_sem_40, 2,
        1);
}

int write_sem_wait(void) {
#ifndef CONFIG_KERNEL_RT
    camkes_protect_reply_cap();
#endif
    return sync_sem_wait(&_camkes_write_sem_40);
}

int write_sem_trywait(void) {
    return sync_sem_trywait(&_camkes_write_sem_40);
}

int write_sem_post(void) {
    return sync_sem_post(&_camkes_write_sem_40);
}





#ifdef CONFIG_CAMKES_DEFAULT_HEAP_SIZE



static char _camkes__41[CONFIG_CAMKES_DEFAULT_HEAP_SIZE];
extern char *morecore_area;
extern size_t morecore_size;
#else

#endif

/* Install additional syscalls in an init constructor instead of in
 * init so that there is a way for other applications to decide whether
 * they want to provide their syscall implementation before or after
 * the camkes ones */
static void CONSTRUCTOR(CAMKES_SYSCALL_CONSTRUCTOR_PRIORITY) init_install_syscalls(void) {
    camkes_install_syscalls();
}

/* General CAmkES platform initialisation. Expects to be run in a
 * single-threaded, exclusive context. On failure it does not return.
 */

static void _camkes__42(void) {
#ifdef CONFIG_CAMKES_DEFAULT_HEAP_SIZE
    /* Assign the heap */
    morecore_area = _camkes__41;
    morecore_size = CONFIG_CAMKES_DEFAULT_HEAP_SIZE;
#endif

    /* The user has actually had no opportunity to install any error handlers at
     * this point, so any error triggered below will certainly be fatal.
     */
    int res = camkes_dma_init(camkes_dma_pool, 0,
        4096, _camkes_get_paddr_37, _camkes_get_cptr_38);
    ERR_IF(res != 0, camkes_error, ((camkes_error_t){
            .type = CE_ALLOCATION_FAILURE,
            .instance = "uart_px4",
            .description = "DMA initialisation failed",
        }), ({
            return;
        }));
    
    
        res = semaphore_read_sem_init();
        ERR_IF(res != 0, camkes_error, ((camkes_error_t){
                .type = CE_ALLOCATION_FAILURE,
                .instance = "uart_px4",
                .description = "initialisation of semaphore \"read_sem\" failed",
            }), ({
                return;
            }));
    
        res = semaphore_write_sem_init();
        ERR_IF(res != 0, camkes_error, ((camkes_error_t){
                .type = CE_ALLOCATION_FAILURE,
                .instance = "uart_px4",
                .description = "initialisation of semaphore \"write_sem\" failed",
            }), ({
                return;
            }));
    
    

    /* Initialise cap allocator. */
    
    
    
    
    
    
    
    
        
        
    
    
}

#ifndef CONFIG_CAMKES_DEFAULT_STACK_SIZE
    #define CONFIG_CAMKES_DEFAULT_STACK_SIZE PAGE_SIZE_4K
#endif


    

    




/* Thread stacks */


char _camkes_stack_uart_px4_0_control[ROUND_UP_UNSAFE(CONFIG_CAMKES_DEFAULT_STACK_SIZE, PAGE_SIZE_4K) + PAGE_SIZE_4K * 2]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);


    
    
    char _camkes_stack_uart_px4_interrupt_0000[ROUND_UP_UNSAFE(CONFIG_CAMKES_DEFAULT_STACK_SIZE, PAGE_SIZE_4K) + PAGE_SIZE_4K * 2]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);


    
    
    char _camkes_stack_uart_px4_uart_0000[ROUND_UP_UNSAFE(CONFIG_CAMKES_DEFAULT_STACK_SIZE, PAGE_SIZE_4K) + PAGE_SIZE_4K * 2]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);



    
    char _camkes_stack_uart_px4_0_fault_handler_0000[ROUND_UP_UNSAFE(CONFIG_CAMKES_DEFAULT_STACK_SIZE, PAGE_SIZE_4K) + PAGE_SIZE_4K * 2]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);



/* IPC buffers */

char _camkes_ipc_buffer_uart_px4_0_control[PAGE_SIZE_4K * 3]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);


    
    char _camkes_ipc_buffer_uart_px4_interrupt_0000[PAGE_SIZE_4K * 3]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);


    
    char _camkes_ipc_buffer_uart_px4_uart_0000[PAGE_SIZE_4K * 3]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);



    
    char _camkes_ipc_buffer_uart_px4_0_fault_handler_0000[PAGE_SIZE_4K * 3]
    VISIBLE
    __attribute__((section("guarded")))
    ALIGN(PAGE_SIZE_4K);



/* Attributes */


    
    
        const int ID =
        3
        ;
    



  


static int post_main(int thread_id);
/* This function is called from crt0.S. If this is called for the control
 * thread then we should return so that the C library can be initialized
 * and we will come back executing in 'main'. For all other threads we should
 * jump straight to post_main */
void USED _camkes_tls_init(int thread_id) {
    switch (thread_id) {
        
        
        

        

        
          
          
          
          
        
        
        case 3 : /* Control thread */
            
            #ifdef ARCH_X86
    /* We need to save the address of the IPC buffer (for
     * marshalling/unmarshalling) per-thread. Essentially what we're after
     * is TLS. Use the IPC buffer's user data word for that. Note that we
     * add a page to skip over the guard page in front of the IPC buffer.
     */
    seL4_SetUserData((seL4_Word)_camkes_ipc_buffer_uart_px4_0_control + 2 * PAGE_SIZE_4K - sizeof(seL4_IPCBuffer));
#endif

            
            camkes_get_tls()->tcb_cap = 3;
            camkes_get_tls()->thread_index = 1;
            break;

        
        
            
            

            
            
            

            

            

            
              
              
              
              
            
            case 5 : { /* Interface interrupt */
                #ifdef ARCH_X86
    /* We need to save the address of the IPC buffer (for
     * marshalling/unmarshalling) per-thread. Essentially what we're after
     * is TLS. Use the IPC buffer's user data word for that. Note that we
     * add a page to skip over the guard page in front of the IPC buffer.
     */
    seL4_SetUserData((seL4_Word)_camkes_ipc_buffer_uart_px4_interrupt_0000 + 2 * PAGE_SIZE_4K - sizeof(seL4_IPCBuffer));
#endif

                camkes_get_tls()->tcb_cap = 5;
                camkes_get_tls()->thread_index = 0 + 2;
                exit(post_main(thread_id));
                break;
            }
        
            
            

            
            
            

            

            

            
              
              
              
              
            
            case 7 : { /* Interface uart */
                #ifdef ARCH_X86
    /* We need to save the address of the IPC buffer (for
     * marshalling/unmarshalling) per-thread. Essentially what we're after
     * is TLS. Use the IPC buffer's user data word for that. Note that we
     * add a page to skip over the guard page in front of the IPC buffer.
     */
    seL4_SetUserData((seL4_Word)_camkes_ipc_buffer_uart_px4_uart_0000 + 2 * PAGE_SIZE_4K - sizeof(seL4_IPCBuffer));
#endif

                camkes_get_tls()->tcb_cap = 7;
                camkes_get_tls()->thread_index = 1 + 2;
                exit(post_main(thread_id));
                break;
            }
        

        
            
            
            

            case 9 : { /* Fault handler thread */
                
                #ifdef ARCH_X86
    /* We need to save the address of the IPC buffer (for
     * marshalling/unmarshalling) per-thread. Essentially what we're after
     * is TLS. Use the IPC buffer's user data word for that. Note that we
     * add a page to skip over the guard page in front of the IPC buffer.
     */
    seL4_SetUserData((seL4_Word)_camkes_ipc_buffer_uart_px4_0_fault_handler_0000 + 2 * PAGE_SIZE_4K - sizeof(seL4_IPCBuffer));
#endif

                camkes_get_tls()->tcb_cap = 9;
                camkes_get_tls()->thread_index = 3 + 1;
                exit(post_main(thread_id));
                break;
            }
        

        default:
            assert(!"invalid thread ID");
    }
}


    
    static void _camkes_fault_handler_43(void) UNUSED NORETURN;
    static void _camkes_fault_handler_43(void) {
        while (true) {
            seL4_Word badge;

            /* Wait for a fault from one of the component's threads. */
            
            
            seL4_MessageInfo_t info = seL4_Recv(10, &badge);

            /* Various symbols that are provided by the linker script. */
            extern const char __executable_start[1];
            extern const char guarded[1] UNUSED;
            extern const char _end[1] UNUSED;

            /* Thread name and address space map relevant for this fault. Note
             * that we describe a simplified version of the component's address
             * space below (e.g. we only describe the stack of the current
             * thread). The assumption is that the full address space will
             * confuse the user and most likely not be relevant for diagnosing
             * the fault. E.g. you may have faulted on another thread's guard
             * page, which will not be revealed to you in the memory map, but
             * it is unlikely this information will help you diagnose the cause
             * of the fault anyway.
             */
            const char *thread_name;
            const camkes_memory_region_t *memory_map;

            /* Each of the component's threads have a badged endpoint, so we
             * can determine from the badge of the message we just received
             * which thread was responsible for the fault.
             */
            switch (badge) {

                
                
                case 3 : {
                    thread_name = "control";
                    
                      memory_map = (camkes_memory_region_t[]){
                          { .start = (uintptr_t)__executable_start,
                            .end = (uintptr_t)guarded - 1,
                            .name = "code and data" },
                          { .start = (uintptr_t)&_camkes_stack_uart_px4_0_control,
                            .end = (uintptr_t)&_camkes_stack_uart_px4_0_control + PAGE_SIZE_4K - 1,
                            .name = "guard page" },
                          { .start = (uintptr_t)&_camkes_stack_uart_px4_0_control + PAGE_SIZE_4K,
                            .end = (uintptr_t)&_camkes_stack_uart_px4_0_control +
                              sizeof(_camkes_stack_uart_px4_0_control) - PAGE_SIZE_4K - 1,
                            .name = "stack" },
                          { .start = (uintptr_t)&_camkes_stack_uart_px4_0_control +
                              sizeof(_camkes_stack_uart_px4_0_control) - PAGE_SIZE_4K,
                            .end = (uintptr_t)&_camkes_stack_uart_px4_0_control +
                              sizeof(_camkes_stack_uart_px4_0_control) - 1,
                            .name = "guard page" },
                          { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control,
                            .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K - 1,
                            .name = "guard page" },
                          { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K,
                            .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control +
                              sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K - 1,
                            .name = "IPC buffer" },
                          { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control +
                              sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K,
                            .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_0_control +
                              sizeof(_camkes_ipc_buffer_uart_px4_0_control) - 1,
                            .name = "guard page" },
                          { .start = 0, .end = 0, .name = NULL },
                      };
                    
                    break;
                }

                
                    
                    
                    case 5 : {
                        thread_name = "interrupt";
                        
                          memory_map = (camkes_memory_region_t[]){
                              { .start = (uintptr_t)__executable_start,
                                .end = (uintptr_t)guarded - 1,
                                .name = "code and data" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000 + PAGE_SIZE_4K - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_stack_uart_px4_interrupt_0000) - PAGE_SIZE_4K - 1,
                                .name = "stack" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_stack_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_stack_uart_px4_interrupt_0000) - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K - 1,
                                .name = "IPC buffer" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_interrupt_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - 1,
                                .name = "guard page" },
                              { .start = 0, .end = 0, .name = NULL },
                          };
                        
                        break;
                    }
                
                    
                    
                    case 7 : {
                        thread_name = "uart";
                        
                          memory_map = (camkes_memory_region_t[]){
                              { .start = (uintptr_t)__executable_start,
                                .end = (uintptr_t)guarded - 1,
                                .name = "code and data" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_uart_0000,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_uart_0000 + PAGE_SIZE_4K - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_uart_0000 + PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_uart_0000 +
                                  sizeof(_camkes_stack_uart_px4_uart_0000) - PAGE_SIZE_4K - 1,
                                .name = "stack" },
                              { .start = (uintptr_t)&_camkes_stack_uart_px4_uart_0000 +
                                  sizeof(_camkes_stack_uart_px4_uart_0000) - PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_stack_uart_px4_uart_0000 +
                                  sizeof(_camkes_stack_uart_px4_uart_0000) - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K - 1,
                                .name = "guard page" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K - 1,
                                .name = "IPC buffer" },
                              { .start = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K,
                                .end = (uintptr_t)&_camkes_ipc_buffer_uart_px4_uart_0000 +
                                  sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - 1,
                                .name = "guard page" },
                              { .start = 0, .end = 0, .name = NULL },
                          };
                        
                        break;
                    }
                

                default:
                    thread_name = "<unknown>";
                    memory_map = NULL;
                    break;
            }

            camkes_show_fault(info, (seL4_CPtr)badge, thread_name,
                
                    true,
                
                memory_map);
        }
    }


const char * get_thread_name(int thread_id) {
    switch (thread_id) {
        
        case 9: return "fault_handler";
        
        case 3: return "control";
        
        case 5: return "interrupt";
        
        case 7: return "uart";
        
    }
    return "(unknown)";
}

static int post_main(int thread_id) {
#if defined(CONFIG_DEBUG_BUILD) && defined(CONFIG_CAMKES_PROVIDE_TCB_CAPS)
   
   char _camkes__44[seL4_MsgMaxLength * sizeof(seL4_Word)];
   snprintf(_camkes__44, sizeof(_camkes__44), "%s:%s",
       get_instance_name(), get_thread_name(thread_id));
   _camkes__44[sizeof(_camkes__44) - 1] = '\0';
   seL4_DebugNameThread(camkes_get_tls()->tcb_cap, _camkes__44);
#endif

    
        
        
        
        static volatile int UNUSED _camkes_pre_init_lock_45 = 0;
        
        
        static volatile int UNUSED _camkes_interface_init_lock_46 = 0;
        
        
        static volatile int UNUSED _camkes_post_init_lock_47 = 0;
    

    switch (thread_id) {

        case 0:
            /* This case is just here to help debugging. If you hit this case,
             * what is happening is probably a failure in passing arguments
             * (thread ID) from our loader.
             */
            assert(!"invalid thread ID");
            return -1;

        
        case 3 : /* Control thread */
            _camkes__42();

            
            int _camkes__48 UNUSED;

            
                if (pre_init) {
                    pre_init();
                }

                /* Wake all the non-passive interface threads. */
                
                    
                        sync_sem_bare_post(11, &_camkes_pre_init_lock_45);
                    
                
                    
                        sync_sem_bare_post(11, &_camkes_pre_init_lock_45);
                    
                

                /* Wait for all the non-passive interface threads to run their inits. */
                
                    
                        sync_sem_bare_wait(12, &_camkes_interface_init_lock_46);
                    
                
                    
                        sync_sem_bare_wait(12, &_camkes_interface_init_lock_46);
                    
                

                

                if (post_init) {
                    post_init();
                }

                /* Wake all the interface threads, including passive threads.
                 * Passive threads will receive the IPC despite not having scheduling contexts
                 * at this point. Next time they are given scheduling contexts they will be
                 * unblocked. */
                
                    sync_sem_bare_post(13, &_camkes_post_init_lock_47);
                
                    sync_sem_bare_post(13, &_camkes_post_init_lock_47);
                
            

            

            
                return run();
            

        
        
            
            case 5 : { /* Interface interrupt */
                
                    /* Wait for `pre_init` to complete. */
                    sync_sem_bare_wait(11, &_camkes_pre_init_lock_45);
                    if (interrupt__init) {
                        interrupt__init();
                    }
                    /* Notify the control thread that we've completed init. */
                    sync_sem_bare_post(12, &_camkes_interface_init_lock_46);
                    /* Wait for the `post_init` to complete. */
                    sync_sem_bare_wait(13, &_camkes_post_init_lock_47);
                

                
                
                    extern int interrupt__run(void) WEAK;
                    if (interrupt__run) {
                        return interrupt__run();
                    }
                

                return 0;
            }
        
            
            case 7 : { /* Interface uart */
                
                    /* Wait for `pre_init` to complete. */
                    sync_sem_bare_wait(11, &_camkes_pre_init_lock_45);
                    if (uart__init) {
                        uart__init();
                    }
                    /* Notify the control thread that we've completed init. */
                    sync_sem_bare_post(12, &_camkes_interface_init_lock_46);
                    /* Wait for the `post_init` to complete. */
                    sync_sem_bare_wait(13, &_camkes_post_init_lock_47);
                

                
                
                    extern int uart__run(void) WEAK;
                    if (uart__run) {
                        return uart__run();
                    }
                

                return 0;
            }
        

        
            
            case 9 : { /* Fault handler thread */
                _camkes_fault_handler_43();
                UNREACHABLE();
                return 0;
            }
        

        default:
            /* If we reach this point, the initialiser gave us a thread we
             * weren't expecting.
             */
            assert(!"Template generation failure");
            return -1;
    }
}

int USED main(int argc UNUSED, char *argv[]) {
    assert(argc == 2);
    assert(strcmp(argv[0], "camkes") == 0);

    int thread_id = (int)(uintptr_t)(argv[1]);
    return post_main(thread_id);
}



/* Prototypes for functions generated in per-interface files. */

    extern int uart0base_wrap_ptr(dataport_ptr_t *p, void *ptr)
    
    ;

    extern int client_buf_wrap_ptr(dataport_ptr_t *p, void *ptr)
    
    ;

dataport_ptr_t dataport_wrap_ptr(void *ptr UNUSED) {
    dataport_ptr_t p = { .id = -1 };
    
        if (
            
            uart0base_wrap_ptr(&p, ptr) == 0) {
            return p;
        }
    
        if (
            
            client_buf_wrap_ptr(&p, ptr) == 0) {
            return p;
        }
    
    return p;
}

/* Prototypes for functions generated in per-interface files. */

    extern void * uart0base_unwrap_ptr(dataport_ptr_t *p)
    
    ;

    extern void * client_buf_unwrap_ptr(dataport_ptr_t *p)
    
    ;

void *dataport_unwrap_ptr(dataport_ptr_t p UNUSED) {
    void *ptr = NULL;
    
        
                ptr = uart0base_unwrap_ptr(&p);
                if (ptr != NULL) {
                    return ptr;
                }
        
    
        
                ptr = client_buf_unwrap_ptr(&p);
                if (ptr != NULL) {
                    return ptr;
                }
        
    
    return ptr;
}

/* These symbols are provided by the default linker script. */
extern const char __executable_start[1]; /* Start of text section */
extern const char __etext[1]; /* End of text section, start of rodata section */
extern const char __preinit_array_start[1]; /* End of rodata section, start of data section */
extern const char _edata[1]; /* End of data section */
extern const char __bss_start[1]; /* Start of bss section */
extern const char _end[1]; /* End of bss section */

/* See vma.h in libsel4camkes for a description of this array. */
const struct camkes_vma camkes_vmas[] = {
    {
        .start = (void*)__executable_start,
        .end = (void*)__etext,
        .read = true,
        .write = false,
        .execute = true,
        .cached = true,
        .name = ".text",
    },
    {
        .start = (void*)__etext,
        .end = (void*)__preinit_array_start,
        .read = true,
        .write = false,
        .execute = false,
        .cached = true,
        .name = ".rodata",
    },
    {
        .start = (void*)__preinit_array_start,
        .end = (void*)_edata,
        .read = true,
        .write = true,
        .execute = false,
        .cached = true,
        .name = ".data",
    },
    {
        .start = (void*)__bss_start,
        .end = (void*)_end,
        .read = true,
        .write = true,
        .execute = false,
        .cached = true,
        .name = ".bss",
    },
    
    {
        .start = (void*)_camkes_stack_uart_px4_0_control,
        .end = (void*)_camkes_stack_uart_px4_0_control + PAGE_SIZE_4K,
        .read = false,
        .write = false,
        .execute = false,
        .cached = true,
        .name = "guard page below control thread's stack",
    },
    {
        .start = (void*)_camkes_stack_uart_px4_0_control + PAGE_SIZE_4K,
        .end = (void*)_camkes_stack_uart_px4_0_control + sizeof(_camkes_stack_uart_px4_0_control) - PAGE_SIZE_4K,
        .read = true,
        .write = true,
        .execute = false,
        .cached = true,
        .name = "control thread's stack",
    },
    {
        .start = (void*)_camkes_stack_uart_px4_0_control + sizeof(_camkes_stack_uart_px4_0_control) - PAGE_SIZE_4K,
        .end = (void*)_camkes_stack_uart_px4_0_control + sizeof(_camkes_stack_uart_px4_0_control),
        .read = false,
        .end = false,
        .execute = false,
        .cached = true,
        .name = "guard page above control thread's stack",
    },
    {
        .start = (void*)_camkes_ipc_buffer_uart_px4_0_control,
        .end = (void*)_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K,
        .read = false,
        .write = false,
        .execute = false,
        .cached = true,
        .name = "guard page below control thread's TLS/IPC region",
    },
    {
        .start = (void*)_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K,
        .end = (void*)_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K + sizeof(camkes_tls_t),
        .read = true,
        .write = true,
        .execute = false,
        .cached = true,
        .name = "control thread's TLS region",
    },
    {
        .start = (void*)_camkes_ipc_buffer_uart_px4_0_control + PAGE_SIZE_4K + sizeof(camkes_tls_t),
        .end = (void*)_camkes_ipc_buffer_uart_px4_0_control + sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
        .read = false,
        .write = false,
        .execute = false,
        .cached = true,
        .name = "control thread's TLS to IPC buffer interstice",
    },
    {
        .start = (void*)_camkes_ipc_buffer_uart_px4_0_control + sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
        .end = (void*)_camkes_ipc_buffer_uart_px4_0_control + sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K,
        .read = true,
        .write = true,
        .execute = false,
        .cached = true,
        .name = "control thread's IPC buffer",
    },
    {
        .start = (void*)_camkes_ipc_buffer_uart_px4_0_control + sizeof(_camkes_ipc_buffer_uart_px4_0_control) - PAGE_SIZE_4K,
        .end = (void*)_camkes_ipc_buffer_uart_px4_0_control + sizeof(_camkes_ipc_buffer_uart_px4_0_control),
        .read = false,
        .write = false,
        .execute = false,
        .cached = true,
        .name = "guard page above control thread's TLS/IPC region",
    },
    
    {
        .start = (void*)camkes_dma_pool,
        .end = (void*)camkes_dma_pool + sizeof(camkes_dma_pool),
        .read = true,
        .write = true,
        .execute = false,
        .cached = false,
        .name = "DMA pool",
    },
    
        
        {
            .start = (void*)_camkes_stack_uart_px4_interrupt_0000,
            .end = (void*)_camkes_stack_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page below interface interrupt thread's stack",
        },
        {
            .start = (void*)_camkes_stack_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
            .end = (void*)_camkes_stack_uart_px4_interrupt_0000 + sizeof(_camkes_stack_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface interrupt thread's stack",
        },
        {
            .start = (void*)_camkes_stack_uart_px4_interrupt_0000 + sizeof(_camkes_stack_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
            .end = (void*)_camkes_stack_uart_px4_interrupt_0000 + sizeof(_camkes_stack_uart_px4_interrupt_0000),
            .read = false,
            .end = false,
            .execute = false,
            .cached = true,
            .name = "guard page above interface interrupt thread's stack",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000,
            .end = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page below interface interrupt thread's TLS/IPC region",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K,
            .end = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K + sizeof(camkes_tls_t),
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface interrupt thread's TLS region",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + PAGE_SIZE_4K + sizeof(camkes_tls_t),
            .end = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "interface interrupt thread's TLS to IPC buffer interstice",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
            .end = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface interrupt thread's IPC buffer",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000) - PAGE_SIZE_4K,
            .end = (void*)_camkes_ipc_buffer_uart_px4_interrupt_0000 + sizeof(_camkes_ipc_buffer_uart_px4_interrupt_0000),
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page above interface interrupt thread's TLS/IPC region",
        },
    
        
        {
            .start = (void*)_camkes_stack_uart_px4_uart_0000,
            .end = (void*)_camkes_stack_uart_px4_uart_0000 + PAGE_SIZE_4K,
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page below interface uart thread's stack",
        },
        {
            .start = (void*)_camkes_stack_uart_px4_uart_0000 + PAGE_SIZE_4K,
            .end = (void*)_camkes_stack_uart_px4_uart_0000 + sizeof(_camkes_stack_uart_px4_uart_0000) - PAGE_SIZE_4K,
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface uart thread's stack",
        },
        {
            .start = (void*)_camkes_stack_uart_px4_uart_0000 + sizeof(_camkes_stack_uart_px4_uart_0000) - PAGE_SIZE_4K,
            .end = (void*)_camkes_stack_uart_px4_uart_0000 + sizeof(_camkes_stack_uart_px4_uart_0000),
            .read = false,
            .end = false,
            .execute = false,
            .cached = true,
            .name = "guard page above interface uart thread's stack",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_uart_0000,
            .end = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K,
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page below interface uart thread's TLS/IPC region",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K,
            .end = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K + sizeof(camkes_tls_t),
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface uart thread's TLS region",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + PAGE_SIZE_4K + sizeof(camkes_tls_t),
            .end = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "interface uart thread's TLS to IPC buffer interstice",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K - sizeof(seL4_IPCBuffer),
            .end = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K,
            .read = true,
            .write = true,
            .execute = false,
            .cached = true,
            .name = "interface uart thread's IPC buffer",
        },
        {
            .start = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + sizeof(_camkes_ipc_buffer_uart_px4_uart_0000) - PAGE_SIZE_4K,
            .end = (void*)_camkes_ipc_buffer_uart_px4_uart_0000 + sizeof(_camkes_ipc_buffer_uart_px4_uart_0000),
            .read = false,
            .write = false,
            .execute = false,
            .cached = true,
            .name = "guard page above interface uart thread's TLS/IPC region",
        },
    
};

const size_t camkes_vmas_size = sizeof camkes_vmas / sizeof camkes_vmas[0];


  

  

  

  

  

  

  

  

  

  

  
    /* We consider the CapDL initialiser to have PID 1, so offset to skip over this. */
    const pid_t camkes_pid = (pid_t)10 + (pid_t)2;
    

const char *camkes_release = "ed7312deadb690cf31bfe56397497ddb0851ef1af0f12cf5ca1933b33413ad96";