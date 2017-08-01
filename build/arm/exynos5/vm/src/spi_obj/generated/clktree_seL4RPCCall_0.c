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










  
  
  






  
  
  
  






  



#define _camkes_BUFFER_BASE_374 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t clktree_error_handler_fn UNUSED;

camkes_error_handler_t clktree_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = clktree_error_handler_fn;
    clktree_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED clktree_error_handler(camkes_error_t *error) {
    if (clktree_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return clktree_error_handler_fn(error);
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







  
    
  
  
  static void _camkes__376(void) NO_INLINE UNUSED
    WARNING("typedef unsigned int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__376(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void clk_inf_set_spi1_freq_return_array_typedef_check(unsigned int x UNUSED)
    UNUSED;
  static void clk_inf_set_spi1_freq_return_array_typedef_check(unsigned int x UNUSED) {
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

      /* trigger a compile-time warning: */ _camkes__376(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  

  
  


int clktree__run(void) {
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





  
    
  
  static unsigned int _camkes__377;
  clk_inf_set_spi1_freq_return_array_typedef_check(_camkes__377);

    
  
  
    
  

  
  

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


    
    static unsigned int set_spi1_freq_hz_from_1
    
    UNUSED;

    
    static unsigned int set_spi1_freq_hz_from_2
    
    UNUSED;

    
    static unsigned int set_spi1_freq_hz_from_3
    
    UNUSED;

    
    static unsigned int set_spi1_freq_hz_from_4
    
    UNUSED;

    
    static unsigned int set_spi1_freq_hz_from_5
    
    UNUSED;


static unsigned int *

get_set_spi1_freq_hz_from(void) UNUSED;
static unsigned int *

get_set_spi1_freq_hz_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_spi1_freq_hz_from_1;
                
        
            case 2:
                
                    return & set_spi1_freq_hz_from_2;
                
        
            case 3:
                
                    return & set_spi1_freq_hz_from_3;
                
        
            case 4:
                
                    return & set_spi1_freq_hz_from_4;
                
        
            case 5:
                
                    return & set_spi1_freq_hz_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned set_spi1_freq_marshal_inputs_hz(unsigned _camkes_offset_378,
    
      
        unsigned int hz
      
    
    ) {

    
    void * _camkes_buffer_base_379 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        unsigned int * _camkes_ptr_380 = TLS_PTR(set_spi1_freq_hz_from, hz);
        * _camkes_ptr_380 = hz;
      
    

    
      ERR_IF(_camkes_offset_378 + sizeof(* _camkes_ptr_380) > (seL4_MsgMaxLength * sizeof(seL4_Word)), clktree_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "clktree",
          .description = "buffer exceeded while marshalling hz in set_spi1_freq",
          .current_length = _camkes_offset_378,
          .target_length = _camkes_offset_378 + sizeof(* _camkes_ptr_380),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_379 + _camkes_offset_378, _camkes_ptr_380, sizeof(* _camkes_ptr_380));
      _camkes_offset_378 += sizeof(* _camkes_ptr_380);
    

    return _camkes_offset_378;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_384 = 0;


static unsigned set_spi1_freq_marshal_inputs(

  
    
      unsigned int hz
    
  
  


) {

  
  unsigned _camkes_length_385 = 0;

  
  void * _camkes_buffer_base_386 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_385 + sizeof(_camkes_method_index_384) > (seL4_MsgMaxLength * sizeof(seL4_Word)), clktree_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "clktree",
        .description = "buffer exceeded while marshalling method index for set_spi1_freq",
        .current_length = _camkes_length_385,
        .target_length = _camkes_length_385 + sizeof(_camkes_method_index_384),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_386, & _camkes_method_index_384, sizeof(_camkes_method_index_384));
    _camkes_length_385 += sizeof(_camkes_method_index_384);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_385 = set_spi1_freq_marshal_inputs_hz(_camkes_length_385,
      
      hz
    );
    if (unlikely(_camkes_length_385 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_385 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for set_spi1_freq");

  return _camkes_length_385;
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


      
     
          
      
        
         
   

                                                      
 
 



  
  
  
  static unsigned set_spi1_freq_unmarshal_outputs__camkes_ret_fn_387(unsigned _camkes_size_389, unsigned _camkes_offset_388,
    
      unsigned int *
    
    _camkes_return_390
  ) {

    
    void * _camkes_buffer_base_391 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Unmarshal the return value. */
    
      ERR_IF(_camkes_offset_388 + sizeof(* _camkes_return_390) > _camkes_size_389, clktree_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "clktree",
          .description = "truncated message encountered while unmarshalling return value for set_spi1_freq",
          .length = _camkes_size_389,
          .current_index = _camkes_offset_388 + sizeof(* _camkes_return_390),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_return_390, _camkes_buffer_base_391 + _camkes_offset_388, sizeof(* _camkes_return_390));
      _camkes_offset_388 += sizeof(* _camkes_return_390);
    

    return _camkes_offset_388;
  }



static int
set_spi1_freq_unmarshal_outputs(

unsigned _camkes_size_392

  ,



  
    unsigned int *
  
  _camkes_return_393
  


) {

  
  unsigned _camkes_length_394 UNUSED = 0;

  
  void * _camkes_buffer_base_395 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    _camkes_length_394 = set_spi1_freq_unmarshal_outputs__camkes_ret_fn_387(_camkes_size_392, _camkes_length_394,
      _camkes_return_393
    );
    if (unlikely(_camkes_length_394 == UINT_MAX)) {
      return -1;
    }
  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_394, sizeof(seL4_Word)) != _camkes_size_392, clktree_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "clktree",
        .description = "excess trailing bytes after unmarshalling parameters for set_spi1_freq",
        .length = _camkes_size_392,
        .current_index = _camkes_length_394,
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


    
    static unsigned int _camkes_ret_tls_var_from_396_1
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_396_2
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_396_3
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_396_4
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_396_5
    
    UNUSED;


static unsigned int *

get__camkes_ret_tls_var_from_396(void) UNUSED;
static unsigned int *

get__camkes_ret_tls_var_from_396(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_ret_tls_var_from_396_1;
                
        
            case 2:
                
                    return & _camkes_ret_tls_var_from_396_2;
                
        
            case 3:
                
                    return & _camkes_ret_tls_var_from_396_3;
                
        
            case 4:
                
                    return & _camkes_ret_tls_var_from_396_4;
                
        
            case 5:
                
                    return & _camkes_ret_tls_var_from_396_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    unsigned int

clktree_set_spi1_freq(

  
    
      unsigned int
    
    hz
  
  


) {

    

    
    

    
    
    
      
        unsigned int _camkes_return_397 UNUSED;
        unsigned int * _camkes_return_ptr_398 = TLS_PTR(_camkes_ret_tls_var_from_396, _camkes_return_397);
      
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_399 = /*
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


     
   

set_spi1_freq_marshal_inputs(

  
  hz
  

);
    if (unlikely(_camkes_length_399 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            
                memset(_camkes_return_ptr_398, 0, sizeof(* _camkes_return_ptr_398));
                return * _camkes_return_ptr_398;
            
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_400 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_399, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_400 = seL4_Call(16, _camkes_info_400);

    
    unsigned _camkes_size_401 =
    
        seL4_MessageInfo_get_length(_camkes_info_400) * sizeof(seL4_Word);
        assert(_camkes_size_401 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_402 = /*
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


      
          
   

                                               
                                

set_spi1_freq_unmarshal_outputs(
_camkes_size_401

  ,


  _camkes_return_ptr_398
  


);
    if (unlikely(_camkes_error_402 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            
                memset(_camkes_return_ptr_398, 0, sizeof(* _camkes_return_ptr_398));
                return * _camkes_return_ptr_398;
            
        
    }

    

    
        return * _camkes_return_ptr_398;
    
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


      
     
          
      
        
          
         
          
    
 








  
  static const
  
    uint8_t
  
  _camkes_method_index_403 = 1;


static unsigned get_spi1_freq_marshal_inputs(


  void

) {

  
  unsigned _camkes_length_404 = 0;

  
  void * _camkes_buffer_base_405 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_404 + sizeof(_camkes_method_index_403) > (seL4_MsgMaxLength * sizeof(seL4_Word)), clktree_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "clktree",
        .description = "buffer exceeded while marshalling method index for get_spi1_freq",
        .current_length = _camkes_length_404,
        .target_length = _camkes_length_404 + sizeof(_camkes_method_index_403),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_405, & _camkes_method_index_403, sizeof(_camkes_method_index_403));
    _camkes_length_404 += sizeof(_camkes_method_index_403);
  

  /* Marshal the parameters. */
  

  assert(_camkes_length_404 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for get_spi1_freq");

  return _camkes_length_404;
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


      
     
          
      
        
         
   

                                                      
 
 



  
  
  
  static unsigned get_spi1_freq_unmarshal_outputs__camkes_ret_fn_406(unsigned _camkes_size_408, unsigned _camkes_offset_407,
    
      unsigned int *
    
    _camkes_return_409
  ) {

    
    void * _camkes_buffer_base_410 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Unmarshal the return value. */
    
      ERR_IF(_camkes_offset_407 + sizeof(* _camkes_return_409) > _camkes_size_408, clktree_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "clktree",
          .description = "truncated message encountered while unmarshalling return value for get_spi1_freq",
          .length = _camkes_size_408,
          .current_index = _camkes_offset_407 + sizeof(* _camkes_return_409),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_return_409, _camkes_buffer_base_410 + _camkes_offset_407, sizeof(* _camkes_return_409));
      _camkes_offset_407 += sizeof(* _camkes_return_409);
    

    return _camkes_offset_407;
  }



static int
get_spi1_freq_unmarshal_outputs(

unsigned _camkes_size_411

  ,



  
    unsigned int *
  
  _camkes_return_412
  


) {

  
  unsigned _camkes_length_413 UNUSED = 0;

  
  void * _camkes_buffer_base_414 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    _camkes_length_413 = get_spi1_freq_unmarshal_outputs__camkes_ret_fn_406(_camkes_size_411, _camkes_length_413,
      _camkes_return_412
    );
    if (unlikely(_camkes_length_413 == UINT_MAX)) {
      return -1;
    }
  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_413, sizeof(seL4_Word)) != _camkes_size_411, clktree_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "clktree",
        .description = "excess trailing bytes after unmarshalling parameters for get_spi1_freq",
        .length = _camkes_size_411,
        .current_index = _camkes_length_413,
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


    
    static unsigned int _camkes_ret_tls_var_from_415_1
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_415_2
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_415_3
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_415_4
    
    UNUSED;

    
    static unsigned int _camkes_ret_tls_var_from_415_5
    
    UNUSED;


static unsigned int *

get__camkes_ret_tls_var_from_415(void) UNUSED;
static unsigned int *

get__camkes_ret_tls_var_from_415(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_ret_tls_var_from_415_1;
                
        
            case 2:
                
                    return & _camkes_ret_tls_var_from_415_2;
                
        
            case 3:
                
                    return & _camkes_ret_tls_var_from_415_3;
                
        
            case 4:
                
                    return & _camkes_ret_tls_var_from_415_4;
                
        
            case 5:
                
                    return & _camkes_ret_tls_var_from_415_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    unsigned int

clktree_get_spi1_freq(


  void

) {

    

    
    

    
    
    
      
        unsigned int _camkes_return_416 UNUSED;
        unsigned int * _camkes_return_ptr_417 = TLS_PTR(_camkes_ret_tls_var_from_415, _camkes_return_416);
      
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_418 = /*
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


     
   

get_spi1_freq_marshal_inputs(

);
    if (unlikely(_camkes_length_418 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            
                memset(_camkes_return_ptr_417, 0, sizeof(* _camkes_return_ptr_417));
                return * _camkes_return_ptr_417;
            
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_419 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_418, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_419 = seL4_Call(16, _camkes_info_419);

    
    unsigned _camkes_size_420 =
    
        seL4_MessageInfo_get_length(_camkes_info_419) * sizeof(seL4_Word);
        assert(_camkes_size_420 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_421 = /*
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


      
          
   

                                               
                                

get_spi1_freq_unmarshal_outputs(
_camkes_size_420

  ,


  _camkes_return_ptr_417
  


);
    if (unlikely(_camkes_error_421 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            
                memset(_camkes_return_ptr_417, 0, sizeof(* _camkes_return_ptr_417));
                return * _camkes_return_ptr_417;
            
        
    }

    

    
        return * _camkes_return_ptr_417;
    
}
