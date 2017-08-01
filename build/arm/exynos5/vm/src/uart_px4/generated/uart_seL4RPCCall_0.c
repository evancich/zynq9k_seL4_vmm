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

#include <camkes/dataport.h>







  
    
  





  
  
  


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









#include <autoconf.h>
#include <assert.h>
#include <limits.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <camkes/error.h>
#include <camkes/tls.h>
#include <sel4/sel4.h>
#include <camkes/dataport.h>
#include <utils/util.h>





#define _camkes_BUFFER_BASE_710 ((void*)&seL4_GetIPCBuffer()->msg[0])






/* Interface-specific error handling */

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
static camkes_error_handler_t uart_error_handler_fn UNUSED;

camkes_error_handler_t uart_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = uart_error_handler_fn;
    uart_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED uart_error_handler(camkes_error_t *error) {
    if (uart_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return uart_error_handler_fn(error);
}


    extern
    
        
            int
        
    
    uart_write(
      
        
          
            int
          
          uart_num
        
        
          ,
        
      
        
          
            int
          
          wsize
        
        
      
      
    );







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


      
     
          
      
        
          
    


  
  
  static unsigned write_unmarshal_inputs_uart_num(unsigned _camkes_size_711, unsigned _camkes_offset_712,
    
      int * uart_num
    
  ) {

    
    void * _camkes_buffer_base_713 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_712 + sizeof(* uart_num) > _camkes_size_711, uart_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "uart_px4",
          .interface = "uart",
          .description = "truncated message encountered while unmarshalling uart_num in write",
          .length = _camkes_size_711,
          .current_index = _camkes_offset_712 + sizeof(* uart_num),
        }), ({
          return UINT_MAX;
        }));
      memcpy(uart_num, _camkes_buffer_base_713 + _camkes_offset_712, sizeof(* uart_num));
      _camkes_offset_712 += sizeof(* uart_num);
    

    return _camkes_offset_712;
  }

  
  
  static unsigned write_unmarshal_inputs_wsize(unsigned _camkes_size_714, unsigned _camkes_offset_715,
    
      int * wsize
    
  ) {

    
    void * _camkes_buffer_base_716 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_715 + sizeof(* wsize) > _camkes_size_714, uart_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "uart_px4",
          .interface = "uart",
          .description = "truncated message encountered while unmarshalling wsize in write",
          .length = _camkes_size_714,
          .current_index = _camkes_offset_715 + sizeof(* wsize),
        }), ({
          return UINT_MAX;
        }));
      memcpy(wsize, _camkes_buffer_base_716 + _camkes_offset_715, sizeof(* wsize));
      _camkes_offset_715 += sizeof(* wsize);
    

    return _camkes_offset_715;
  }


static int write_unmarshal_inputs(

unsigned _camkes_size_717

  ,


  
    int * uart_num
  
  
    ,
  

  
    int * wsize
  
  

) {

  
  unsigned _camkes_length_718 UNUSED = 0;

  
  void * _camkes_buffer_base_719 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_718 = write_unmarshal_inputs_uart_num(_camkes_size_717, _camkes_length_718,
      
      uart_num
    );
    if (unlikely(_camkes_length_718 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_718 = write_unmarshal_inputs_wsize(_camkes_size_717, _camkes_length_718,
      
      wsize
    );
    if (unlikely(_camkes_length_718 == UINT_MAX)) {
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_718, sizeof(seL4_Word)) != _camkes_size_717, uart_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "uart_px4",
        .interface = "uart",
        .description = "excess trailing bytes after unmarshalling parameters for write",
        .length = _camkes_size_717,
        .current_index = _camkes_length_718,
      }), ({
        
          
        
          
        
        return -1;
      }));
  

  return 0;
}




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


      
     
          
      
        
          
   

                                               
 



  
  
  static unsigned write_marshal_outputs__camkes_ret_fn_720(unsigned _camkes_offset_721,
    
      const int * _camkes_return_722
    
  ) {

    
    void * _camkes_buffer_base_723 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Marshal the return value. */
    
      ERR_IF(_camkes_offset_721 + sizeof(* _camkes_return_722) > (seL4_MsgMaxLength * sizeof(seL4_Word)), uart_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "uart_px4",
          .interface = "uart",
          .description = "buffer exceeded while marshalling return value for write",
          .current_length = _camkes_offset_721,
          .target_length = _camkes_offset_721 + sizeof(* _camkes_return_722),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_723 + _camkes_offset_721, _camkes_return_722, sizeof(* _camkes_return_722));
      _camkes_offset_721 += sizeof(* _camkes_return_722);
    

    return _camkes_offset_721;
  }



