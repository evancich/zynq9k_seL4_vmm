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










  
  
  






  
  
  
  






  



#define _camkes_BUFFER_BASE_127 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t gpio_error_handler_fn UNUSED;

camkes_error_handler_t gpio_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = gpio_error_handler_fn;
    gpio_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED gpio_error_handler(camkes_error_t *error) {
    if (gpio_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return gpio_error_handler_fn(error);
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







  
  
    
      
  
  
  static void _camkes__129(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__129(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void gpio_inf_spi_can_nss_state_array_typedef_check(int x UNUSED)
    UNUSED;
  static void gpio_inf_spi_can_nss_state_array_typedef_check(int x UNUSED) {
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

      /* trigger a compile-time warning: */ _camkes__129(),
      /* do nothing: */ (void)0);
  }

      
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  


int gpio__run(void) {
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





  
  
    
      
  
  static int _camkes__130;
  gpio_inf_spi_can_nss_state_array_typedef_check(_camkes__130);

      
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  

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


    
    static int spi_can_nss_state_from_1
    
    UNUSED;

    
    static int spi_can_nss_state_from_2
    
    UNUSED;

    
    static int spi_can_nss_state_from_3
    
    UNUSED;

    
    static int spi_can_nss_state_from_4
    
    UNUSED;

    
    static int spi_can_nss_state_from_5
    
    UNUSED;


static int *

get_spi_can_nss_state_from(void) UNUSED;
static int *

get_spi_can_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_can_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_can_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_can_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_can_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_can_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_can_nss_marshal_inputs_state(unsigned _camkes_offset_131,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_132 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_133 = TLS_PTR(spi_can_nss_state_from, state);
        * _camkes_ptr_133 = state;
      
    

    
      ERR_IF(_camkes_offset_131 + sizeof(* _camkes_ptr_133) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_can_nss",
          .current_length = _camkes_offset_131,
          .target_length = _camkes_offset_131 + sizeof(* _camkes_ptr_133),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_132 + _camkes_offset_131, _camkes_ptr_133, sizeof(* _camkes_ptr_133));
      _camkes_offset_131 += sizeof(* _camkes_ptr_133);
    

    return _camkes_offset_131;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_137 = 0;


static unsigned spi_can_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_138 = 0;

  
  void * _camkes_buffer_base_139 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_138 + sizeof(_camkes_method_index_137) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_can_nss",
        .current_length = _camkes_length_138,
        .target_length = _camkes_length_138 + sizeof(_camkes_method_index_137),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_139, & _camkes_method_index_137, sizeof(_camkes_method_index_137));
    _camkes_length_138 += sizeof(_camkes_method_index_137);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_138 = spi_can_nss_marshal_inputs_state(_camkes_length_138,
      
      state
    );
    if (unlikely(_camkes_length_138 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_138 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_can_nss");

  return _camkes_length_138;
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
spi_can_nss_unmarshal_outputs(

unsigned _camkes_size_141




) {

  
  unsigned _camkes_length_143 UNUSED = 0;

  
  void * _camkes_buffer_base_144 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_143, sizeof(seL4_Word)) != _camkes_size_141, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_can_nss",
        .length = _camkes_size_141,
        .current_index = _camkes_length_143,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_can_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_148 = /*
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


     
   

spi_can_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_148 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_149 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_148, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_149 = seL4_Call(15, _camkes_info_149);

    
    unsigned _camkes_size_150 =
    
        seL4_MessageInfo_get_length(_camkes_info_149) * sizeof(seL4_Word);
        assert(_camkes_size_150 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_151 = /*
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


      
          
   

                                               
                                

spi_can_nss_unmarshal_outputs(
_camkes_size_150



);
    if (unlikely(_camkes_error_151 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
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


    
    static int spi_mpu_nss_state_from_1
    
    UNUSED;

    
    static int spi_mpu_nss_state_from_2
    
    UNUSED;

    
    static int spi_mpu_nss_state_from_3
    
    UNUSED;

    
    static int spi_mpu_nss_state_from_4
    
    UNUSED;

    
    static int spi_mpu_nss_state_from_5
    
    UNUSED;


static int *

get_spi_mpu_nss_state_from(void) UNUSED;
static int *

get_spi_mpu_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_mpu_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_mpu_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_mpu_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_mpu_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_mpu_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_mpu_nss_marshal_inputs_state(unsigned _camkes_offset_152,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_153 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_154 = TLS_PTR(spi_mpu_nss_state_from, state);
        * _camkes_ptr_154 = state;
      
    

    
      ERR_IF(_camkes_offset_152 + sizeof(* _camkes_ptr_154) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_mpu_nss",
          .current_length = _camkes_offset_152,
          .target_length = _camkes_offset_152 + sizeof(* _camkes_ptr_154),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_153 + _camkes_offset_152, _camkes_ptr_154, sizeof(* _camkes_ptr_154));
      _camkes_offset_152 += sizeof(* _camkes_ptr_154);
    

    return _camkes_offset_152;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_158 = 1;


static unsigned spi_mpu_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_159 = 0;

  
  void * _camkes_buffer_base_160 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_159 + sizeof(_camkes_method_index_158) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_mpu_nss",
        .current_length = _camkes_length_159,
        .target_length = _camkes_length_159 + sizeof(_camkes_method_index_158),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_160, & _camkes_method_index_158, sizeof(_camkes_method_index_158));
    _camkes_length_159 += sizeof(_camkes_method_index_158);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_159 = spi_mpu_nss_marshal_inputs_state(_camkes_length_159,
      
      state
    );
    if (unlikely(_camkes_length_159 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_159 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_mpu_nss");

  return _camkes_length_159;
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
spi_mpu_nss_unmarshal_outputs(

unsigned _camkes_size_162




) {

  
  unsigned _camkes_length_164 UNUSED = 0;

  
  void * _camkes_buffer_base_165 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_164, sizeof(seL4_Word)) != _camkes_size_162, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_mpu_nss",
        .length = _camkes_size_162,
        .current_index = _camkes_length_164,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_mpu_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_169 = /*
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


     
   

spi_mpu_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_169 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_170 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_169, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_170 = seL4_Call(15, _camkes_info_170);

    
    unsigned _camkes_size_171 =
    
        seL4_MessageInfo_get_length(_camkes_info_170) * sizeof(seL4_Word);
        assert(_camkes_size_171 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_172 = /*
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


      
          
   

                                               
                                

spi_mpu_nss_unmarshal_outputs(
_camkes_size_171



);
    if (unlikely(_camkes_error_172 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
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


    
    static int spi_acc_mag_nss_state_from_1
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_from_2
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_from_3
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_from_4
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_from_5
    
    UNUSED;


static int *

get_spi_acc_mag_nss_state_from(void) UNUSED;
static int *

get_spi_acc_mag_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_acc_mag_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_acc_mag_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_acc_mag_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_acc_mag_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_acc_mag_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_acc_mag_nss_marshal_inputs_state(unsigned _camkes_offset_173,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_174 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_175 = TLS_PTR(spi_acc_mag_nss_state_from, state);
        * _camkes_ptr_175 = state;
      
    

    
      ERR_IF(_camkes_offset_173 + sizeof(* _camkes_ptr_175) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_acc_mag_nss",
          .current_length = _camkes_offset_173,
          .target_length = _camkes_offset_173 + sizeof(* _camkes_ptr_175),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_174 + _camkes_offset_173, _camkes_ptr_175, sizeof(* _camkes_ptr_175));
      _camkes_offset_173 += sizeof(* _camkes_ptr_175);
    

    return _camkes_offset_173;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_179 = 2;


static unsigned spi_acc_mag_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_180 = 0;

  
  void * _camkes_buffer_base_181 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_180 + sizeof(_camkes_method_index_179) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_acc_mag_nss",
        .current_length = _camkes_length_180,
        .target_length = _camkes_length_180 + sizeof(_camkes_method_index_179),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_181, & _camkes_method_index_179, sizeof(_camkes_method_index_179));
    _camkes_length_180 += sizeof(_camkes_method_index_179);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_180 = spi_acc_mag_nss_marshal_inputs_state(_camkes_length_180,
      
      state
    );
    if (unlikely(_camkes_length_180 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_180 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_acc_mag_nss");

  return _camkes_length_180;
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
spi_acc_mag_nss_unmarshal_outputs(

unsigned _camkes_size_183




) {

  
  unsigned _camkes_length_185 UNUSED = 0;

  
  void * _camkes_buffer_base_186 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_185, sizeof(seL4_Word)) != _camkes_size_183, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_acc_mag_nss",
        .length = _camkes_size_183,
        .current_index = _camkes_length_185,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_acc_mag_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_190 = /*
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


     
   

spi_acc_mag_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_190 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_191 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_190, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_191 = seL4_Call(15, _camkes_info_191);

    
    unsigned _camkes_size_192 =
    
        seL4_MessageInfo_get_length(_camkes_info_191) * sizeof(seL4_Word);
        assert(_camkes_size_192 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_193 = /*
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


      
          
   

                                               
                                

spi_acc_mag_nss_unmarshal_outputs(
_camkes_size_192



);
    if (unlikely(_camkes_error_193 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
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


    
    static int spi_gyro_nss_state_from_1
    
    UNUSED;

    
    static int spi_gyro_nss_state_from_2
    
    UNUSED;

    
    static int spi_gyro_nss_state_from_3
    
    UNUSED;

    
    static int spi_gyro_nss_state_from_4
    
    UNUSED;

    
    static int spi_gyro_nss_state_from_5
    
    UNUSED;


static int *

get_spi_gyro_nss_state_from(void) UNUSED;
static int *

get_spi_gyro_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_gyro_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_gyro_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_gyro_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_gyro_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_gyro_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_gyro_nss_marshal_inputs_state(unsigned _camkes_offset_194,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_195 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_196 = TLS_PTR(spi_gyro_nss_state_from, state);
        * _camkes_ptr_196 = state;
      
    

    
      ERR_IF(_camkes_offset_194 + sizeof(* _camkes_ptr_196) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_gyro_nss",
          .current_length = _camkes_offset_194,
          .target_length = _camkes_offset_194 + sizeof(* _camkes_ptr_196),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_195 + _camkes_offset_194, _camkes_ptr_196, sizeof(* _camkes_ptr_196));
      _camkes_offset_194 += sizeof(* _camkes_ptr_196);
    

    return _camkes_offset_194;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_200 = 3;


static unsigned spi_gyro_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_201 = 0;

  
  void * _camkes_buffer_base_202 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_201 + sizeof(_camkes_method_index_200) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_gyro_nss",
        .current_length = _camkes_length_201,
        .target_length = _camkes_length_201 + sizeof(_camkes_method_index_200),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_202, & _camkes_method_index_200, sizeof(_camkes_method_index_200));
    _camkes_length_201 += sizeof(_camkes_method_index_200);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_201 = spi_gyro_nss_marshal_inputs_state(_camkes_length_201,
      
      state
    );
    if (unlikely(_camkes_length_201 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_201 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_gyro_nss");

  return _camkes_length_201;
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
spi_gyro_nss_unmarshal_outputs(

unsigned _camkes_size_204




) {

  
  unsigned _camkes_length_206 UNUSED = 0;

  
  void * _camkes_buffer_base_207 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_206, sizeof(seL4_Word)) != _camkes_size_204, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_gyro_nss",
        .length = _camkes_size_204,
        .current_index = _camkes_length_206,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_gyro_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_211 = /*
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


     
   

spi_gyro_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_211 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_212 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_211, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_212 = seL4_Call(15, _camkes_info_212);

    
    unsigned _camkes_size_213 =
    
        seL4_MessageInfo_get_length(_camkes_info_212) * sizeof(seL4_Word);
        assert(_camkes_size_213 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_214 = /*
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


      
          
   

                                               
                                

spi_gyro_nss_unmarshal_outputs(
_camkes_size_213



);
    if (unlikely(_camkes_error_214 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
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


    
    static int spi_baro_nss_state_from_1
    
    UNUSED;

    
    static int spi_baro_nss_state_from_2
    
    UNUSED;

    
    static int spi_baro_nss_state_from_3
    
    UNUSED;

    
    static int spi_baro_nss_state_from_4
    
    UNUSED;

    
    static int spi_baro_nss_state_from_5
    
    UNUSED;


static int *

get_spi_baro_nss_state_from(void) UNUSED;
static int *

get_spi_baro_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_baro_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_baro_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_baro_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_baro_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_baro_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_baro_nss_marshal_inputs_state(unsigned _camkes_offset_215,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_216 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_217 = TLS_PTR(spi_baro_nss_state_from, state);
        * _camkes_ptr_217 = state;
      
    

    
      ERR_IF(_camkes_offset_215 + sizeof(* _camkes_ptr_217) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_baro_nss",
          .current_length = _camkes_offset_215,
          .target_length = _camkes_offset_215 + sizeof(* _camkes_ptr_217),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_216 + _camkes_offset_215, _camkes_ptr_217, sizeof(* _camkes_ptr_217));
      _camkes_offset_215 += sizeof(* _camkes_ptr_217);
    

    return _camkes_offset_215;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_221 = 4;


static unsigned spi_baro_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_222 = 0;

  
  void * _camkes_buffer_base_223 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_222 + sizeof(_camkes_method_index_221) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_baro_nss",
        .current_length = _camkes_length_222,
        .target_length = _camkes_length_222 + sizeof(_camkes_method_index_221),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_223, & _camkes_method_index_221, sizeof(_camkes_method_index_221));
    _camkes_length_222 += sizeof(_camkes_method_index_221);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_222 = spi_baro_nss_marshal_inputs_state(_camkes_length_222,
      
      state
    );
    if (unlikely(_camkes_length_222 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_222 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_baro_nss");

  return _camkes_length_222;
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
spi_baro_nss_unmarshal_outputs(

unsigned _camkes_size_225




) {

  
  unsigned _camkes_length_227 UNUSED = 0;

  
  void * _camkes_buffer_base_228 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_227, sizeof(seL4_Word)) != _camkes_size_225, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_baro_nss",
        .length = _camkes_size_225,
        .current_index = _camkes_length_227,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_baro_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_232 = /*
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


     
   

spi_baro_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_232 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_233 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_232, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_233 = seL4_Call(15, _camkes_info_233);

    
    unsigned _camkes_size_234 =
    
        seL4_MessageInfo_get_length(_camkes_info_233) * sizeof(seL4_Word);
        assert(_camkes_size_234 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_235 = /*
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


      
          
   

                                               
                                

spi_baro_nss_unmarshal_outputs(
_camkes_size_234



);
    if (unlikely(_camkes_error_235 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
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


    
    static int spi_ext_nss_state_from_1
    
    UNUSED;

    
    static int spi_ext_nss_state_from_2
    
    UNUSED;

    
    static int spi_ext_nss_state_from_3
    
    UNUSED;

    
    static int spi_ext_nss_state_from_4
    
    UNUSED;

    
    static int spi_ext_nss_state_from_5
    
    UNUSED;


static int *

get_spi_ext_nss_state_from(void) UNUSED;
static int *

get_spi_ext_nss_state_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_ext_nss_state_from_1;
                
        
            case 2:
                
                    return & spi_ext_nss_state_from_2;
                
        
            case 3:
                
                    return & spi_ext_nss_state_from_3;
                
        
            case 4:
                
                    return & spi_ext_nss_state_from_4;
                
        
            case 5:
                
                    return & spi_ext_nss_state_from_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned spi_ext_nss_marshal_inputs_state(unsigned _camkes_offset_236,
    
      
        int state
      
    
    ) {

    
    void * _camkes_buffer_base_237 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_238 = TLS_PTR(spi_ext_nss_state_from, state);
        * _camkes_ptr_238 = state;
      
    

    
      ERR_IF(_camkes_offset_236 + sizeof(* _camkes_ptr_238) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "gpio",
          .description = "buffer exceeded while marshalling state in spi_ext_nss",
          .current_length = _camkes_offset_236,
          .target_length = _camkes_offset_236 + sizeof(* _camkes_ptr_238),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_237 + _camkes_offset_236, _camkes_ptr_238, sizeof(* _camkes_ptr_238));
      _camkes_offset_236 += sizeof(* _camkes_ptr_238);
    

    return _camkes_offset_236;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_242 = 5;


static unsigned spi_ext_nss_marshal_inputs(

  
    
      int state
    
  
  


) {

  
  unsigned _camkes_length_243 = 0;

  
  void * _camkes_buffer_base_244 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_243 + sizeof(_camkes_method_index_242) > (seL4_MsgMaxLength * sizeof(seL4_Word)), gpio_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "buffer exceeded while marshalling method index for spi_ext_nss",
        .current_length = _camkes_length_243,
        .target_length = _camkes_length_243 + sizeof(_camkes_method_index_242),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_244, & _camkes_method_index_242, sizeof(_camkes_method_index_242));
    _camkes_length_243 += sizeof(_camkes_method_index_242);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_243 = spi_ext_nss_marshal_inputs_state(_camkes_length_243,
      
      state
    );
    if (unlikely(_camkes_length_243 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_243 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for spi_ext_nss");

  return _camkes_length_243;
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
spi_ext_nss_unmarshal_outputs(

unsigned _camkes_size_246




) {

  
  unsigned _camkes_length_248 UNUSED = 0;

  
  void * _camkes_buffer_base_249 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_248, sizeof(seL4_Word)) != _camkes_size_246, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_ext_nss",
        .length = _camkes_size_246,
        .current_index = _camkes_length_248,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

gpio_spi_ext_nss(

  
    
      int
    
    state
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_253 = /*
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


     
   

spi_ext_nss_marshal_inputs(

  
  state
  

);
    if (unlikely(_camkes_length_253 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_254 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_253, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_254 = seL4_Call(15, _camkes_info_254);

    
    unsigned _camkes_size_255 =
    
        seL4_MessageInfo_get_length(_camkes_info_254) * sizeof(seL4_Word);
        assert(_camkes_size_255 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_256 = /*
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


      
          
   

                                               
                                

spi_ext_nss_unmarshal_outputs(
_camkes_size_255



);
    if (unlikely(_camkes_error_256 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
    }

    

    
}
