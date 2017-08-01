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





#define _camkes_BUFFER_BASE_422 ((void*)&seL4_GetIPCBuffer()->msg[0])






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


    extern
    
        
            unsigned int
        
    
    clktree_set_spi1_freq(
      
        
          
            unsigned int
          
          hz
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned set_spi1_freq_unmarshal_inputs_hz(unsigned _camkes_size_423, unsigned _camkes_offset_424,
    
      unsigned int * hz
    
  ) {

    
    void * _camkes_buffer_base_425 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_424 + sizeof(* hz) > _camkes_size_423, clktree_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "clk_obj",
          .interface = "clktree",
          .description = "truncated message encountered while unmarshalling hz in set_spi1_freq",
          .length = _camkes_size_423,
          .current_index = _camkes_offset_424 + sizeof(* hz),
        }), ({
          return UINT_MAX;
        }));
      memcpy(hz, _camkes_buffer_base_425 + _camkes_offset_424, sizeof(* hz));
      _camkes_offset_424 += sizeof(* hz);
    

    return _camkes_offset_424;
  }


static int set_spi1_freq_unmarshal_inputs(

unsigned _camkes_size_426

  ,


  
    unsigned int * hz
  
  

) {

  
  unsigned _camkes_length_427 UNUSED = 0;

  
  void * _camkes_buffer_base_428 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_427 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_427 = set_spi1_freq_unmarshal_inputs_hz(_camkes_size_426, _camkes_length_427,
      
      hz
    );
    if (unlikely(_camkes_length_427 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_427, sizeof(seL4_Word)) != _camkes_size_426, clktree_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "clk_obj",
        .interface = "clktree",
        .description = "excess trailing bytes after unmarshalling parameters for set_spi1_freq",
        .length = _camkes_size_426,
        .current_index = _camkes_length_427,
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


      
     
          
      
        
          
   

                                               
 



  
  
  static unsigned set_spi1_freq_marshal_outputs__camkes_ret_fn_429(unsigned _camkes_offset_430,
    
      const unsigned int * _camkes_return_431
    
  ) {

    
    void * _camkes_buffer_base_432 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Marshal the return value. */
    
      ERR_IF(_camkes_offset_430 + sizeof(* _camkes_return_431) > (seL4_MsgMaxLength * sizeof(seL4_Word)), clktree_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "clk_obj",
          .interface = "clktree",
          .description = "buffer exceeded while marshalling return value for set_spi1_freq",
          .current_length = _camkes_offset_430,
          .target_length = _camkes_offset_430 + sizeof(* _camkes_return_431),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_432 + _camkes_offset_430, _camkes_return_431, sizeof(* _camkes_return_431));
      _camkes_offset_430 += sizeof(* _camkes_return_431);
    

    return _camkes_offset_430;
  }



static unsigned set_spi1_freq_marshal_outputs(


  
    const unsigned int * _camkes_return_433
  
  



) {

  
  unsigned _camkes_length_434 = 0;

  
    _camkes_length_434 = set_spi1_freq_marshal_outputs__camkes_ret_fn_429(_camkes_length_434,
      _camkes_return_433
    );
    if (unlikely(_camkes_length_434 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  /* Marshal output parameters. */
  

  assert(_camkes_length_434 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for set_spi1_freq");

  return _camkes_length_434;
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


    
    static unsigned int set_spi1_freq_ret_to_1
    
    UNUSED;

    
    static unsigned int set_spi1_freq_ret_to_2
    
    UNUSED;


static unsigned int *

get_set_spi1_freq_ret_to(void) UNUSED;
static unsigned int *

get_set_spi1_freq_ret_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_spi1_freq_ret_to_1;
                
        
            case 2:
                
                    return & set_spi1_freq_ret_to_2;
                
        
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


    
    static unsigned int set_spi1_freq_hz_to_1
    
    UNUSED;

    
    static unsigned int set_spi1_freq_hz_to_2
    
    UNUSED;


static unsigned int *

get_set_spi1_freq_hz_to(void) UNUSED;
static unsigned int *

get_set_spi1_freq_hz_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_spi1_freq_hz_to_1;
                
        
            case 2:
                
                    return & set_spi1_freq_hz_to_2;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        
            unsigned int
        
    
    clktree_get_spi1_freq(
      
      
        void
      
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


      
     
          
      
        
          
    



static int get_spi1_freq_unmarshal_inputs(

unsigned _camkes_size_435


) {

  
  unsigned _camkes_length_436 UNUSED = 0;

  
  void * _camkes_buffer_base_437 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_436 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_436, sizeof(seL4_Word)) != _camkes_size_435, clktree_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "clk_obj",
        .interface = "clktree",
        .description = "excess trailing bytes after unmarshalling parameters for get_spi1_freq",
        .length = _camkes_size_435,
        .current_index = _camkes_length_436,
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


      
     
          
      
        
          
   

                                               
 



  
  
  static unsigned get_spi1_freq_marshal_outputs__camkes_ret_fn_438(unsigned _camkes_offset_439,
    
      const unsigned int * _camkes_return_440
    
  ) {

    
    void * _camkes_buffer_base_441 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Marshal the return value. */
    
      ERR_IF(_camkes_offset_439 + sizeof(* _camkes_return_440) > (seL4_MsgMaxLength * sizeof(seL4_Word)), clktree_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "clk_obj",
          .interface = "clktree",
          .description = "buffer exceeded while marshalling return value for get_spi1_freq",
          .current_length = _camkes_offset_439,
          .target_length = _camkes_offset_439 + sizeof(* _camkes_return_440),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_441 + _camkes_offset_439, _camkes_return_440, sizeof(* _camkes_return_440));
      _camkes_offset_439 += sizeof(* _camkes_return_440);
    

    return _camkes_offset_439;
  }



static unsigned get_spi1_freq_marshal_outputs(


  
    const unsigned int * _camkes_return_442
  
  



) {

  
  unsigned _camkes_length_443 = 0;

  
    _camkes_length_443 = get_spi1_freq_marshal_outputs__camkes_ret_fn_438(_camkes_length_443,
      _camkes_return_442
    );
    if (unlikely(_camkes_length_443 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  /* Marshal output parameters. */
  

  assert(_camkes_length_443 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for get_spi1_freq");

  return _camkes_length_443;
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


    
    static unsigned int get_spi1_freq_ret_to_1
    
    UNUSED;

    
    static unsigned int get_spi1_freq_ret_to_2
    
    UNUSED;


static unsigned int *

get_get_spi1_freq_ret_to(void) UNUSED;
static unsigned int *

get_get_spi1_freq_ret_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & get_spi1_freq_ret_to_1;
                
        
            case 2:
                
                    return & get_spi1_freq_ret_to_2;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  








static seL4_Word clktree_badge = 0;

seL4_Word clktree_get_sender_id(void) {
    return clktree_badge;
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


    
    static uint8_t _camkes_call_tls_var_to_444_1
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_444_2
    
    UNUSED;


static uint8_t *

get__camkes_call_tls_var_to_444(void) UNUSED;
static uint8_t *

get__camkes_call_tls_var_to_444(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_444_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_444_2;
                
        
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







  
    
  
  
  static void _camkes__445(void) NO_INLINE UNUSED
    WARNING("typedef unsigned int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__445(void) {
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

      /* trigger a compile-time warning: */ _camkes__445(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  

  
  






int

    clktree__run(void)

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





  
    
  
  static unsigned int _camkes__446;
  clk_inf_set_spi1_freq_return_array_typedef_check(_camkes__446);

    
  
  
    
  

  
  


    
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_447 = seL4_Recv(10, &clktree_badge);
    

    while (1) {

        
        void * _camkes_buffer_448 UNUSED = (void*)_camkes_BUFFER_BASE_422;

        
        unsigned _camkes_size_449 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_447) * sizeof(seL4_Word);
            assert(_camkes_size_449 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          uint8_t _camkes_call_450 UNUSED;
          uint8_t * _camkes_call_ptr_451 = TLS_PTR(_camkes_call_tls_var_to_444, _camkes_call_450);
        
        
            ERR_IF(sizeof(* _camkes_call_ptr_451) > _camkes_size_449, clktree_error_handler, ((camkes_error_t){
                    .type = CE_MALFORMED_RPC_PAYLOAD,
                    .instance = "clk_obj",
                    .interface = "clktree",
                    .description = "truncated message encountered while unmarshalling method index in clktree",
                    .length = _camkes_size_449,
                    .current_index = sizeof(* _camkes_call_ptr_451),
                }), ({
                    _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                    continue;
                }));

            memcpy(_camkes_call_ptr_451, _camkes_buffer_448, sizeof(* _camkes_call_ptr_451));
        

        switch (* _camkes_call_ptr_451) {
            
                case 0: { /* set_spi1_freq */
                    
                    

                        
                            unsigned int hz UNUSED;
                            unsigned int * hz_ptr = TLS_PTR(set_spi1_freq_hz_to, hz);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_452 = /*
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


     
         
   

set_spi1_freq_unmarshal_inputs(
_camkes_size_449

  ,


  
  hz_ptr
  

);
                    if (unlikely(_camkes_error_452 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                        continue;
                    }

                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                        
                            unsigned int _camkes_ret_453 UNUSED;
                            unsigned int * _camkes_ret_ptr_455 = TLS_PTR(set_spi1_freq_ret_to, _camkes_ret_453);
                        
                        * _camkes_ret_ptr_455 =
                    
                    clktree_set_spi1_freq(
                        
                            
                            
                                *
                            
                            hz_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__457 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_458 = /*
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


      
   

                                               
                                

set_spi1_freq_marshal_outputs(

  
  _camkes_ret_ptr_455
  


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_458 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                        continue;
                    }

                    _camkes_info_447 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_458, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    

                        
                        _camkes_info_447 = seL4_ReplyRecv(10, _camkes_info_447, &clktree_badge);
                    

                    break;
                }
            
                case 1: { /* get_spi1_freq */
                    
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_459 = /*
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


     
         
   

get_spi1_freq_unmarshal_inputs(
_camkes_size_449


);
                    if (unlikely(_camkes_error_459 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                        continue;
                    }

                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                        
                            unsigned int _camkes_ret_460 UNUSED;
                            unsigned int * _camkes_ret_ptr_462 = TLS_PTR(get_spi1_freq_ret_to, _camkes_ret_460);
                        
                        * _camkes_ret_ptr_462 =
                    
                    clktree_get_spi1_freq(
                        
                    );

                    
                    camkes_tls_t * _camkes__464 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_465 = /*
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


      
   

                                               
                                

get_spi1_freq_marshal_outputs(

  
  _camkes_ret_ptr_462
  


);

                    
                    
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_465 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                        continue;
                    }

                    _camkes_info_447 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_465, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    

                        
                        _camkes_info_447 = seL4_ReplyRecv(10, _camkes_info_447, &clktree_badge);
                    

                    break;
                }
            
            default: {
                ERR(clktree_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "clk_obj",
                        .interface = "clktree",
                        .description = "invalid method index received in clktree",
                        .lower_bound = 0,
                        .upper_bound = 2 - 1,
                        .invalid_index = * _camkes_call_ptr_451,
                    }), ({
                        _camkes_info_447 = seL4_Recv(10, &clktree_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}