static unsigned write_marshal_outputs(


  
    const int * _camkes_return_724
  
  



) {

  
  unsigned _camkes_length_725 = 0;

  
    _camkes_length_725 = write_marshal_outputs__camkes_ret_fn_720(_camkes_length_725,
      _camkes_return_724
    );
    if (unlikely(_camkes_length_725 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  /* Marshal output parameters. */
  

  assert(_camkes_length_725 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for write");

  return _camkes_length_725;
}


  
    
    
    
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



/* The TLS_PTR macro is for acquiring a pointer to a local variable. The first
 * argument is the corresponding TLS global and the second is the local
 * variable you are taking the address of. The purpose of this abstraction is
 * to allow for varying TLS models.
 */

#ifdef CONFIG_CAMKES_TLS_STANDARD

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (&(name))
  #endif

#elif defined(CONFIG_CAMKES_TLS_PTG)

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (get_##tls_var())
  #endif

#else

  #error undefined TLS model

#endif


    
    static int write_ret_to_1
    
    UNUSED;

    
    static int write_ret_to_2
    
    UNUSED;

    
    static int write_ret_to_3
    
    UNUSED;

    
    static int write_ret_to_4
    
    UNUSED;


static int *

get_write_ret_to(void) UNUSED;
static int *

get_write_ret_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & write_ret_to_1;
                
        
            case 2:
                
                    return & write_ret_to_2;
                
        
            case 3:
                
                    return & write_ret_to_3;
                
        
            case 4:
                
                    return & write_ret_to_4;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  


  
    
    
    
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



/* The TLS_PTR macro is for acquiring a pointer to a local variable. The first
 * argument is the corresponding TLS global and the second is the local
 * variable you are taking the address of. The purpose of this abstraction is
 * to allow for varying TLS models.
 */

#ifdef CONFIG_CAMKES_TLS_STANDARD

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (&(name))
  #endif

#elif defined(CONFIG_CAMKES_TLS_PTG)

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (get_##tls_var())
  #endif

#else

  #error undefined TLS model

#endif


    
    static int write_uart_num_to_1
    
    UNUSED;

    
    static int write_uart_num_to_2
    
    UNUSED;

    
    static int write_uart_num_to_3
    
    UNUSED;

    
    static int write_uart_num_to_4
    
    UNUSED;


static int *

get_write_uart_num_to(void) UNUSED;
static int *

get_write_uart_num_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & write_uart_num_to_1;
                
        
            case 2:
                
                    return & write_uart_num_to_2;
                
        
            case 3:
                
                    return & write_uart_num_to_3;
                
        
            case 4:
                
                    return & write_uart_num_to_4;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  

  
    
    
    
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



/* The TLS_PTR macro is for acquiring a pointer to a local variable. The first
 * argument is the corresponding TLS global and the second is the local
 * variable you are taking the address of. The purpose of this abstraction is
 * to allow for varying TLS models.
 */

#ifdef CONFIG_CAMKES_TLS_STANDARD

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (&(name))
  #endif

#elif defined(CONFIG_CAMKES_TLS_PTG)

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (get_##tls_var())
  #endif

#else

  #error undefined TLS model

#endif


    
    static int write_wsize_to_1
    
    UNUSED;

    
    static int write_wsize_to_2
    
    UNUSED;

    
    static int write_wsize_to_3
    
    UNUSED;

    
    static int write_wsize_to_4
    
    UNUSED;


static int *

get_write_wsize_to(void) UNUSED;
static int *

get_write_wsize_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & write_wsize_to_1;
                
        
            case 2:
                
                    return & write_wsize_to_2;
                
        
            case 3:
                
                    return & write_wsize_to_3;
                
        
            case 4:
                
                    return & write_wsize_to_4;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  







static seL4_Word uart_badge = 0;

seL4_Word uart_get_sender_id(void) {
    return uart_badge;
}





  
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



/* The TLS_PTR macro is for acquiring a pointer to a local variable. The first
 * argument is the corresponding TLS global and the second is the local
 * variable you are taking the address of. The purpose of this abstraction is
 * to allow for varying TLS models.
 */

#ifdef CONFIG_CAMKES_TLS_STANDARD

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (&(name))
  #endif

#elif defined(CONFIG_CAMKES_TLS_PTG)

  #ifndef TLS_PTR
    #define TLS_PTR(tls_var, name) (get_##tls_var())
  #endif

#else

  #error undefined TLS model

#endif


    
    static unsigned int _camkes_call_tls_var_to_726_1
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_726_2
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_726_3
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_726_4
    
    UNUSED;


static unsigned int *

get__camkes_call_tls_var_to_726(void) UNUSED;
static unsigned int *

get__camkes_call_tls_var_to_726(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_726_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_726_2;
                
        
            case 3:
                
                    return & _camkes_call_tls_var_to_726_3;
                
        
            case 4:
                
                    return & _camkes_call_tls_var_to_726_4;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}


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







  
    
  
  
  static void _camkes__727(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__727(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void uart_inf_write_return_array_typedef_check(int x UNUSED)
    UNUSED;
  static void uart_inf_write_return_array_typedef_check(int x UNUSED) {
    __builtin_choose_expr(

      
      sizeof(x) != sizeof(int) ||

      
      (sizeof(int) == sizeof(void*) &&
        (__builtin_types_compatible_p(char[sizeof(void*)], int) ||
         __builtin_types_compatible_p(signed char[sizeof(void*)], int) ||
         __builtin_types_compatible_p(unsigned char[sizeof(void*)], int) ||
         __builtin_types_compatible_p(short[sizeof(void*) / sizeof(short)], int) ||
         __builtin_types_compatible_p(unsigned short[sizeof(void*) / sizeof(unsigned short)], int) ||
         __builtin_types_compatible_p(int[sizeof(void*) / sizeof(int)], int) ||
         __builtin_types_compatible_p(unsigned[sizeof(void*) / sizeof(unsigned)], int) ||
         __builtin_types_compatible_p(long[sizeof(void*) / sizeof(long)], int) ||
         __builtin_types_compatible_p(unsigned long[sizeof(void*) / sizeof(unsigned long)], int) ||
         (sizeof(void*) / sizeof(long long) > 0 &&
           __builtin_types_compatible_p(long long[sizeof(void*) / sizeof(long long)], int)) ||
         (sizeof(void*) / sizeof(unsigned long long) > 0 &&
           __builtin_types_compatible_p(unsigned long long[sizeof(void*) / sizeof(unsigned long long)], int)) ||
         (sizeof(void*) / sizeof(double) > 0 &&
           __builtin_types_compatible_p(double[sizeof(void*) / sizeof(double)], int)) ||
         (sizeof(void*) / sizeof(long double) > 0 &&
           __builtin_types_compatible_p(long double[sizeof(void*) / sizeof(long double)], int)) ||
         (sizeof(void*) / sizeof(float) > 0 &&
           __builtin_types_compatible_p(float[sizeof(void*) / sizeof(float)], int)))),

      /* trigger a compile-time warning: */ _camkes__727(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  
    
  






int

    uart__run(void)

{

    
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





  
    
  
  static int _camkes__728;
  uart_inf_write_return_array_typedef_check(_camkes__728);

    
  
  
    
  
    
  


    
        
            /* We're going to need a CNode cap in order to save our pending reply
             * caps in the future.
             */
            
            
            camkes_get_tls()->cnode_cap = 17;
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_729 = seL4_Recv(16, &uart_badge);
    

    while (1) {

        
        void * _camkes_buffer_730 UNUSED = (void*)_camkes_BUFFER_BASE_710;

        
        unsigned _camkes_size_731 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_729) * sizeof(seL4_Word);
            assert(_camkes_size_731 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          unsigned _camkes_call_732 UNUSED;
          unsigned * _camkes_call_ptr_733 = TLS_PTR(_camkes_call_tls_var_to_726, _camkes_call_732);
          * _camkes_call_ptr_733 = 0;
        
        

        switch (* _camkes_call_ptr_733) {
            
                case 0: { /* write */
                    
                    

                        
                            int uart_num UNUSED;
                            int * uart_num_ptr = TLS_PTR(write_uart_num_to, uart_num);
                        
                    

                        
                            int wsize UNUSED;
                            int * wsize_ptr = TLS_PTR(write_wsize_to, wsize);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_734 = /*
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


     
         
   

write_unmarshal_inputs(
_camkes_size_731

  ,


  
  uart_num_ptr
  
    ,
  

  
  wsize_ptr
  

);
                    if (unlikely(_camkes_error_734 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_729 = seL4_Recv(16, &uart_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__735 UNUSED = camkes_declare_reply_cap(18);
                        ERR_IF(_camkes__735 != 0, uart_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "uart_px4",
                                .interface = "uart",
                                .description = "failed to declare reply cap in write",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_729 = seL4_Recv(16, &uart_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                        
                            int _camkes_ret_736 UNUSED;
                            int * _camkes_ret_ptr_738 = TLS_PTR(write_ret_to, _camkes_ret_736);
                        
                        * _camkes_ret_ptr_738 =
                    
                    uart_write(
                        
                            
                            
                                *
                            
                            uart_num_ptr
                            ,
                        
                            
                            
                                *
                            
                            wsize_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__740 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_741 = /*
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


      
   

                                               
                                

write_marshal_outputs(

  
  _camkes_ret_ptr_738
  


);

                    
                    
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_741 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_729 = seL4_Recv(16, &uart_badge);
                        continue;
                    }

                    _camkes_info_729 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_741, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__740 != NULL);
                        if (_camkes__740->reply_cap_in_tcb) {
                            _camkes__740->reply_cap_in_tcb = false;
                            _camkes_info_729 = seL4_ReplyRecv(16, _camkes_info_729, &uart_badge);
                        } else {
                            
                            seL4_Error _camkes__742 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__742 != seL4_NoError, uart_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "uart_px4",
                                    .interface = "uart",
                                    .description = "failed to save reply cap in write",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__742,
                                }), ({
                                    _camkes_info_729 = seL4_Recv(16, &uart_badge);
                                    continue;
                                }));

                            seL4_Send(18, _camkes_info_729);
                            _camkes_info_729 = seL4_Recv(16, &uart_badge);
                        }
                    

                    break;
                }
            
            default: {
                ERR(uart_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "uart_px4",
                        .interface = "uart",
                        .description = "invalid method index received in uart",
                        .lower_bound = 0,
                        .upper_bound = 1 - 1,
                        .invalid_index = * _camkes_call_ptr_733,
                    }), ({
                        _camkes_info_729 = seL4_Recv(16, &uart_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}