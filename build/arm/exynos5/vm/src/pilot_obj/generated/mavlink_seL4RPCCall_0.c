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





#define _camkes_BUFFER_BASE_805 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t mavlink_error_handler_fn UNUSED;

camkes_error_handler_t mavlink_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = mavlink_error_handler_fn;
    mavlink_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED mavlink_error_handler(camkes_error_t *error) {
    if (mavlink_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return mavlink_error_handler_fn(error);
}


    extern
    
        void
    
    mavlink_recv(
      
        
          
            int
          
          uart_num
        
        
          ,
        
      
        
          
            int
          
          c
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned recv_unmarshal_inputs_uart_num(unsigned _camkes_size_806, unsigned _camkes_offset_807,
    
      int * uart_num
    
  ) {

    
    void * _camkes_buffer_base_808 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_807 + sizeof(* uart_num) > _camkes_size_806, mavlink_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pilot_obj",
          .interface = "mavlink",
          .description = "truncated message encountered while unmarshalling uart_num in recv",
          .length = _camkes_size_806,
          .current_index = _camkes_offset_807 + sizeof(* uart_num),
        }), ({
          return UINT_MAX;
        }));
      memcpy(uart_num, _camkes_buffer_base_808 + _camkes_offset_807, sizeof(* uart_num));
      _camkes_offset_807 += sizeof(* uart_num);
    

    return _camkes_offset_807;
  }

  
  
  static unsigned recv_unmarshal_inputs_c(unsigned _camkes_size_809, unsigned _camkes_offset_810,
    
      int * c
    
  ) {

    
    void * _camkes_buffer_base_811 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_810 + sizeof(* c) > _camkes_size_809, mavlink_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pilot_obj",
          .interface = "mavlink",
          .description = "truncated message encountered while unmarshalling c in recv",
          .length = _camkes_size_809,
          .current_index = _camkes_offset_810 + sizeof(* c),
        }), ({
          return UINT_MAX;
        }));
      memcpy(c, _camkes_buffer_base_811 + _camkes_offset_810, sizeof(* c));
      _camkes_offset_810 += sizeof(* c);
    

    return _camkes_offset_810;
  }


