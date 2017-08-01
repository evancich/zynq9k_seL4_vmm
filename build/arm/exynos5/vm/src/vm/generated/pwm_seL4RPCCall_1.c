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










  
  
  

  
  
  






  
  
  
  

  
  
  
  






  



#define _camkes_BUFFER_BASE_928 ((void*)&seL4_GetIPCBuffer()->msg[0])






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
static camkes_error_handler_t pwm_error_handler_fn UNUSED;

camkes_error_handler_t pwm_register_error_handler(
    camkes_error_handler_t handler) {
    camkes_error_handler_t old = pwm_error_handler_fn;
    pwm_error_handler_fn = handler;
    return old;
}

static camkes_error_action_t UNUSED pwm_error_handler(camkes_error_t *error) {
    if (pwm_error_handler_fn == NULL) {
        /* No registered handler; invoke the generic error handler. */
        return camkes_error(error);
    }
    return pwm_error_handler_fn(error);
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







  
  
    
      
  
  
  static void _camkes__930(void) NO_INLINE UNUSED
    WARNING("typedef double looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__930(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void pwm_inf_set_motors_fl_array_typedef_check(double x UNUSED)
    UNUSED;
  static void pwm_inf_set_motors_fl_array_typedef_check(double x UNUSED) {
    __builtin_choose_expr(

      
      sizeof(x) != sizeof(double) ||

      
      (sizeof(double) == sizeof(void*) &&
        (__builtin_types_compatible_p(char[sizeof(void*)], double) ||
         __builtin_types_compatible_p(signed char[sizeof(void*)], double) ||
         __builtin_types_compatible_p(unsigned char[sizeof(void*)], double) ||
         __builtin_types_compatible_p(short[sizeof(void*) / sizeof(short)], double) ||
         __builtin_types_compatible_p(unsigned short[sizeof(void*) / sizeof(unsigned short)], double) ||
         __builtin_types_compatible_p(int[sizeof(void*) / sizeof(int)], double) ||
         __builtin_types_compatible_p(unsigned[sizeof(void*) / sizeof(unsigned)], double) ||
         __builtin_types_compatible_p(long[sizeof(void*) / sizeof(long)], double) ||
         __builtin_types_compatible_p(unsigned long[sizeof(void*) / sizeof(unsigned long)], double) ||
         (sizeof(void*) / sizeof(long long) > 0 &&
           __builtin_types_compatible_p(long long[sizeof(void*) / sizeof(long long)], double)) ||
         (sizeof(void*) / sizeof(unsigned long long) > 0 &&
           __builtin_types_compatible_p(unsigned long long[sizeof(void*) / sizeof(unsigned long long)], double)) ||
         (sizeof(void*) / sizeof(double) > 0 &&
           __builtin_types_compatible_p(double[sizeof(void*) / sizeof(double)], double)) ||
         (sizeof(void*) / sizeof(long double) > 0 &&
           __builtin_types_compatible_p(long double[sizeof(void*) / sizeof(long double)], double)) ||
         (sizeof(void*) / sizeof(float) > 0 &&
           __builtin_types_compatible_p(float[sizeof(void*) / sizeof(float)], double)))),

      /* trigger a compile-time warning: */ _camkes__930(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  
  static void _camkes__931(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__931(void) {
    /* We need something opaque here to prevent the compiler from optimising
     * away an invocation of (and hence the warning attached to) this function.
     * This is also why this function is marked noinline.
     */
    asm volatile ("");
  }
  static void pwm_inf_set_led_led_array_typedef_check(int x UNUSED)
    UNUSED;
  static void pwm_inf_set_led_led_array_typedef_check(int x UNUSED) {
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

      /* trigger a compile-time warning: */ _camkes__931(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  

  
  
    
  


int pwm__run(void) {
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





  
  
    
      
  
  static double _camkes__932;
  pwm_inf_set_motors_fl_array_typedef_check(_camkes__932);

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  static int _camkes__933;
  pwm_inf_set_led_led_array_typedef_check(_camkes__933);

      
    
  
    
  

  
  
    
  

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


    
    static double set_motors_fl_from_1
    
    UNUSED;

    
    static double set_motors_fl_from_2
    
    UNUSED;

    
    static double set_motors_fl_from_3
    
    UNUSED;


static double *

get_set_motors_fl_from(void) UNUSED;
static double *

get_set_motors_fl_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_fl_from_1;
                
        
            case 2:
                
                    return & set_motors_fl_from_2;
                
        
            case 3:
                
                    return & set_motors_fl_from_3;
                
        
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


    
    static double set_motors_fr_from_1
    
    UNUSED;

    
    static double set_motors_fr_from_2
    
    UNUSED;

    
    static double set_motors_fr_from_3
    
    UNUSED;


static double *

get_set_motors_fr_from(void) UNUSED;
static double *

get_set_motors_fr_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_fr_from_1;
                
        
            case 2:
                
                    return & set_motors_fr_from_2;
                
        
            case 3:
                
                    return & set_motors_fr_from_3;
                
        
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


    
    static double set_motors_bl_from_1
    
    UNUSED;

    
    static double set_motors_bl_from_2
    
    UNUSED;

    
    static double set_motors_bl_from_3
    
    UNUSED;


static double *

get_set_motors_bl_from(void) UNUSED;
static double *

get_set_motors_bl_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_bl_from_1;
                
        
            case 2:
                
                    return & set_motors_bl_from_2;
                
        
            case 3:
                
                    return & set_motors_bl_from_3;
                
        
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


    
    static double set_motors_br_from_1
    
    UNUSED;

    
    static double set_motors_br_from_2
    
    UNUSED;

    
    static double set_motors_br_from_3
    
    UNUSED;


static double *

get_set_motors_br_from(void) UNUSED;
static double *

get_set_motors_br_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_br_from_1;
                
        
            case 2:
                
                    return & set_motors_br_from_2;
                
        
            case 3:
                
                    return & set_motors_br_from_3;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned set_motors_marshal_inputs_fl(unsigned _camkes_offset_934,
    
      
        double fl
      
    
    ) {

    
    void * _camkes_buffer_base_935 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_936 = TLS_PTR(set_motors_fl_from, fl);
        * _camkes_ptr_936 = fl;
      
    

    
      ERR_IF(_camkes_offset_934 + sizeof(* _camkes_ptr_936) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling fl in set_motors",
          .current_length = _camkes_offset_934,
          .target_length = _camkes_offset_934 + sizeof(* _camkes_ptr_936),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_935 + _camkes_offset_934, _camkes_ptr_936, sizeof(* _camkes_ptr_936));
      _camkes_offset_934 += sizeof(* _camkes_ptr_936);
    

    return _camkes_offset_934;
  }

  
  static unsigned set_motors_marshal_inputs_fr(unsigned _camkes_offset_940,
    
      
        double fr
      
    
    ) {

    
    void * _camkes_buffer_base_941 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_942 = TLS_PTR(set_motors_fr_from, fr);
        * _camkes_ptr_942 = fr;
      
    

    
      ERR_IF(_camkes_offset_940 + sizeof(* _camkes_ptr_942) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling fr in set_motors",
          .current_length = _camkes_offset_940,
          .target_length = _camkes_offset_940 + sizeof(* _camkes_ptr_942),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_941 + _camkes_offset_940, _camkes_ptr_942, sizeof(* _camkes_ptr_942));
      _camkes_offset_940 += sizeof(* _camkes_ptr_942);
    

    return _camkes_offset_940;
  }

  
  static unsigned set_motors_marshal_inputs_bl(unsigned _camkes_offset_946,
    
      
        double bl
      
    
    ) {

    
    void * _camkes_buffer_base_947 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_948 = TLS_PTR(set_motors_bl_from, bl);
        * _camkes_ptr_948 = bl;
      
    

    
      ERR_IF(_camkes_offset_946 + sizeof(* _camkes_ptr_948) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling bl in set_motors",
          .current_length = _camkes_offset_946,
          .target_length = _camkes_offset_946 + sizeof(* _camkes_ptr_948),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_947 + _camkes_offset_946, _camkes_ptr_948, sizeof(* _camkes_ptr_948));
      _camkes_offset_946 += sizeof(* _camkes_ptr_948);
    

    return _camkes_offset_946;
  }

  
  static unsigned set_motors_marshal_inputs_br(unsigned _camkes_offset_952,
    
      
        double br
      
    
    ) {

    
    void * _camkes_buffer_base_953 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_954 = TLS_PTR(set_motors_br_from, br);
        * _camkes_ptr_954 = br;
      
    

    
      ERR_IF(_camkes_offset_952 + sizeof(* _camkes_ptr_954) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling br in set_motors",
          .current_length = _camkes_offset_952,
          .target_length = _camkes_offset_952 + sizeof(* _camkes_ptr_954),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_953 + _camkes_offset_952, _camkes_ptr_954, sizeof(* _camkes_ptr_954));
      _camkes_offset_952 += sizeof(* _camkes_ptr_954);
    

    return _camkes_offset_952;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_958 = 0;


static unsigned set_motors_marshal_inputs(

  
    
      double fl
    
  
  
    ,
  

  
    
      double fr
    
  
  
    ,
  

  
    
      double bl
    
  
  
    ,
  

  
    
      double br
    
  
  


) {

  
  unsigned _camkes_length_959 = 0;

  
  void * _camkes_buffer_base_960 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_959 + sizeof(_camkes_method_index_958) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "vm",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for set_motors",
        .current_length = _camkes_length_959,
        .target_length = _camkes_length_959 + sizeof(_camkes_method_index_958),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_960, & _camkes_method_index_958, sizeof(_camkes_method_index_958));
    _camkes_length_959 += sizeof(_camkes_method_index_958);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_959 = set_motors_marshal_inputs_fl(_camkes_length_959,
      
      fl
    );
    if (unlikely(_camkes_length_959 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_959 = set_motors_marshal_inputs_fr(_camkes_length_959,
      
      fr
    );
    if (unlikely(_camkes_length_959 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_959 = set_motors_marshal_inputs_bl(_camkes_length_959,
      
      bl
    );
    if (unlikely(_camkes_length_959 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_959 = set_motors_marshal_inputs_br(_camkes_length_959,
      
      br
    );
    if (unlikely(_camkes_length_959 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_959 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for set_motors");

  return _camkes_length_959;
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
set_motors_unmarshal_outputs(

unsigned _camkes_size_962




) {

  
  unsigned _camkes_length_964 UNUSED = 0;

  
  void * _camkes_buffer_base_965 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_964, sizeof(seL4_Word)) != _camkes_size_962, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "vm",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_motors",
        .length = _camkes_size_962,
        .current_index = _camkes_length_964,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

pwm_set_motors(

  
    
      double
    
    fl
  
  
    ,
  

  
    
      double
    
    fr
  
  
    ,
  

  
    
      double
    
    bl
  
  
    ,
  

  
    
      double
    
    br
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_969 = /*
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


     
   

set_motors_marshal_inputs(

  
  fl
  
    ,
  

  
  fr
  
    ,
  

  
  bl
  
    ,
  

  
  br
  

);
    if (unlikely(_camkes_length_969 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_970 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_969, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_970 = seL4_Call(14, _camkes_info_970);

    
    unsigned _camkes_size_971 =
    
        seL4_MessageInfo_get_length(_camkes_info_970) * sizeof(seL4_Word);
        assert(_camkes_size_971 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_972 = /*
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


      
          
   

                                               
                                

set_motors_unmarshal_outputs(
_camkes_size_971



);
    if (unlikely(_camkes_error_972 != 0)) {
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


    
    static int set_led_led_from_1
    
    UNUSED;

    
    static int set_led_led_from_2
    
    UNUSED;

    
    static int set_led_led_from_3
    
    UNUSED;


static int *

get_set_led_led_from(void) UNUSED;
static int *

get_set_led_led_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_led_led_from_1;
                
        
            case 2:
                
                    return & set_led_led_from_2;
                
        
            case 3:
                
                    return & set_led_led_from_3;
                
        
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


    
    static int set_led_level_from_1
    
    UNUSED;

    
    static int set_led_level_from_2
    
    UNUSED;

    
    static int set_led_level_from_3
    
    UNUSED;


static int *

get_set_led_level_from(void) UNUSED;
static int *

get_set_led_level_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_led_level_from_1;
                
        
            case 2:
                
                    return & set_led_level_from_2;
                
        
            case 3:
                
                    return & set_led_level_from_3;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned set_led_marshal_inputs_led(unsigned _camkes_offset_973,
    
      
        int led
      
    
    ) {

    
    void * _camkes_buffer_base_974 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_975 = TLS_PTR(set_led_led_from, led);
        * _camkes_ptr_975 = led;
      
    

    
      ERR_IF(_camkes_offset_973 + sizeof(* _camkes_ptr_975) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling led in set_led",
          .current_length = _camkes_offset_973,
          .target_length = _camkes_offset_973 + sizeof(* _camkes_ptr_975),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_974 + _camkes_offset_973, _camkes_ptr_975, sizeof(* _camkes_ptr_975));
      _camkes_offset_973 += sizeof(* _camkes_ptr_975);
    

    return _camkes_offset_973;
  }

  
  static unsigned set_led_marshal_inputs_level(unsigned _camkes_offset_979,
    
      
        int level
      
    
    ) {

    
    void * _camkes_buffer_base_980 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_981 = TLS_PTR(set_led_level_from, level);
        * _camkes_ptr_981 = level;
      
    

    
      ERR_IF(_camkes_offset_979 + sizeof(* _camkes_ptr_981) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling level in set_led",
          .current_length = _camkes_offset_979,
          .target_length = _camkes_offset_979 + sizeof(* _camkes_ptr_981),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_980 + _camkes_offset_979, _camkes_ptr_981, sizeof(* _camkes_ptr_981));
      _camkes_offset_979 += sizeof(* _camkes_ptr_981);
    

    return _camkes_offset_979;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_985 = 1;


static unsigned set_led_marshal_inputs(

  
    
      int led
    
  
  
    ,
  

  
    
      int level
    
  
  


) {

  
  unsigned _camkes_length_986 = 0;

  
  void * _camkes_buffer_base_987 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_986 + sizeof(_camkes_method_index_985) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "vm",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for set_led",
        .current_length = _camkes_length_986,
        .target_length = _camkes_length_986 + sizeof(_camkes_method_index_985),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_987, & _camkes_method_index_985, sizeof(_camkes_method_index_985));
    _camkes_length_986 += sizeof(_camkes_method_index_985);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_986 = set_led_marshal_inputs_led(_camkes_length_986,
      
      led
    );
    if (unlikely(_camkes_length_986 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_986 = set_led_marshal_inputs_level(_camkes_length_986,
      
      level
    );
    if (unlikely(_camkes_length_986 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_986 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for set_led");

  return _camkes_length_986;
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
set_led_unmarshal_outputs(

unsigned _camkes_size_989




) {

  
  unsigned _camkes_length_991 UNUSED = 0;

  
  void * _camkes_buffer_base_992 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_991, sizeof(seL4_Word)) != _camkes_size_989, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "vm",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_led",
        .length = _camkes_size_989,
        .current_index = _camkes_length_991,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

pwm_set_led(

  
    
      int
    
    led
  
  
    ,
  

  
    
      int
    
    level
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_996 = /*
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


     
   

set_led_marshal_inputs(

  
  led
  
    ,
  

  
  level
  

);
    if (unlikely(_camkes_length_996 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_997 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_996, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_997 = seL4_Call(14, _camkes_info_997);

    
    unsigned _camkes_size_998 =
    
        seL4_MessageInfo_get_length(_camkes_info_997) * sizeof(seL4_Word);
        assert(_camkes_size_998 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_999 = /*
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


      
          
   

                                               
                                

set_led_unmarshal_outputs(
_camkes_size_998



);
    if (unlikely(_camkes_error_999 != 0)) {
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


    
    static int vmsig_data_from_1
    
    UNUSED;

    
    static int vmsig_data_from_2
    
    UNUSED;

    
    static int vmsig_data_from_3
    
    UNUSED;


static int *

get_vmsig_data_from(void) UNUSED;
static int *

get_vmsig_data_from(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & vmsig_data_from_1;
                
        
            case 2:
                
                    return & vmsig_data_from_2;
                
        
            case 3:
                
                    return & vmsig_data_from_3;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned vmsig_marshal_inputs_data(unsigned _camkes_offset_1000,
    
      
        int data
      
    
    ) {

    
    void * _camkes_buffer_base_1001 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_1002 = TLS_PTR(vmsig_data_from, data);
        * _camkes_ptr_1002 = data;
      
    

    
      ERR_IF(_camkes_offset_1000 + sizeof(* _camkes_ptr_1002) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "vm",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling data in vmsig",
          .current_length = _camkes_offset_1000,
          .target_length = _camkes_offset_1000 + sizeof(* _camkes_ptr_1002),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_1001 + _camkes_offset_1000, _camkes_ptr_1002, sizeof(* _camkes_ptr_1002));
      _camkes_offset_1000 += sizeof(* _camkes_ptr_1002);
    

    return _camkes_offset_1000;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_1006 = 2;


static unsigned vmsig_marshal_inputs(

  
    
      int data
    
  
  


) {

  
  unsigned _camkes_length_1007 = 0;

  
  void * _camkes_buffer_base_1008 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_1007 + sizeof(_camkes_method_index_1006) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "vm",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for vmsig",
        .current_length = _camkes_length_1007,
        .target_length = _camkes_length_1007 + sizeof(_camkes_method_index_1006),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_1008, & _camkes_method_index_1006, sizeof(_camkes_method_index_1006));
    _camkes_length_1007 += sizeof(_camkes_method_index_1006);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_1007 = vmsig_marshal_inputs_data(_camkes_length_1007,
      
      data
    );
    if (unlikely(_camkes_length_1007 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_1007 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for vmsig");

  return _camkes_length_1007;
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
vmsig_unmarshal_outputs(

unsigned _camkes_size_1010




) {

  
  unsigned _camkes_length_1012 UNUSED = 0;

  
  void * _camkes_buffer_base_1013 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_1012, sizeof(seL4_Word)) != _camkes_size_1010, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "vm",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for vmsig",
        .length = _camkes_size_1010,
        .current_index = _camkes_length_1012,
      }), ({
        
        
        return -1;
      }));
  

  return 0;
}





    void

pwm_vmsig(

  
    
      int
    
    data
  
  


) {

    

    
    

    
    
    

    
      
      /* Save any pending reply cap as we'll eventually call seL4_Call which
       * could overwrite it. Note that we do this here before marshalling
       * parameters to ensure we don't inadvertently overwrite any marshalled
       * data with this call.
       */
        
            camkes_protect_reply_cap();
        
    

    /* Marshal all the parameters */
    
    
    unsigned _camkes_length_1017 = /*
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


     
   

vmsig_marshal_inputs(

  
  data
  

);
    if (unlikely(_camkes_length_1017 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_1018 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_1017, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_1018 = seL4_Call(14, _camkes_info_1018);

    
    unsigned _camkes_size_1019 =
    
        seL4_MessageInfo_get_length(_camkes_info_1018) * sizeof(seL4_Word);
        assert(_camkes_size_1019 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_1020 = /*
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


      
          
   

                                               
                                

vmsig_unmarshal_outputs(
_camkes_size_1019



);
    if (unlikely(_camkes_error_1020 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
    }

    

    
}
