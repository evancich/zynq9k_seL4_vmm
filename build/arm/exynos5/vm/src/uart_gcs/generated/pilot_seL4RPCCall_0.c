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









#include <sel4/sel4.h>
#include <assert.h>
#include <limits.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <sync/sem-bare.h>
#include <camkes/dataport.h>
#include <camkes/error.h>
#include <camkes/tls.h>










  
  
  

  
  
  






  
  
  
  

  
  
  
  






  



#define _camkes_BUFFER_BASE_745 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t pilot_error_handler_fn UNUSED;

camkes_error_handler_t pilot_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = pilot_error_handler_fn;
    pilot_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED pilot_error_handler(camkes_error_t *error) {
    if (pilot_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return pilot_error_handler_fn(error);
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







  
  
    
      
  
  
  static void _camkes__747(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__747(void) {
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

      /* trigger a compile-time warning: */ _camkes__747(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  


int pilot__run(void) {
    /* This function is never actually executed, but we still emit it for the
     * purpose of type checking RPC parameters.
     */
    UNREACHABLE();

    
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





  
  
    
      
  
  static int _camkes__748;
  pilot_inf_recv_uart_num_array_typedef_check(_camkes__748);

      
    
  
    
  

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


    
    static int recv_uart_num_from_1
    
    UNUSED;

    
    static int recv_uart_num_from_2
    
    UNUSED;

    
    static int recv_uart_num_from_3
    
    UNUSED;

    
    static int recv_uart_num_from_4
    
    UNUSED;


static int *

get_recv_uart_num_from(void) UNUSED;
static int *

get_recv_uart_num_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & recv_uart_num_from_1;
                
        
            case 2:
                
                    return & recv_uart_num_from_2;
                
        
            case 3:
                
                    return & recv_uart_num_from_3;
                
        
            case 4:
                
                    return & recv_uart_num_from_4;
                
        
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


    
    static int recv_c_from_1
    
    UNUSED;

    
    static int recv_c_from_2
    
    UNUSED;

    
    static int recv_c_from_3
    
    UNUSED;

    
    static int recv_c_from_4
    
    UNUSED;


static int *

get_recv_c_from(void) UNUSED;
static int *

get_recv_c_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & recv_c_from_1;
                
        
            case 2:
                
                    return & recv_c_from_2;
                
        
            case 3:
                
                    return & recv_c_from_3;
                
        
            case 4:
                
                    return & recv_c_from_4;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned recv_marshal_inputs_uart_num(unsigned _camkes_offset_749,
    
      
        int uart_num
      
    
    ) {

    
    void * _camkes_buffer_base_750 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_751 = TLS_PTR(recv_uart_num_from, uart_num);
        * _camkes_ptr_751 = uart_num;
      
    

    
      ERR_IF(_camkes_offset_749 + sizeof(* _camkes_ptr_751) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pilot_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "uart_gcs",
          .interface = "pilot",
          .description = "buffer exceeded while marshalling uart_num in recv",
          .current_length = _camkes_offset_749,
          .target_length = _camkes_offset_749 + sizeof(* _camkes_ptr_751),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_750 + _camkes_offset_749, _camkes_ptr_751, sizeof(* _camkes_ptr_751));
      _camkes_offset_749 += sizeof(* _camkes_ptr_751);
    

    return _camkes_offset_749;
  }

  
  static unsigned recv_marshal_inputs_c(unsigned _camkes_offset_755,
    
      
        int c
      
    
    ) {

    
    void * _camkes_buffer_base_756 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_757 = TLS_PTR(recv_c_from, c);
        * _camkes_ptr_757 = c;
      
    

    
      ERR_IF(_camkes_offset_755 + sizeof(* _camkes_ptr_757) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pilot_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "uart_gcs",
          .interface = "pilot",
          .description = "buffer exceeded while marshalling c in recv",
          .current_length = _camkes_offset_755,
          .target_length = _camkes_offset_755 + sizeof(* _camkes_ptr_757),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_756 + _camkes_offset_755, _camkes_ptr_757, sizeof(* _camkes_ptr_757));
      _camkes_offset_755 += sizeof(* _camkes_ptr_757);
    

    return _camkes_offset_755;
  }




static unsigned recv_marshal_inputs(

  
    
      int uart_num
    
  
  
    ,
  

  
    
      int c
    
  
  


) {

  
  unsigned _camkes_length_761 = 0;

  
  void * _camkes_buffer_base_762 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Marshal the parameters. */
  
    
    _camkes_length_761 = recv_marshal_inputs_uart_num(_camkes_length_761,
      
      uart_num
    );
    if (unlikely(_camkes_length_761 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_761 = recv_marshal_inputs_c(_camkes_length_761,
      
      c
    );
    if (unlikely(_camkes_length_761 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_761 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for recv");

  return _camkes_length_761;
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


      
     
          
      
        
         
   

                                                      
 
 





static int
recv_unmarshal_outputs(

unsigned _camkes_size_764




) {

  
  unsigned _camkes_length_766 UNUSED = 0;

  
  void * _camkes_buffer_base_767 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_766, sizeof(seL4_Word)) != _camkes_size_764, pilot_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "uart_gcs",
        .interface = "pilot",
        .description = "excess trailing bytes after unmarshalling parameters for recv",
        .length = _camkes_size_764,
        .current_index = _camkes_length_766,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

pilot_recv(

  
    
      int
    
    uart_num
  
  
    ,
  

  
    
      int
    
    c
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_771 = /*
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


     
   

recv_marshal_inputs(

  
  uart_num
  
    ,
  

  
  c
  

);
    if (unlikely(_camkes_length_771 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_772 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_771, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_772 = seL4_Call(19, _camkes_info_772);

    
    unsigned _camkes_size_773 =
    
        seL4_MessageInfo_get_length(_camkes_info_772) * sizeof(seL4_Word);
        assert(_camkes_size_773 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_774 = /*
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


      
          
   

                                               
                                

recv_unmarshal_outputs(
_camkes_size_773



);
    if (unlikely(_camkes_error_774 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
    }

    

    
}