static int recv_unmarshal_inputs(

unsigned _camkes_size_812

  ,


  
    int * uart_num
  
  
    ,
  

  
    int * c
  
  

) {

  
  unsigned _camkes_length_813 UNUSED = 0;

  
  void * _camkes_buffer_base_814 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_813 = recv_unmarshal_inputs_uart_num(_camkes_size_812, _camkes_length_813,
      
      uart_num
    );
    if (unlikely(_camkes_length_813 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_813 = recv_unmarshal_inputs_c(_camkes_size_812, _camkes_length_813,
      
      c
    );
    if (unlikely(_camkes_length_813 == UINT_MAX)) {
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_813, sizeof(seL4_Word)) != _camkes_size_812, mavlink_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pilot_obj",
        .interface = "mavlink",
        .description = "excess trailing bytes after unmarshalling parameters for recv",
        .length = _camkes_size_812,
        .current_index = _camkes_length_813,
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


      
     
          
      
        
          
   

                                               
 





static unsigned recv_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_817 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_817 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for recv");

  return _camkes_length_817;
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


    
    static int recv_uart_num_to_1
    
    UNUSED;

    
    static int recv_uart_num_to_2
    
    UNUSED;

    
    static int recv_uart_num_to_3
    
    UNUSED;

    
    static int recv_uart_num_to_4
    
    UNUSED;

    
    static int recv_uart_num_to_5
    
    UNUSED;

    
    static int recv_uart_num_to_6
    
    UNUSED;

    
    static int recv_uart_num_to_7
    
    UNUSED;


static int *

get_recv_uart_num_to(void) UNUSED;
static int *

get_recv_uart_num_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & recv_uart_num_to_1;
                
        
            case 2:
                
                    return & recv_uart_num_to_2;
                
        
            case 3:
                
                    return & recv_uart_num_to_3;
                
        
            case 4:
                
                    return & recv_uart_num_to_4;
                
        
            case 5:
                
                    return & recv_uart_num_to_5;
                
        
            case 6:
                
                    return & recv_uart_num_to_6;
                
        
            case 7:
                
                    return & recv_uart_num_to_7;
                
        
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


    
    static int recv_c_to_1
    
    UNUSED;

    
    static int recv_c_to_2
    
    UNUSED;

    
    static int recv_c_to_3
    
    UNUSED;

    
    static int recv_c_to_4
    
    UNUSED;

    
    static int recv_c_to_5
    
    UNUSED;

    
    static int recv_c_to_6
    
    UNUSED;

    
    static int recv_c_to_7
    
    UNUSED;


static int *

get_recv_c_to(void) UNUSED;
static int *

get_recv_c_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & recv_c_to_1;
                
        
            case 2:
                
                    return & recv_c_to_2;
                
        
            case 3:
                
                    return & recv_c_to_3;
                
        
            case 4:
                
                    return & recv_c_to_4;
                
        
            case 5:
                
                    return & recv_c_to_5;
                
        
            case 6:
                
                    return & recv_c_to_6;
                
        
            case 7:
                
                    return & recv_c_to_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  







static seL4_Word mavlink_badge = 0;

seL4_Word mavlink_get_sender_id(void) {
    return mavlink_badge;
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


    
    static unsigned int _camkes_call_tls_var_to_818_1
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_2
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_3
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_4
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_5
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_6
    
    UNUSED;

    
    static unsigned int _camkes_call_tls_var_to_818_7
    
    UNUSED;


static unsigned int *

get__camkes_call_tls_var_to_818(void) UNUSED;
static unsigned int *

get__camkes_call_tls_var_to_818(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_818_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_818_2;
                
        
            case 3:
                
                    return & _camkes_call_tls_var_to_818_3;
                
        
            case 4:
                
                    return & _camkes_call_tls_var_to_818_4;
                
        
            case 5:
                
                    return & _camkes_call_tls_var_to_818_5;
                
        
            case 6:
                
                    return & _camkes_call_tls_var_to_818_6;
                
        
            case 7:
                
                    return & _camkes_call_tls_var_to_818_7;
                
        
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







  
  
    
      
  
  
  static void _camkes__819(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__819(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void pilot_inf_recv_uart_num_array_typedef_check(int x UNUSED)
    UNUSED;
  static void pilot_inf_recv_uart_num_array_typedef_check(int x UNUSED) {
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

      /* trigger a compile-time warning: */ _camkes__819(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  






int

    mavlink__run(void)

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





  
  
    
      
  
  static int _camkes__820;
  pilot_inf_recv_uart_num_array_typedef_check(_camkes__820);

      
    
  
    
  


    
        
            /* We're going to need a CNode cap in order to save our pending reply
             * caps in the future.
             */
            
            
            camkes_get_tls()->cnode_cap = 15;
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
    

    while (1) {

        
        void * _camkes_buffer_822 UNUSED = (void*)_camkes_BUFFER_BASE_805;

        
        unsigned _camkes_size_823 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_821) * sizeof(seL4_Word);
            assert(_camkes_size_823 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          unsigned _camkes_call_824 UNUSED;
          unsigned * _camkes_call_ptr_825 = TLS_PTR(_camkes_call_tls_var_to_818, _camkes_call_824);
          * _camkes_call_ptr_825 = 0;
        
        

        switch (* _camkes_call_ptr_825) {
            
                case 0: { /* recv */
                    
                    

                        
                            int uart_num UNUSED;
                            int * uart_num_ptr = TLS_PTR(recv_uart_num_to, uart_num);
                        
                    

                        
                            int c UNUSED;
                            int * c_ptr = TLS_PTR(recv_c_to, c);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_826 = /*
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


     
         
   

recv_unmarshal_inputs(
_camkes_size_823

  ,


  
  uart_num_ptr
  
    ,
  

  
  c_ptr
  

);
                    if (unlikely(_camkes_error_826 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__827 UNUSED = camkes_declare_reply_cap(16);
                        ERR_IF(_camkes__827 != 0, mavlink_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "pilot_obj",
                                .interface = "mavlink",
                                .description = "failed to declare reply cap in recv",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    mavlink_recv(
                        
                            
                            
                                *
                            
                            uart_num_ptr
                            ,
                        
                            
                            
                                *
                            
                            c_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__832 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_833 = /*
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


      
   

                                               
                                

recv_marshal_outputs(


);

                    
                    
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_833 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                        continue;
                    }

                    _camkes_info_821 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_833, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__832 != NULL);
                        if (_camkes__832->reply_cap_in_tcb) {
                            _camkes__832->reply_cap_in_tcb = false;
                            _camkes_info_821 = seL4_ReplyRecv(14, _camkes_info_821, &mavlink_badge);
                        } else {
                            
                            seL4_Error _camkes__834 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__834 != seL4_NoError, mavlink_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "pilot_obj",
                                    .interface = "mavlink",
                                    .description = "failed to save reply cap in recv",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__834,
                                }), ({
                                    _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                                    continue;
                                }));

                            seL4_Send(16, _camkes_info_821);
                            _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                        }
                    

                    break;
                }
            
            default: {
                ERR(mavlink_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "pilot_obj",
                        .interface = "mavlink",
                        .description = "invalid method index received in mavlink",
                        .lower_bound = 0,
                        .upper_bound = 1 - 1,
                        .invalid_index = * _camkes_call_ptr_825,
                    }), ({
                        _camkes_info_821 = seL4_Recv(14, &mavlink_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}