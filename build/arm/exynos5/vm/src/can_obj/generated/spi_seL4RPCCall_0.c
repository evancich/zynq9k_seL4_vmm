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










  
  
  






  
  
  
  






  



#define _camkes_BUFFER_BASE_467 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t spi_error_handler_fn UNUSED;

camkes_error_handler_t spi_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = spi_error_handler_fn;
    spi_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED spi_error_handler(camkes_error_t *error) {
    if (spi_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return spi_error_handler_fn(error);
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







  
    
  
  
  static void _camkes__469(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__469(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void spi_inf_transfer_return_array_typedef_check(int x UNUSED)
    UNUSED;
  static void spi_inf_transfer_return_array_typedef_check(int x UNUSED) {
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

      /* trigger a compile-time warning: */ _camkes__469(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  
    
      
  
  
  static void _camkes__470(void) NO_INLINE UNUSED
    WARNING("typedef unsigned int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__470(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void spi_inf_transfer_wcount_array_typedef_check(unsigned int x UNUSED)
    UNUSED;
  static void spi_inf_transfer_wcount_array_typedef_check(unsigned int x UNUSED) {
    __builtin_choose_expr(

      
      sizeof(x) != sizeof(unsigned int) ||

      
      (sizeof(unsigned int) == sizeof(void*) &&
        (__builtin_types_compatible_p(char[sizeof(void*)], unsigned int) ||
         __builtin_types_compatible_p(signed char[sizeof(void*)], unsigned int) ||
         __builtin_types_compatible_p(unsigned char[sizeof(void*)], unsigned int) ||
         __builtin_types_compatible_p(short[sizeof(void*) / sizeof(short)], unsigned int) ||
         __builtin_types_compatible_p(unsigned short[sizeof(void*) / sizeof(unsigned short)], unsigned int) ||
         __builtin_types_compatible_p(int[sizeof(void*) / sizeof(int)], unsigned int) ||
         __builtin_types_compatible_p(unsigned[sizeof(void*) / sizeof(unsigned)], unsigned int) ||
         __builtin_types_compatible_p(long[sizeof(void*) / sizeof(long)], unsigned int) ||
         __builtin_types_compatible_p(unsigned long[sizeof(void*) / sizeof(unsigned long)], unsigned int) ||
         (sizeof(void*) / sizeof(long long) > 0 &&
           __builtin_types_compatible_p(long long[sizeof(void*) / sizeof(long long)], unsigned int)) ||
         (sizeof(void*) / sizeof(unsigned long long) > 0 &&
           __builtin_types_compatible_p(unsigned long long[sizeof(void*) / sizeof(unsigned long long)], unsigned int)) ||
         (sizeof(void*) / sizeof(double) > 0 &&
           __builtin_types_compatible_p(double[sizeof(void*) / sizeof(double)], unsigned int)) ||
         (sizeof(void*) / sizeof(long double) > 0 &&
           __builtin_types_compatible_p(long double[sizeof(void*) / sizeof(long double)], unsigned int)) ||
         (sizeof(void*) / sizeof(float) > 0 &&
           __builtin_types_compatible_p(float[sizeof(void*) / sizeof(float)], unsigned int)))),

      /* trigger a compile-time warning: */ _camkes__470(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  

  
  
    
  
    
      
  
  
  static void _camkes__471(void) NO_INLINE UNUSED
    WARNING("typedef char looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__471(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void spi_inf_transfer_byte_byte_array_typedef_check(char x UNUSED)
    UNUSED;
  static void spi_inf_transfer_byte_byte_array_typedef_check(char x UNUSED) {
    __builtin_choose_expr(

      
      sizeof(x) != sizeof(char) ||

      
      (sizeof(char) == sizeof(void*) &&
        (__builtin_types_compatible_p(char[sizeof(void*)], char) ||
         __builtin_types_compatible_p(signed char[sizeof(void*)], char) ||
         __builtin_types_compatible_p(unsigned char[sizeof(void*)], char) ||
         __builtin_types_compatible_p(short[sizeof(void*) / sizeof(short)], char) ||
         __builtin_types_compatible_p(unsigned short[sizeof(void*) / sizeof(unsigned short)], char) ||
         __builtin_types_compatible_p(int[sizeof(void*) / sizeof(int)], char) ||
         __builtin_types_compatible_p(unsigned[sizeof(void*) / sizeof(unsigned)], char) ||
         __builtin_types_compatible_p(long[sizeof(void*) / sizeof(long)], char) ||
         __builtin_types_compatible_p(unsigned long[sizeof(void*) / sizeof(unsigned long)], char) ||
         (sizeof(void*) / sizeof(long long) > 0 &&
           __builtin_types_compatible_p(long long[sizeof(void*) / sizeof(long long)], char)) ||
         (sizeof(void*) / sizeof(unsigned long long) > 0 &&
           __builtin_types_compatible_p(unsigned long long[sizeof(void*) / sizeof(unsigned long long)], char)) ||
         (sizeof(void*) / sizeof(double) > 0 &&
           __builtin_types_compatible_p(double[sizeof(void*) / sizeof(double)], char)) ||
         (sizeof(void*) / sizeof(long double) > 0 &&
           __builtin_types_compatible_p(long double[sizeof(void*) / sizeof(long double)], char)) ||
         (sizeof(void*) / sizeof(float) > 0 &&
           __builtin_types_compatible_p(float[sizeof(void*) / sizeof(float)], char)))),

      /* trigger a compile-time warning: */ _camkes__471(),
      /* do nothing: */ (void)0);
  }

      
    
  


int spi__run(void) {
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





  
    
  
  static int _camkes__472;
  spi_inf_transfer_return_array_typedef_check(_camkes__472);

    
  
  
    
  
    
      
  
  static unsigned int _camkes__473;
  spi_inf_transfer_wcount_array_typedef_check(_camkes__473);

      
    
  
    
  

  
  
    
  
    
      
  
  static char _camkes__474;
  spi_inf_transfer_byte_byte_array_typedef_check(_camkes__474);

      
    
  

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


    
    static int transfer_id_from_1
    
    UNUSED;

    
    static int transfer_id_from_2
    
    UNUSED;

    
    static int transfer_id_from_3
    
    UNUSED;

    
    static int transfer_id_from_4
    
    UNUSED;

    
    static int transfer_id_from_5
    
    UNUSED;


static int *

get_transfer_id_from(void) UNUSED;
static int *

get_transfer_id_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_id_from_1;
                
        
            case 2:
                
                    return & transfer_id_from_2;
                
        
            case 3:
                
                    return & transfer_id_from_3;
                
        
            case 4:
                
                    return & transfer_id_from_4;
                
        
            case 5:
                
                    return & transfer_id_from_5;
                
        
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


    
    static unsigned int transfer_wcount_from_1
    
    UNUSED;

    
    static unsigned int transfer_wcount_from_2
    
    UNUSED;

    
    static unsigned int transfer_wcount_from_3
    
    UNUSED;

    
    static unsigned int transfer_wcount_from_4
    
    UNUSED;

    
    static unsigned int transfer_wcount_from_5
    
    UNUSED;


static unsigned int *

get_transfer_wcount_from(void) UNUSED;
static unsigned int *

get_transfer_wcount_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_wcount_from_1;
                
        
            case 2:
                
                    return & transfer_wcount_from_2;
                
        
            case 3:
                
                    return & transfer_wcount_from_3;
                
        
            case 4:
                
                    return & transfer_wcount_from_4;
                
        
            case 5:
                
                    return & transfer_wcount_from_5;
                
        
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


    
    static unsigned int transfer_rcount_from_1
    
    UNUSED;

    
    static unsigned int transfer_rcount_from_2
    
    UNUSED;

    
    static unsigned int transfer_rcount_from_3
    
    UNUSED;

    
    static unsigned int transfer_rcount_from_4
    
    UNUSED;

    
    static unsigned int transfer_rcount_from_5
    
    UNUSED;


static unsigned int *

get_transfer_rcount_from(void) UNUSED;
static unsigned int *

get_transfer_rcount_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_rcount_from_1;
                
        
            case 2:
                
                    return & transfer_rcount_from_2;
                
        
            case 3:
                
                    return & transfer_rcount_from_3;
                
        
            case 4:
                
                    return & transfer_rcount_from_4;
                
        
            case 5:
                
                    return & transfer_rcount_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned transfer_marshal_inputs_id(unsigned _camkes_offset_475,
    
      
        int id
      
    
    ) {

    
    void * _camkes_buffer_base_476 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_477 = TLS_PTR(transfer_id_from, id);
        * _camkes_ptr_477 = id;
      
    

    
      ERR_IF(_camkes_offset_475 + sizeof(* _camkes_ptr_477) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "can_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling id in transfer",
          .current_length = _camkes_offset_475,
          .target_length = _camkes_offset_475 + sizeof(* _camkes_ptr_477),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_476 + _camkes_offset_475, _camkes_ptr_477, sizeof(* _camkes_ptr_477));
      _camkes_offset_475 += sizeof(* _camkes_ptr_477);
    

    return _camkes_offset_475;
  }

  
  static unsigned transfer_marshal_inputs_wcount(unsigned _camkes_offset_481,
    
      
        unsigned int wcount
      
    
    ) {

    
    void * _camkes_buffer_base_482 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        unsigned int * _camkes_ptr_483 = TLS_PTR(transfer_wcount_from, wcount);
        * _camkes_ptr_483 = wcount;
      
    

    
      ERR_IF(_camkes_offset_481 + sizeof(* _camkes_ptr_483) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "can_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling wcount in transfer",
          .current_length = _camkes_offset_481,
          .target_length = _camkes_offset_481 + sizeof(* _camkes_ptr_483),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_482 + _camkes_offset_481, _camkes_ptr_483, sizeof(* _camkes_ptr_483));
      _camkes_offset_481 += sizeof(* _camkes_ptr_483);
    

    return _camkes_offset_481;
  }

  
  static unsigned transfer_marshal_inputs_rcount(unsigned _camkes_offset_487,
    
      
        unsigned int rcount
      
    
    ) {

    
    void * _camkes_buffer_base_488 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        unsigned int * _camkes_ptr_489 = TLS_PTR(transfer_rcount_from, rcount);
        * _camkes_ptr_489 = rcount;
      
    

    
      ERR_IF(_camkes_offset_487 + sizeof(* _camkes_ptr_489) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "can_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling rcount in transfer",
          .current_length = _camkes_offset_487,
          .target_length = _camkes_offset_487 + sizeof(* _camkes_ptr_489),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_488 + _camkes_offset_487, _camkes_ptr_489, sizeof(* _camkes_ptr_489));
      _camkes_offset_487 += sizeof(* _camkes_ptr_489);
    

    return _camkes_offset_487;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_493 = 0;


static unsigned transfer_marshal_inputs(

  
    
      int id
    
  
  
    ,
  

  
    
      unsigned int wcount
    
  
  
    ,
  

  
    
      unsigned int rcount
    
  
  


) {

  
  unsigned _camkes_length_494 = 0;

  
  void * _camkes_buffer_base_495 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_494 + sizeof(_camkes_method_index_493) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "can_obj",
        .interface = "spi",
        .description = "buffer exceeded while marshalling method index for transfer",
        .current_length = _camkes_length_494,
        .target_length = _camkes_length_494 + sizeof(_camkes_method_index_493),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_495, & _camkes_method_index_493, sizeof(_camkes_method_index_493));
    _camkes_length_494 += sizeof(_camkes_method_index_493);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_494 = transfer_marshal_inputs_id(_camkes_length_494,
      
      id
    );
    if (unlikely(_camkes_length_494 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_494 = transfer_marshal_inputs_wcount(_camkes_length_494,
      
      wcount
    );
    if (unlikely(_camkes_length_494 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_494 = transfer_marshal_inputs_rcount(_camkes_length_494,
      
      rcount
    );
    if (unlikely(_camkes_length_494 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_494 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for transfer");

  return _camkes_length_494;
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


      
     
          
      
        
         
   

                                                      
 
 



  
  
  
  static unsigned transfer_unmarshal_outputs__camkes_ret_fn_496(unsigned _camkes_size_498, unsigned _camkes_offset_497,
    
      int *
    
    _camkes_return_499
  ) {

    
    void * _camkes_buffer_base_500 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Unmarshal the return value. */
    
      ERR_IF(_camkes_offset_497 + sizeof(* _camkes_return_499) > _camkes_size_498, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "can_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling return value for transfer",
          .length = _camkes_size_498,
          .current_index = _camkes_offset_497 + sizeof(* _camkes_return_499),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_return_499, _camkes_buffer_base_500 + _camkes_offset_497, sizeof(* _camkes_return_499));
      _camkes_offset_497 += sizeof(* _camkes_return_499);
    

    return _camkes_offset_497;
  }



static int
transfer_unmarshal_outputs(

unsigned _camkes_size_501

  ,



  
    int *
  
  _camkes_return_502
  


) {

  
  unsigned _camkes_length_503 UNUSED = 0;

  
  void * _camkes_buffer_base_504 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    _camkes_length_503 = transfer_unmarshal_outputs__camkes_ret_fn_496(_camkes_size_501, _camkes_length_503,
      _camkes_return_502
    );
    if (unlikely(_camkes_length_503 == UINT_MAX)) {
      return -1;
    }
  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_503, sizeof(seL4_Word)) != _camkes_size_501, spi_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "can_obj",
        .interface = "spi",
        .description = "excess trailing bytes after unmarshalling parameters for transfer",
        .length = _camkes_size_501,
        .current_index = _camkes_length_503,
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


    
    static int _camkes_ret_tls_var_from_505_1
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_505_2
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_505_3
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_505_4
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_505_5
    
    UNUSED;


static int *

get__camkes_ret_tls_var_from_505(void) UNUSED;
static int *

get__camkes_ret_tls_var_from_505(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_ret_tls_var_from_505_1;
                
        
            case 2:
                
                    return & _camkes_ret_tls_var_from_505_2;
                
        
            case 3:
                
                    return & _camkes_ret_tls_var_from_505_3;
                
        
            case 4:
                
                    return & _camkes_ret_tls_var_from_505_4;
                
        
            case 5:
                
                    return & _camkes_ret_tls_var_from_505_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    int

spi_transfer(

  
    
      int
    
    id
  
  
    ,
  

  
    
      unsigned int
    
    wcount
  
  
    ,
  

  
    
      unsigned int
    
    rcount
  
  


) {

    

    
    

    
    
    
      
        int _camkes_return_506 UNUSED;
        int * _camkes_return_ptr_507 = TLS_PTR(_camkes_ret_tls_var_from_505, _camkes_return_506);
      
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_508 = /*
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


     
   

transfer_marshal_inputs(

  
  id
  
    ,
  

  
  wcount
  
    ,
  

  
  rcount
  

);
    if (unlikely(_camkes_length_508 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            
                memset(_camkes_return_ptr_507, 0, sizeof(* _camkes_return_ptr_507));
                return * _camkes_return_ptr_507;
            
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_509 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_508, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_509 = seL4_Call(11, _camkes_info_509);

    
    unsigned _camkes_size_510 =
    
        seL4_MessageInfo_get_length(_camkes_info_509) * sizeof(seL4_Word);
        assert(_camkes_size_510 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_511 = /*
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


      
          
   

                                               
                                

transfer_unmarshal_outputs(
_camkes_size_510

  ,


  _camkes_return_ptr_507
  


);
    if (unlikely(_camkes_error_511 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            
                memset(_camkes_return_ptr_507, 0, sizeof(* _camkes_return_ptr_507));
                return * _camkes_return_ptr_507;
            
        
    }

    

    
        return * _camkes_return_ptr_507;
    
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


    
    static int transfer_byte_id_from_1
    
    UNUSED;

    
    static int transfer_byte_id_from_2
    
    UNUSED;

    
    static int transfer_byte_id_from_3
    
    UNUSED;

    
    static int transfer_byte_id_from_4
    
    UNUSED;

    
    static int transfer_byte_id_from_5
    
    UNUSED;


static int *

get_transfer_byte_id_from(void) UNUSED;
static int *

get_transfer_byte_id_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_byte_id_from_1;
                
        
            case 2:
                
                    return & transfer_byte_id_from_2;
                
        
            case 3:
                
                    return & transfer_byte_id_from_3;
                
        
            case 4:
                
                    return & transfer_byte_id_from_4;
                
        
            case 5:
                
                    return & transfer_byte_id_from_5;
                
        
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


    
    static char transfer_byte_byte_from_1
    
    UNUSED;

    
    static char transfer_byte_byte_from_2
    
    UNUSED;

    
    static char transfer_byte_byte_from_3
    
    UNUSED;

    
    static char transfer_byte_byte_from_4
    
    UNUSED;

    
    static char transfer_byte_byte_from_5
    
    UNUSED;


static char *

get_transfer_byte_byte_from(void) UNUSED;
static char *

get_transfer_byte_byte_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_byte_byte_from_1;
                
        
            case 2:
                
                    return & transfer_byte_byte_from_2;
                
        
            case 3:
                
                    return & transfer_byte_byte_from_3;
                
        
            case 4:
                
                    return & transfer_byte_byte_from_4;
                
        
            case 5:
                
                    return & transfer_byte_byte_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned transfer_byte_marshal_inputs_id(unsigned _camkes_offset_512,
    
      
        int id
      
    
    ) {

    
    void * _camkes_buffer_base_513 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_514 = TLS_PTR(transfer_byte_id_from, id);
        * _camkes_ptr_514 = id;
      
    

    
      ERR_IF(_camkes_offset_512 + sizeof(* _camkes_ptr_514) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "can_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling id in transfer_byte",
          .current_length = _camkes_offset_512,
          .target_length = _camkes_offset_512 + sizeof(* _camkes_ptr_514),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_513 + _camkes_offset_512, _camkes_ptr_514, sizeof(* _camkes_ptr_514));
      _camkes_offset_512 += sizeof(* _camkes_ptr_514);
    

    return _camkes_offset_512;
  }

  
  static unsigned transfer_byte_marshal_inputs_byte(unsigned _camkes_offset_518,
    
      
        char byte
      
    
    ) {

    
    void * _camkes_buffer_base_519 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        char * _camkes_ptr_520 = TLS_PTR(transfer_byte_byte_from, byte);
        * _camkes_ptr_520 = byte;
      
    

    
      ERR_IF(_camkes_offset_518 + sizeof(* _camkes_ptr_520) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "can_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling byte in transfer_byte",
          .current_length = _camkes_offset_518,
          .target_length = _camkes_offset_518 + sizeof(* _camkes_ptr_520),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_519 + _camkes_offset_518, _camkes_ptr_520, sizeof(* _camkes_ptr_520));
      _camkes_offset_518 += sizeof(* _camkes_ptr_520);
    

    return _camkes_offset_518;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_524 = 1;


static unsigned transfer_byte_marshal_inputs(

  
    
      int id
    
  
  
    ,
  

  
    
      char byte
    
  
  


) {

  
  unsigned _camkes_length_525 = 0;

  
  void * _camkes_buffer_base_526 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_525 + sizeof(_camkes_method_index_524) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "can_obj",
        .interface = "spi",
        .description = "buffer exceeded while marshalling method index for transfer_byte",
        .current_length = _camkes_length_525,
        .target_length = _camkes_length_525 + sizeof(_camkes_method_index_524),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_526, & _camkes_method_index_524, sizeof(_camkes_method_index_524));
    _camkes_length_525 += sizeof(_camkes_method_index_524);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_525 = transfer_byte_marshal_inputs_id(_camkes_length_525,
      
      id
    );
    if (unlikely(_camkes_length_525 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_525 = transfer_byte_marshal_inputs_byte(_camkes_length_525,
      
      byte
    );
    if (unlikely(_camkes_length_525 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_525 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for transfer_byte");

  return _camkes_length_525;
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


      
     
          
      
        
         
   

                                                      
 
 



  
  
  
  static unsigned transfer_byte_unmarshal_outputs__camkes_ret_fn_527(unsigned _camkes_size_529, unsigned _camkes_offset_528,
    
      int *
    
    _camkes_return_530
  ) {

    
    void * _camkes_buffer_base_531 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Unmarshal the return value. */
    
      ERR_IF(_camkes_offset_528 + sizeof(* _camkes_return_530) > _camkes_size_529, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "can_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling return value for transfer_byte",
          .length = _camkes_size_529,
          .current_index = _camkes_offset_528 + sizeof(* _camkes_return_530),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_return_530, _camkes_buffer_base_531 + _camkes_offset_528, sizeof(* _camkes_return_530));
      _camkes_offset_528 += sizeof(* _camkes_return_530);
    

    return _camkes_offset_528;
  }



static int
transfer_byte_unmarshal_outputs(

unsigned _camkes_size_532

  ,



  
    int *
  
  _camkes_return_533
  


) {

  
  unsigned _camkes_length_534 UNUSED = 0;

  
  void * _camkes_buffer_base_535 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    _camkes_length_534 = transfer_byte_unmarshal_outputs__camkes_ret_fn_527(_camkes_size_532, _camkes_length_534,
      _camkes_return_533
    );
    if (unlikely(_camkes_length_534 == UINT_MAX)) {
      return -1;
    }
  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_534, sizeof(seL4_Word)) != _camkes_size_532, spi_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "can_obj",
        .interface = "spi",
        .description = "excess trailing bytes after unmarshalling parameters for transfer_byte",
        .length = _camkes_size_532,
        .current_index = _camkes_length_534,
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


    
    static int _camkes_ret_tls_var_from_536_1
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_536_2
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_536_3
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_536_4
    
    UNUSED;

    
    static int _camkes_ret_tls_var_from_536_5
    
    UNUSED;


static int *

get__camkes_ret_tls_var_from_536(void) UNUSED;
static int *

get__camkes_ret_tls_var_from_536(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_ret_tls_var_from_536_1;
                
        
            case 2:
                
                    return & _camkes_ret_tls_var_from_536_2;
                
        
            case 3:
                
                    return & _camkes_ret_tls_var_from_536_3;
                
        
            case 4:
                
                    return & _camkes_ret_tls_var_from_536_4;
                
        
            case 5:
                
                    return & _camkes_ret_tls_var_from_536_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    int

spi_transfer_byte(

  
    
      int
    
    id
  
  
    ,
  

  
    
      char
    
    byte
  
  


) {

    

    
    

    
    
    
      
        int _camkes_return_537 UNUSED;
        int * _camkes_return_ptr_538 = TLS_PTR(_camkes_ret_tls_var_from_536, _camkes_return_537);
      
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_539 = /*
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


     
   

transfer_byte_marshal_inputs(

  
  id
  
    ,
  

  
  byte
  

);
    if (unlikely(_camkes_length_539 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            
                memset(_camkes_return_ptr_538, 0, sizeof(* _camkes_return_ptr_538));
                return * _camkes_return_ptr_538;
            
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_540 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_539, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_540 = seL4_Call(11, _camkes_info_540);

    
    unsigned _camkes_size_541 =
    
        seL4_MessageInfo_get_length(_camkes_info_540) * sizeof(seL4_Word);
        assert(_camkes_size_541 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_542 = /*
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


      
          
   

                                               
                                

transfer_byte_unmarshal_outputs(
_camkes_size_541

  ,


  _camkes_return_ptr_538
  


);
    if (unlikely(_camkes_error_542 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            
                memset(_camkes_return_ptr_538, 0, sizeof(* _camkes_return_ptr_538));
                return * _camkes_return_ptr_538;
            
        
    }

    

    
        return * _camkes_return_ptr_538;
    
}
