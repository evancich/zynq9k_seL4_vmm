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










  
  
  






  
  
  
  






  



#define _camkes_BUFFER_BASE_676 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t uart_px4_error_handler_fn UNUSED;

camkes_error_handler_t uart_px4_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = uart_px4_error_handler_fn;
    uart_px4_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED uart_px4_error_handler(camkes_error_t *error) {
    if (uart_px4_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return uart_px4_error_handler_fn(error);
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







  
    
  
  
  static void _camkes__678(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__678(void) {
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

      /* trigger a compile-time warning: */ _camkes__678(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  
    
  


int uart_px4__run(void) {
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





  
    
  
  static int _camkes__679;
  uart_inf_write_return_array_typedef_check(_camkes__679);

    
  
  
    
  
    
  

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


    
    static int write_uart_num_from_1
    
    UNUSED;

    
    static int write_uart_num_from_2
    
    UNUSED;

    
    static int write_uart_num_from_3
    
    UNUSED;

    
    static int write_uart_num_from_4
    
    UNUSED;

    
    static int write_uart_num_from_5
    
    UNUSED;

    
    static int write_uart_num_from_6
    
    UNUSED;

    
    static int write_uart_num_from_7
    
    UNUSED;


static int *

get_write_uart_num_from(void) UNUSED;
static int *

get_write_uart_num_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & write_uart_num_from_1;
                
        
            case 2:
                
                    return & write_uart_num_from_2;
                
        
            case 3:
                
                    return & write_uart_num_from_3;
                
        
            case 4:
                
                    return & write_uart_num_from_4;
                
        
            case 5:
                
                    return & write_uart_num_from_5;
                
        
            case 6:
                
                    return & write_uart_num_from_6;
                
        
            case 7:
                
                    return & write_uart_num_from_7;
                
        
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


    
    static int write_wsize_from_1
    
    UNUSED;

    
    static int write_wsize_from_2
    
    UNUSED;

    
    static int write_wsize_from_3
    
    UNUSED;

    
    static int write_wsize_from_4
    
    UNUSED;

    
    static int write_wsize_from_5
    
    UNUSED;

    
    static int write_wsize_from_6
    
    UNUSED;

    
    static int write_wsize_from_7
    
    UNUSED;


static int *

get_write_wsize_from(void) UNUSED;
static int *

get_write_wsize_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & write_wsize_from_1;
                
        
            case 2:
                
                    return & write_wsize_from_2;
                
        
            case 3:
                
                    return & write_wsize_from_3;
                
        
            case 4:
                
                    return & write_wsize_from_4;
                
        
            case 5:
                
                    return & write_wsize_from_5;
                
        
            case 6:
                
                    return & write_wsize_from_6;
                
        
            case 7:
                
                    return & write_wsize_from_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned write_marshal_inputs_uart_num(unsigned _camkes_offset_680,
    
      
        int uart_num
      
    
    ) {

    
    void * _camkes_buffer_base_681 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_682 = TLS_PTR(write_uart_num_from, uart_num);
        * _camkes_ptr_682 = uart_num;
      
    

    
      ERR_IF(_camkes_offset_680 + sizeof(* _camkes_ptr_682) > (seL4_MsgMaxLength * sizeof(seL4_Word)), uart_px4_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "uart_px4",
          .description = "buffer exceeded while marshalling uart_num in write",
          .current_length = _camkes_offset_680,
          .target_length = _camkes_offset_680 + sizeof(* _camkes_ptr_682),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_681 + _camkes_offset_680, _camkes_ptr_682, sizeof(* _camkes_ptr_682));
      _camkes_offset_680 += sizeof(* _camkes_ptr_682);
    

    return _camkes_offset_680;
  }

  
  static unsigned write_marshal_inputs_wsize(unsigned _camkes_offset_686,
    
      
        int wsize
      
    
    ) {

    
    void * _camkes_buffer_base_687 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_688 = TLS_PTR(write_wsize_from, wsize);
        * _camkes_ptr_688 = wsize;
      
    

    
      ERR_IF(_camkes_offset_686 + sizeof(* _camkes_ptr_688) > (seL4_MsgMaxLength * sizeof(seL4_Word)), uart_px4_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "uart_px4",
          .description = "buffer exceeded while marshalling wsize in write",
          .current_length = _camkes_offset_686,
          .target_length = _camkes_offset_686 + sizeof(* _camkes_ptr_688),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_687 + _camkes_offset_686, _camkes_ptr_688, sizeof(* _camkes_ptr_688));
      _camkes_offset_686 += sizeof(* _camkes_ptr_688);
    

    return _camkes_offset_686;
  }




static unsigned write_marshal_inputs(

  
    
      int uart_num
    
  
  
    ,
  

  
    
      int wsize
    
  
  


) {

  
  unsigned _camkes_length_692 = 0;

  
  void * _camkes_buffer_base_693 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Marshal the parameters. */
  
    
    _camkes_length_692 = write_marshal_inputs_uart_num(_camkes_length_692,
      
      uart_num
    );
    if (unlikely(_camkes_length_692 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_692 = write_marshal_inputs_wsize(_camkes_length_692,
      
      wsize
    );
    if (unlikely(_camkes_length_692 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_692 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for write");

  return _camkes_length_692;
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


      
     
          
      
        
         
   

                                                      
 
 



  
  
  
  static unsigned write_unmarshal_outputs__camkes_ret_fn_694(unsigned _camkes_size_696, unsigned _camkes_offset_695,
    
      int *
    
    _camkes_return_697
  ) {

    
    void * _camkes_buffer_base_698 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Unmarshal the return value. */
    
      ERR_IF(_camkes_offset_695 + sizeof(* _camkes_return_697) > _camkes_size_696, uart_px4_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pilot_obj",
          .interface = "uart_px4",
          .description = "truncated message encountered while unmarshalling return value for write",
          .length = _camkes_size_696,
          .current_index = _camkes_offset_695 + sizeof(* _camkes_return_697),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_return_697, _camkes_buffer_base_698 + _camkes_offset_695, sizeof(* _camkes_return_697));
      _camkes_offset_695 += sizeof(* _camkes_return_697);
    

    return _camkes_offset_695;
  }



static int
write_unmarshal_outputs(

unsigned _camkes_size_699

  ,



  
    int *
  
  _camkes_return_700
  


) {

  
  unsigned _camkes_length_701 UNUSED = 0;

  
  void * _camkes_buffer_base_702 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    _camkes_length_701 = write_unmarshal_outputs__camkes_ret_fn_694(_camkes_size_699, _camkes_length_701,
      _camkes_return_700
    );
    if (unlikely(_camkes_length_701 == UINT_MAX)) {
      return -1;
    }
  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_701, sizeof(seL4_Word)) != _camkes_size_699, uart_px4_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pilot_obj",
        .interface = "uart_px4",
        .description = "excess trailing bytes after unmarshalling parameters for write",
        .length = _camkes_size_699,
        .current_index = _camkes_length_701,
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


    
    static int _camkes_ret_tls_var_from_703_1
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_2
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_3
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_4
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_5
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_6
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_703_7
    
    UNUSED;


static int *

get__camkes_ret_tls_var_from_703(void) UNUSED;
static int *

get__camkes_ret_tls_var_from_703(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_ret_tls_var_from_703_1;
                
        
            case 2:
                
                    return & _camkes_ret_tls_var_from_703_2;
                
        
            case 3:
                
                    return & _camkes_ret_tls_var_from_703_3;
                
        
            case 4:
                
                    return & _camkes_ret_tls_var_from_703_4;
                
        
            case 5:
                
                    return & _camkes_ret_tls_var_from_703_5;
                
        
            case 6:
                
                    return & _camkes_ret_tls_var_from_703_6;
                
        
            case 7:
                
                    return & _camkes_ret_tls_var_from_703_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    int

uart_px4_write(

  
    
      int
    
    uart_num
  
  
    ,
  

  
    
      int
    
    wsize
  
  


) {

    

    
    

    
    
    
      
        int _camkes_return_704 UNUSED;
        int * _camkes_return_ptr_705 = TLS_PTR(_camkes_ret_tls_var_from_703, _camkes_return_704);
      
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_706 = /*
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


     
   

write_marshal_inputs(

  
  uart_num
  
    ,
  

  
  wsize
  

);
    if (unlikely(_camkes_length_706 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            
                memset(_camkes_return_ptr_705, 0, sizeof(* _camkes_return_ptr_705));
                return * _camkes_return_ptr_705;
            
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_707 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_706, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_707 = seL4_Call(11, _camkes_info_707);

    
    unsigned _camkes_size_708 =
    
        seL4_MessageInfo_get_length(_camkes_info_707) * sizeof(seL4_Word);
        assert(_camkes_size_708 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_709 = /*
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


      
          
   

                                               
                                

write_unmarshal_outputs(
_camkes_size_708

  ,


  _camkes_return_ptr_705
  


);
    if (unlikely(_camkes_error_709 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            
                memset(_camkes_return_ptr_705, 0, sizeof(* _camkes_return_ptr_705));
                return * _camkes_return_ptr_705;
            
        
    }

    

    
        return * _camkes_return_ptr_705;
    
}
