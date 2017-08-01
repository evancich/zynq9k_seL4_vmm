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










  
  
  

  
  
  






  
  
  
  

  
  
  
  






  



#define _camkes_BUFFER_BASE_835 ((void*)&seL4_GetIPCBuffer()->msg[0])






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







  
  
    
      
  
  
  static void _camkes__837(void) NO_INLINE UNUSED
    WARNING("typedef double looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__837(void) {
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

      /* trigger a compile-time warning: */ _camkes__837(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  
  static void _camkes__838(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__838(void) {
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

      /* trigger a compile-time warning: */ _camkes__838(),
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





  
  
    
      
  
  static double _camkes__839;
  pwm_inf_set_motors_fl_array_typedef_check(_camkes__839);

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  static int _camkes__840;
  pwm_inf_set_led_led_array_typedef_check(_camkes__840);

      
    
  
    
  

  
  
    
  

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

    
    static double set_motors_fl_from_4
    
    UNUSED;

    
    static double set_motors_fl_from_5
    
    UNUSED;

    
    static double set_motors_fl_from_6
    
    UNUSED;

    
    static double set_motors_fl_from_7
    
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
                
        
            case 4:
                
                    return & set_motors_fl_from_4;
                
        
            case 5:
                
                    return & set_motors_fl_from_5;
                
        
            case 6:
                
                    return & set_motors_fl_from_6;
                
        
            case 7:
                
                    return & set_motors_fl_from_7;
                
        
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

    
    static double set_motors_fr_from_4
    
    UNUSED;

    
    static double set_motors_fr_from_5
    
    UNUSED;

    
    static double set_motors_fr_from_6
    
    UNUSED;

    
    static double set_motors_fr_from_7
    
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
                
        
            case 4:
                
                    return & set_motors_fr_from_4;
                
        
            case 5:
                
                    return & set_motors_fr_from_5;
                
        
            case 6:
                
                    return & set_motors_fr_from_6;
                
        
            case 7:
                
                    return & set_motors_fr_from_7;
                
        
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

    
    static double set_motors_bl_from_4
    
    UNUSED;

    
    static double set_motors_bl_from_5
    
    UNUSED;

    
    static double set_motors_bl_from_6
    
    UNUSED;

    
    static double set_motors_bl_from_7
    
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
                
        
            case 4:
                
                    return & set_motors_bl_from_4;
                
        
            case 5:
                
                    return & set_motors_bl_from_5;
                
        
            case 6:
                
                    return & set_motors_bl_from_6;
                
        
            case 7:
                
                    return & set_motors_bl_from_7;
                
        
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

    
    static double set_motors_br_from_4
    
    UNUSED;

    
    static double set_motors_br_from_5
    
    UNUSED;

    
    static double set_motors_br_from_6
    
    UNUSED;

    
    static double set_motors_br_from_7
    
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
                
        
            case 4:
                
                    return & set_motors_br_from_4;
                
        
            case 5:
                
                    return & set_motors_br_from_5;
                
        
            case 6:
                
                    return & set_motors_br_from_6;
                
        
            case 7:
                
                    return & set_motors_br_from_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned set_motors_marshal_inputs_fl(unsigned _camkes_offset_841,
    
      
        double fl
      
    
    ) {

    
    void * _camkes_buffer_base_842 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_843 = TLS_PTR(set_motors_fl_from, fl);
        * _camkes_ptr_843 = fl;
      
    

    
      ERR_IF(_camkes_offset_841 + sizeof(* _camkes_ptr_843) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling fl in set_motors",
          .current_length = _camkes_offset_841,
          .target_length = _camkes_offset_841 + sizeof(* _camkes_ptr_843),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_842 + _camkes_offset_841, _camkes_ptr_843, sizeof(* _camkes_ptr_843));
      _camkes_offset_841 += sizeof(* _camkes_ptr_843);
    

    return _camkes_offset_841;
  }

  
  static unsigned set_motors_marshal_inputs_fr(unsigned _camkes_offset_847,
    
      
        double fr
      
    
    ) {

    
    void * _camkes_buffer_base_848 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_849 = TLS_PTR(set_motors_fr_from, fr);
        * _camkes_ptr_849 = fr;
      
    

    
      ERR_IF(_camkes_offset_847 + sizeof(* _camkes_ptr_849) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling fr in set_motors",
          .current_length = _camkes_offset_847,
          .target_length = _camkes_offset_847 + sizeof(* _camkes_ptr_849),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_848 + _camkes_offset_847, _camkes_ptr_849, sizeof(* _camkes_ptr_849));
      _camkes_offset_847 += sizeof(* _camkes_ptr_849);
    

    return _camkes_offset_847;
  }

  
  static unsigned set_motors_marshal_inputs_bl(unsigned _camkes_offset_853,
    
      
        double bl
      
    
    ) {

    
    void * _camkes_buffer_base_854 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_855 = TLS_PTR(set_motors_bl_from, bl);
        * _camkes_ptr_855 = bl;
      
    

    
      ERR_IF(_camkes_offset_853 + sizeof(* _camkes_ptr_855) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling bl in set_motors",
          .current_length = _camkes_offset_853,
          .target_length = _camkes_offset_853 + sizeof(* _camkes_ptr_855),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_854 + _camkes_offset_853, _camkes_ptr_855, sizeof(* _camkes_ptr_855));
      _camkes_offset_853 += sizeof(* _camkes_ptr_855);
    

    return _camkes_offset_853;
  }

  
  static unsigned set_motors_marshal_inputs_br(unsigned _camkes_offset_859,
    
      
        double br
      
    
    ) {

    
    void * _camkes_buffer_base_860 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        double * _camkes_ptr_861 = TLS_PTR(set_motors_br_from, br);
        * _camkes_ptr_861 = br;
      
    

    
      ERR_IF(_camkes_offset_859 + sizeof(* _camkes_ptr_861) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling br in set_motors",
          .current_length = _camkes_offset_859,
          .target_length = _camkes_offset_859 + sizeof(* _camkes_ptr_861),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_860 + _camkes_offset_859, _camkes_ptr_861, sizeof(* _camkes_ptr_861));
      _camkes_offset_859 += sizeof(* _camkes_ptr_861);
    

    return _camkes_offset_859;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_865 = 0;


static unsigned set_motors_marshal_inputs(

  
    
      double fl
    
  
  
    ,
  

  
    
      double fr
    
  
  
    ,
  

  
    
      double bl
    
  
  
    ,
  

  
    
      double br
    
  
  


) {

  
  unsigned _camkes_length_866 = 0;

  
  void * _camkes_buffer_base_867 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_866 + sizeof(_camkes_method_index_865) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for set_motors",
        .current_length = _camkes_length_866,
        .target_length = _camkes_length_866 + sizeof(_camkes_method_index_865),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_867, & _camkes_method_index_865, sizeof(_camkes_method_index_865));
    _camkes_length_866 += sizeof(_camkes_method_index_865);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_866 = set_motors_marshal_inputs_fl(_camkes_length_866,
      
      fl
    );
    if (unlikely(_camkes_length_866 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_866 = set_motors_marshal_inputs_fr(_camkes_length_866,
      
      fr
    );
    if (unlikely(_camkes_length_866 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_866 = set_motors_marshal_inputs_bl(_camkes_length_866,
      
      bl
    );
    if (unlikely(_camkes_length_866 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_866 = set_motors_marshal_inputs_br(_camkes_length_866,
      
      br
    );
    if (unlikely(_camkes_length_866 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_866 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for set_motors");

  return _camkes_length_866;
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

unsigned _camkes_size_869




) {

  
  unsigned _camkes_length_871 UNUSED = 0;

  
  void * _camkes_buffer_base_872 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_871, sizeof(seL4_Word)) != _camkes_size_869, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_motors",
        .length = _camkes_size_869,
        .current_index = _camkes_length_871,
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
    
    
    unsigned _camkes_length_876 = /*
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
    if (unlikely(_camkes_length_876 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_877 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_876, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_877 = seL4_Call(17, _camkes_info_877);

    
    unsigned _camkes_size_878 =
    
        seL4_MessageInfo_get_length(_camkes_info_877) * sizeof(seL4_Word);
        assert(_camkes_size_878 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_879 = /*
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
_camkes_size_878



);
    if (unlikely(_camkes_error_879 != 0)) {
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

    
    static int set_led_led_from_4
    
    UNUSED;

    
    static int set_led_led_from_5
    
    UNUSED;

    
    static int set_led_led_from_6
    
    UNUSED;

    
    static int set_led_led_from_7
    
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
                
        
            case 4:
                
                    return & set_led_led_from_4;
                
        
            case 5:
                
                    return & set_led_led_from_5;
                
        
            case 6:
                
                    return & set_led_led_from_6;
                
        
            case 7:
                
                    return & set_led_led_from_7;
                
        
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

    
    static int set_led_level_from_4
    
    UNUSED;

    
    static int set_led_level_from_5
    
    UNUSED;

    
    static int set_led_level_from_6
    
    UNUSED;

    
    static int set_led_level_from_7
    
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
                
        
            case 4:
                
                    return & set_led_level_from_4;
                
        
            case 5:
                
                    return & set_led_level_from_5;
                
        
            case 6:
                
                    return & set_led_level_from_6;
                
        
            case 7:
                
                    return & set_led_level_from_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned set_led_marshal_inputs_led(unsigned _camkes_offset_880,
    
      
        int led
      
    
    ) {

    
    void * _camkes_buffer_base_881 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_882 = TLS_PTR(set_led_led_from, led);
        * _camkes_ptr_882 = led;
      
    

    
      ERR_IF(_camkes_offset_880 + sizeof(* _camkes_ptr_882) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling led in set_led",
          .current_length = _camkes_offset_880,
          .target_length = _camkes_offset_880 + sizeof(* _camkes_ptr_882),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_881 + _camkes_offset_880, _camkes_ptr_882, sizeof(* _camkes_ptr_882));
      _camkes_offset_880 += sizeof(* _camkes_ptr_882);
    

    return _camkes_offset_880;
  }

  
  static unsigned set_led_marshal_inputs_level(unsigned _camkes_offset_886,
    
      
        int level
      
    
    ) {

    
    void * _camkes_buffer_base_887 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_888 = TLS_PTR(set_led_level_from, level);
        * _camkes_ptr_888 = level;
      
    

    
      ERR_IF(_camkes_offset_886 + sizeof(* _camkes_ptr_888) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling level in set_led",
          .current_length = _camkes_offset_886,
          .target_length = _camkes_offset_886 + sizeof(* _camkes_ptr_888),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_887 + _camkes_offset_886, _camkes_ptr_888, sizeof(* _camkes_ptr_888));
      _camkes_offset_886 += sizeof(* _camkes_ptr_888);
    

    return _camkes_offset_886;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_892 = 1;


static unsigned set_led_marshal_inputs(

  
    
      int led
    
  
  
    ,
  

  
    
      int level
    
  
  


) {

  
  unsigned _camkes_length_893 = 0;

  
  void * _camkes_buffer_base_894 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_893 + sizeof(_camkes_method_index_892) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for set_led",
        .current_length = _camkes_length_893,
        .target_length = _camkes_length_893 + sizeof(_camkes_method_index_892),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_894, & _camkes_method_index_892, sizeof(_camkes_method_index_892));
    _camkes_length_893 += sizeof(_camkes_method_index_892);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_893 = set_led_marshal_inputs_led(_camkes_length_893,
      
      led
    );
    if (unlikely(_camkes_length_893 == UINT_MAX)) {
      return UINT_MAX;
    }
  
    
    _camkes_length_893 = set_led_marshal_inputs_level(_camkes_length_893,
      
      level
    );
    if (unlikely(_camkes_length_893 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_893 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for set_led");

  return _camkes_length_893;
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

unsigned _camkes_size_896




) {

  
  unsigned _camkes_length_898 UNUSED = 0;

  
  void * _camkes_buffer_base_899 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_898, sizeof(seL4_Word)) != _camkes_size_896, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_led",
        .length = _camkes_size_896,
        .current_index = _camkes_length_898,
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
    
    
    unsigned _camkes_length_903 = /*
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
    if (unlikely(_camkes_length_903 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_904 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_903, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_904 = seL4_Call(17, _camkes_info_904);

    
    unsigned _camkes_size_905 =
    
        seL4_MessageInfo_get_length(_camkes_info_904) * sizeof(seL4_Word);
        assert(_camkes_size_905 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_906 = /*
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
_camkes_size_905



);
    if (unlikely(_camkes_error_906 != 0)) {
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

    
    static int vmsig_data_from_4
    
    UNUSED;

    
    static int vmsig_data_from_5
    
    UNUSED;

    
    static int vmsig_data_from_6
    
    UNUSED;

    
    static int vmsig_data_from_7
    
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
                
        
            case 4:
                
                    return & vmsig_data_from_4;
                
        
            case 5:
                
                    return & vmsig_data_from_5;
                
        
            case 6:
                
                    return & vmsig_data_from_6;
                
        
            case 7:
                
                    return & vmsig_data_from_7;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
    
  




  
  static unsigned vmsig_marshal_inputs_data(unsigned _camkes_offset_907,
    
      
        int data
      
    
    ) {

    
    void * _camkes_buffer_base_908 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Construct parameter pointers. We do this here to consolidate where we
     * are taking the address of local variables. In future, we need to avoid
     * doing this for verification.
     */
    
    
    
    
    
      
        int * _camkes_ptr_909 = TLS_PTR(vmsig_data_from, data);
        * _camkes_ptr_909 = data;
      
    

    
      ERR_IF(_camkes_offset_907 + sizeof(* _camkes_ptr_909) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "pilot_obj",
          .interface = "pwm",
          .description = "buffer exceeded while marshalling data in vmsig",
          .current_length = _camkes_offset_907,
          .target_length = _camkes_offset_907 + sizeof(* _camkes_ptr_909),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_908 + _camkes_offset_907, _camkes_ptr_909, sizeof(* _camkes_ptr_909));
      _camkes_offset_907 += sizeof(* _camkes_ptr_909);
    

    return _camkes_offset_907;
  }



  
  static const
  
    uint8_t
  
  _camkes_method_index_913 = 2;


static unsigned vmsig_marshal_inputs(

  
    
      int data
    
  
  


) {

  
  unsigned _camkes_length_914 = 0;

  
  void * _camkes_buffer_base_915 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Marshal the method index. */
    ERR_IF(_camkes_length_914 + sizeof(_camkes_method_index_913) > (seL4_MsgMaxLength * sizeof(seL4_Word)), pwm_error_handler, ((camkes_error_t){
        .type = CE_BUFFER_LENGTH_EXCEEDED,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "buffer exceeded while marshalling method index for vmsig",
        .current_length = _camkes_length_914,
        .target_length = _camkes_length_914 + sizeof(_camkes_method_index_913),
      }), ({
        return UINT_MAX;
      }));
    memcpy(_camkes_buffer_base_915, & _camkes_method_index_913, sizeof(_camkes_method_index_913));
    _camkes_length_914 += sizeof(_camkes_method_index_913);
  

  /* Marshal the parameters. */
  
    
    _camkes_length_914 = vmsig_marshal_inputs_data(_camkes_length_914,
      
      data
    );
    if (unlikely(_camkes_length_914 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  assert(_camkes_length_914 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling inputs for vmsig");

  return _camkes_length_914;
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

unsigned _camkes_size_917




) {

  
  unsigned _camkes_length_919 UNUSED = 0;

  
  void * _camkes_buffer_base_920 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  

  /* Unmarshal the parameters. */
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_919, sizeof(seL4_Word)) != _camkes_size_917, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pilot_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for vmsig",
        .length = _camkes_size_917,
        .current_index = _camkes_length_919,
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
    
    
    unsigned _camkes_length_924 = /*
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
    if (unlikely(_camkes_length_924 == UINT_MAX)) {
        /* Error in marshalling; bail out. */
        
            return;
        
    }

    /* Call the endpoint */
    
    seL4_MessageInfo_t _camkes_info_925 = seL4_MessageInfo_new(0, 0, 0,
        
                ROUND_UP_UNSAFE(_camkes_length_924, sizeof(seL4_Word)) / sizeof(seL4_Word)
        
        );
    _camkes_info_925 = seL4_Call(17, _camkes_info_925);

    
    unsigned _camkes_size_926 =
    
        seL4_MessageInfo_get_length(_camkes_info_925) * sizeof(seL4_Word);
        assert(_camkes_size_926 <= seL4_MsgMaxLength * sizeof(seL4_Word));
    

    /* Unmarshal the response */
    
    
    
    int _camkes_error_927 = /*
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
_camkes_size_926



);
    if (unlikely(_camkes_error_927 != 0)) {
        /* Error in unmarshalling; bail out. */
        
            return;
        
    }

    

    
}
