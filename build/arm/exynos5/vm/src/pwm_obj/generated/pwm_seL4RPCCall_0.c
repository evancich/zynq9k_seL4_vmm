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





#define _camkes_BUFFER_BASE_1021 ((void*)&seL4_GetIPCBuffer()->msg[0])






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


    extern
    
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


      
     
          
      
        
          
    


  
  
  static unsigned set_motors_unmarshal_inputs_fl(unsigned _camkes_size_1022, unsigned _camkes_offset_1023,
    
      double * fl
    
  ) {

    
    void * _camkes_buffer_base_1024 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1023 + sizeof(* fl) > _camkes_size_1022, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling fl in set_motors",
          .length = _camkes_size_1022,
          .current_index = _camkes_offset_1023 + sizeof(* fl),
        }), ({
          return UINT_MAX;
        }));
      memcpy(fl, _camkes_buffer_base_1024 + _camkes_offset_1023, sizeof(* fl));
      _camkes_offset_1023 += sizeof(* fl);
    

    return _camkes_offset_1023;
  }

  
  
  static unsigned set_motors_unmarshal_inputs_fr(unsigned _camkes_size_1025, unsigned _camkes_offset_1026,
    
      double * fr
    
  ) {

    
    void * _camkes_buffer_base_1027 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1026 + sizeof(* fr) > _camkes_size_1025, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling fr in set_motors",
          .length = _camkes_size_1025,
          .current_index = _camkes_offset_1026 + sizeof(* fr),
        }), ({
          return UINT_MAX;
        }));
      memcpy(fr, _camkes_buffer_base_1027 + _camkes_offset_1026, sizeof(* fr));
      _camkes_offset_1026 += sizeof(* fr);
    

    return _camkes_offset_1026;
  }

  
  
  static unsigned set_motors_unmarshal_inputs_bl(unsigned _camkes_size_1028, unsigned _camkes_offset_1029,
    
      double * bl
    
  ) {

    
    void * _camkes_buffer_base_1030 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1029 + sizeof(* bl) > _camkes_size_1028, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling bl in set_motors",
          .length = _camkes_size_1028,
          .current_index = _camkes_offset_1029 + sizeof(* bl),
        }), ({
          return UINT_MAX;
        }));
      memcpy(bl, _camkes_buffer_base_1030 + _camkes_offset_1029, sizeof(* bl));
      _camkes_offset_1029 += sizeof(* bl);
    

    return _camkes_offset_1029;
  }

  
  
  static unsigned set_motors_unmarshal_inputs_br(unsigned _camkes_size_1031, unsigned _camkes_offset_1032,
    
      double * br
    
  ) {

    
    void * _camkes_buffer_base_1033 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1032 + sizeof(* br) > _camkes_size_1031, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling br in set_motors",
          .length = _camkes_size_1031,
          .current_index = _camkes_offset_1032 + sizeof(* br),
        }), ({
          return UINT_MAX;
        }));
      memcpy(br, _camkes_buffer_base_1033 + _camkes_offset_1032, sizeof(* br));
      _camkes_offset_1032 += sizeof(* br);
    

    return _camkes_offset_1032;
  }


static int set_motors_unmarshal_inputs(

unsigned _camkes_size_1034

  ,


  
    double * fl
  
  
    ,
  

  
    double * fr
  
  
    ,
  

  
    double * bl
  
  
    ,
  

  
    double * br
  
  

) {

  
  unsigned _camkes_length_1035 UNUSED = 0;

  
  void * _camkes_buffer_base_1036 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_1035 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_1035 = set_motors_unmarshal_inputs_fl(_camkes_size_1034, _camkes_length_1035,
      
      fl
    );
    if (unlikely(_camkes_length_1035 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_1035 = set_motors_unmarshal_inputs_fr(_camkes_size_1034, _camkes_length_1035,
      
      fr
    );
    if (unlikely(_camkes_length_1035 == UINT_MAX)) {
      
        
      
      return -1;
    }
  
    
    _camkes_length_1035 = set_motors_unmarshal_inputs_bl(_camkes_size_1034, _camkes_length_1035,
      
      bl
    );
    if (unlikely(_camkes_length_1035 == UINT_MAX)) {
      
        
      
        
      
      return -1;
    }
  
    
    _camkes_length_1035 = set_motors_unmarshal_inputs_br(_camkes_size_1034, _camkes_length_1035,
      
      br
    );
    if (unlikely(_camkes_length_1035 == UINT_MAX)) {
      
        
      
        
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_1035, sizeof(seL4_Word)) != _camkes_size_1034, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pwm_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_motors",
        .length = _camkes_size_1034,
        .current_index = _camkes_length_1035,
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


      
     
          
      
        
          
   

                                               
 





static unsigned set_motors_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_1039 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_1039 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for set_motors");

  return _camkes_length_1039;
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


    
    static double set_motors_fl_to_1
    
    UNUSED;

    
    static double set_motors_fl_to_2
    
    UNUSED;

    
    static double set_motors_fl_to_3
    
    UNUSED;

    
    static double set_motors_fl_to_4
    
    UNUSED;

    
    static double set_motors_fl_to_5
    
    UNUSED;


static double *

get_set_motors_fl_to(void) UNUSED;
static double *

get_set_motors_fl_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_fl_to_1;
                
        
            case 2:
                
                    return & set_motors_fl_to_2;
                
        
            case 3:
                
                    return & set_motors_fl_to_3;
                
        
            case 4:
                
                    return & set_motors_fl_to_4;
                
        
            case 5:
                
                    return & set_motors_fl_to_5;
                
        
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


    
    static double set_motors_fr_to_1
    
    UNUSED;

    
    static double set_motors_fr_to_2
    
    UNUSED;

    
    static double set_motors_fr_to_3
    
    UNUSED;

    
    static double set_motors_fr_to_4
    
    UNUSED;

    
    static double set_motors_fr_to_5
    
    UNUSED;


static double *

get_set_motors_fr_to(void) UNUSED;
static double *

get_set_motors_fr_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_fr_to_1;
                
        
            case 2:
                
                    return & set_motors_fr_to_2;
                
        
            case 3:
                
                    return & set_motors_fr_to_3;
                
        
            case 4:
                
                    return & set_motors_fr_to_4;
                
        
            case 5:
                
                    return & set_motors_fr_to_5;
                
        
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


    
    static double set_motors_bl_to_1
    
    UNUSED;

    
    static double set_motors_bl_to_2
    
    UNUSED;

    
    static double set_motors_bl_to_3
    
    UNUSED;

    
    static double set_motors_bl_to_4
    
    UNUSED;

    
    static double set_motors_bl_to_5
    
    UNUSED;


static double *

get_set_motors_bl_to(void) UNUSED;
static double *

get_set_motors_bl_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_bl_to_1;
                
        
            case 2:
                
                    return & set_motors_bl_to_2;
                
        
            case 3:
                
                    return & set_motors_bl_to_3;
                
        
            case 4:
                
                    return & set_motors_bl_to_4;
                
        
            case 5:
                
                    return & set_motors_bl_to_5;
                
        
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


    
    static double set_motors_br_to_1
    
    UNUSED;

    
    static double set_motors_br_to_2
    
    UNUSED;

    
    static double set_motors_br_to_3
    
    UNUSED;

    
    static double set_motors_br_to_4
    
    UNUSED;

    
    static double set_motors_br_to_5
    
    UNUSED;


static double *

get_set_motors_br_to(void) UNUSED;
static double *

get_set_motors_br_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_motors_br_to_1;
                
        
            case 2:
                
                    return & set_motors_br_to_2;
                
        
            case 3:
                
                    return & set_motors_br_to_3;
                
        
            case 4:
                
                    return & set_motors_br_to_4;
                
        
            case 5:
                
                    return & set_motors_br_to_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    pwm_set_led(
      
        
          
            int
          
          led
        
        
          ,
        
      
        
          
            int
          
          level
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned set_led_unmarshal_inputs_led(unsigned _camkes_size_1040, unsigned _camkes_offset_1041,
    
      int * led
    
  ) {

    
    void * _camkes_buffer_base_1042 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1041 + sizeof(* led) > _camkes_size_1040, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling led in set_led",
          .length = _camkes_size_1040,
          .current_index = _camkes_offset_1041 + sizeof(* led),
        }), ({
          return UINT_MAX;
        }));
      memcpy(led, _camkes_buffer_base_1042 + _camkes_offset_1041, sizeof(* led));
      _camkes_offset_1041 += sizeof(* led);
    

    return _camkes_offset_1041;
  }

  
  
  static unsigned set_led_unmarshal_inputs_level(unsigned _camkes_size_1043, unsigned _camkes_offset_1044,
    
      int * level
    
  ) {

    
    void * _camkes_buffer_base_1045 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1044 + sizeof(* level) > _camkes_size_1043, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling level in set_led",
          .length = _camkes_size_1043,
          .current_index = _camkes_offset_1044 + sizeof(* level),
        }), ({
          return UINT_MAX;
        }));
      memcpy(level, _camkes_buffer_base_1045 + _camkes_offset_1044, sizeof(* level));
      _camkes_offset_1044 += sizeof(* level);
    

    return _camkes_offset_1044;
  }


static int set_led_unmarshal_inputs(

unsigned _camkes_size_1046

  ,


  
    int * led
  
  
    ,
  

  
    int * level
  
  

) {

  
  unsigned _camkes_length_1047 UNUSED = 0;

  
  void * _camkes_buffer_base_1048 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_1047 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_1047 = set_led_unmarshal_inputs_led(_camkes_size_1046, _camkes_length_1047,
      
      led
    );
    if (unlikely(_camkes_length_1047 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_1047 = set_led_unmarshal_inputs_level(_camkes_size_1046, _camkes_length_1047,
      
      level
    );
    if (unlikely(_camkes_length_1047 == UINT_MAX)) {
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_1047, sizeof(seL4_Word)) != _camkes_size_1046, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pwm_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for set_led",
        .length = _camkes_size_1046,
        .current_index = _camkes_length_1047,
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


      
     
          
      
        
          
   

                                               
 





static unsigned set_led_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_1051 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_1051 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for set_led");

  return _camkes_length_1051;
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


    
    static int set_led_led_to_1
    
    UNUSED;

    
    static int set_led_led_to_2
    
    UNUSED;

    
    static int set_led_led_to_3
    
    UNUSED;

    
    static int set_led_led_to_4
    
    UNUSED;

    
    static int set_led_led_to_5
    
    UNUSED;


static int *

get_set_led_led_to(void) UNUSED;
static int *

get_set_led_led_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_led_led_to_1;
                
        
            case 2:
                
                    return & set_led_led_to_2;
                
        
            case 3:
                
                    return & set_led_led_to_3;
                
        
            case 4:
                
                    return & set_led_led_to_4;
                
        
            case 5:
                
                    return & set_led_led_to_5;
                
        
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


    
    static int set_led_level_to_1
    
    UNUSED;

    
    static int set_led_level_to_2
    
    UNUSED;

    
    static int set_led_level_to_3
    
    UNUSED;

    
    static int set_led_level_to_4
    
    UNUSED;

    
    static int set_led_level_to_5
    
    UNUSED;


static int *

get_set_led_level_to(void) UNUSED;
static int *

get_set_led_level_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & set_led_level_to_1;
                
        
            case 2:
                
                    return & set_led_level_to_2;
                
        
            case 3:
                
                    return & set_led_level_to_3;
                
        
            case 4:
                
                    return & set_led_level_to_4;
                
        
            case 5:
                
                    return & set_led_level_to_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    pwm_vmsig(
      
        
          
            int
          
          data
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned vmsig_unmarshal_inputs_data(unsigned _camkes_size_1052, unsigned _camkes_offset_1053,
    
      int * data
    
  ) {

    
    void * _camkes_buffer_base_1054 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_1053 + sizeof(* data) > _camkes_size_1052, pwm_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "pwm_obj",
          .interface = "pwm",
          .description = "truncated message encountered while unmarshalling data in vmsig",
          .length = _camkes_size_1052,
          .current_index = _camkes_offset_1053 + sizeof(* data),
        }), ({
          return UINT_MAX;
        }));
      memcpy(data, _camkes_buffer_base_1054 + _camkes_offset_1053, sizeof(* data));
      _camkes_offset_1053 += sizeof(* data);
    

    return _camkes_offset_1053;
  }


static int vmsig_unmarshal_inputs(

unsigned _camkes_size_1055

  ,


  
    int * data
  
  

) {

  
  unsigned _camkes_length_1056 UNUSED = 0;

  
  void * _camkes_buffer_base_1057 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_1056 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_1056 = vmsig_unmarshal_inputs_data(_camkes_size_1055, _camkes_length_1056,
      
      data
    );
    if (unlikely(_camkes_length_1056 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_1056, sizeof(seL4_Word)) != _camkes_size_1055, pwm_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "pwm_obj",
        .interface = "pwm",
        .description = "excess trailing bytes after unmarshalling parameters for vmsig",
        .length = _camkes_size_1055,
        .current_index = _camkes_length_1056,
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


      
     
          
      
        
          
   

                                               
 





static unsigned vmsig_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_1060 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_1060 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for vmsig");

  return _camkes_length_1060;
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


    
    static int vmsig_data_to_1
    
    UNUSED;

    
    static int vmsig_data_to_2
    
    UNUSED;

    
    static int vmsig_data_to_3
    
    UNUSED;

    
    static int vmsig_data_to_4
    
    UNUSED;

    
    static int vmsig_data_to_5
    
    UNUSED;


static int *

get_vmsig_data_to(void) UNUSED;
static int *

get_vmsig_data_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & vmsig_data_to_1;
                
        
            case 2:
                
                    return & vmsig_data_to_2;
                
        
            case 3:
                
                    return & vmsig_data_to_3;
                
        
            case 4:
                
                    return & vmsig_data_to_4;
                
        
            case 5:
                
                    return & vmsig_data_to_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  







static seL4_Word pwm_badge = 0;

seL4_Word pwm_get_sender_id(void) {
    return pwm_badge;
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


    
    static uint8_t _camkes_call_tls_var_to_1061_1
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_1061_2
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_1061_3
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_1061_4
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_1061_5
    
    UNUSED;


static uint8_t *

get__camkes_call_tls_var_to_1061(void) UNUSED;
static uint8_t *

get__camkes_call_tls_var_to_1061(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_1061_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_1061_2;
                
        
            case 3:
                
                    return & _camkes_call_tls_var_to_1061_3;
                
        
            case 4:
                
                    return & _camkes_call_tls_var_to_1061_4;
                
        
            case 5:
                
                    return & _camkes_call_tls_var_to_1061_5;
                
        
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







  
  
    
      
  
  
  static void _camkes__1062(void) NO_INLINE UNUSED
    WARNING("typedef double looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__1062(void) {
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

      /* trigger a compile-time warning: */ _camkes__1062(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  
  static void _camkes__1063(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__1063(void) {
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

      /* trigger a compile-time warning: */ _camkes__1063(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  

  
  
    
  






int

    pwm__run(void)

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





  
  
    
      
  
  static double _camkes__1064;
  pwm_inf_set_motors_fl_array_typedef_check(_camkes__1064);

      
    
  
    
  
    
  
    
  

  
  
    
      
  
  static int _camkes__1065;
  pwm_inf_set_led_led_array_typedef_check(_camkes__1065);

      
    
  
    
  

  
  
    
  


    
        
            /* We're going to need a CNode cap in order to save our pending reply
             * caps in the future.
             */
            
            
            camkes_get_tls()->cnode_cap = 28;
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
    

    while (1) {

        
        void * _camkes_buffer_1067 UNUSED = (void*)_camkes_BUFFER_BASE_1021;

        
        unsigned _camkes_size_1068 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_1066) * sizeof(seL4_Word);
            assert(_camkes_size_1068 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          uint8_t _camkes_call_1069 UNUSED;
          uint8_t * _camkes_call_ptr_1070 = TLS_PTR(_camkes_call_tls_var_to_1061, _camkes_call_1069);
        
        
            ERR_IF(sizeof(* _camkes_call_ptr_1070) > _camkes_size_1068, pwm_error_handler, ((camkes_error_t){
                    .type = CE_MALFORMED_RPC_PAYLOAD,
                    .instance = "pwm_obj",
                    .interface = "pwm",
                    .description = "truncated message encountered while unmarshalling method index in pwm",
                    .length = _camkes_size_1068,
                    .current_index = sizeof(* _camkes_call_ptr_1070),
                }), ({
                    _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                    continue;
                }));

            memcpy(_camkes_call_ptr_1070, _camkes_buffer_1067, sizeof(* _camkes_call_ptr_1070));
        

        switch (* _camkes_call_ptr_1070) {
            
                case 0: { /* set_motors */
                    
                    

                        
                            double fl UNUSED;
                            double * fl_ptr = TLS_PTR(set_motors_fl_to, fl);
                        
                    

                        
                            double fr UNUSED;
                            double * fr_ptr = TLS_PTR(set_motors_fr_to, fr);
                        
                    

                        
                            double bl UNUSED;
                            double * bl_ptr = TLS_PTR(set_motors_bl_to, bl);
                        
                    

                        
                            double br UNUSED;
                            double * br_ptr = TLS_PTR(set_motors_br_to, br);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_1071 = /*
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


     
         
   

set_motors_unmarshal_inputs(
_camkes_size_1068

  ,


  
  fl_ptr
  
    ,
  

  
  fr_ptr
  
    ,
  

  
  bl_ptr
  
    ,
  

  
  br_ptr
  

);
                    if (unlikely(_camkes_error_1071 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__1072 UNUSED = camkes_declare_reply_cap(29);
                        ERR_IF(_camkes__1072 != 0, pwm_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "pwm_obj",
                                .interface = "pwm",
                                .description = "failed to declare reply cap in set_motors",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    pwm_set_motors(
                        
                            
                            
                                *
                            
                            fl_ptr
                            ,
                        
                            
                            
                                *
                            
                            fr_ptr
                            ,
                        
                            
                            
                                *
                            
                            bl_ptr
                            ,
                        
                            
                            
                                *
                            
                            br_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__1077 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_1078 = /*
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


      
   

                                               
                                

set_motors_marshal_outputs(


);

                    
                    
                    
                      
                    
                      
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_1078 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    _camkes_info_1066 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_1078, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__1077 != NULL);
                        if (_camkes__1077->reply_cap_in_tcb) {
                            _camkes__1077->reply_cap_in_tcb = false;
                            _camkes_info_1066 = seL4_ReplyRecv(27, _camkes_info_1066, &pwm_badge);
                        } else {
                            
                            seL4_Error _camkes__1079 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__1079 != seL4_NoError, pwm_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "pwm_obj",
                                    .interface = "pwm",
                                    .description = "failed to save reply cap in set_motors",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__1079,
                                }), ({
                                    _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                    continue;
                                }));

                            seL4_Send(29, _camkes_info_1066);
                            _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        }
                    

                    break;
                }
            
                case 1: { /* set_led */
                    
                    

                        
                            int led UNUSED;
                            int * led_ptr = TLS_PTR(set_led_led_to, led);
                        
                    

                        
                            int level UNUSED;
                            int * level_ptr = TLS_PTR(set_led_level_to, level);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_1080 = /*
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


     
         
   

set_led_unmarshal_inputs(
_camkes_size_1068

  ,


  
  led_ptr
  
    ,
  

  
  level_ptr
  

);
                    if (unlikely(_camkes_error_1080 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__1081 UNUSED = camkes_declare_reply_cap(29);
                        ERR_IF(_camkes__1081 != 0, pwm_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "pwm_obj",
                                .interface = "pwm",
                                .description = "failed to declare reply cap in set_led",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    pwm_set_led(
                        
                            
                            
                                *
                            
                            led_ptr
                            ,
                        
                            
                            
                                *
                            
                            level_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__1086 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_1087 = /*
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


      
   

                                               
                                

set_led_marshal_outputs(


);

                    
                    
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_1087 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    _camkes_info_1066 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_1087, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__1086 != NULL);
                        if (_camkes__1086->reply_cap_in_tcb) {
                            _camkes__1086->reply_cap_in_tcb = false;
                            _camkes_info_1066 = seL4_ReplyRecv(27, _camkes_info_1066, &pwm_badge);
                        } else {
                            
                            seL4_Error _camkes__1088 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__1088 != seL4_NoError, pwm_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "pwm_obj",
                                    .interface = "pwm",
                                    .description = "failed to save reply cap in set_led",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__1088,
                                }), ({
                                    _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                    continue;
                                }));

                            seL4_Send(29, _camkes_info_1066);
                            _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        }
                    

                    break;
                }
            
                case 2: { /* vmsig */
                    
                    

                        
                            int data UNUSED;
                            int * data_ptr = TLS_PTR(vmsig_data_to, data);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_1089 = /*
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


     
         
   

vmsig_unmarshal_inputs(
_camkes_size_1068

  ,


  
  data_ptr
  

);
                    if (unlikely(_camkes_error_1089 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__1090 UNUSED = camkes_declare_reply_cap(29);
                        ERR_IF(_camkes__1090 != 0, pwm_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "pwm_obj",
                                .interface = "pwm",
                                .description = "failed to declare reply cap in vmsig",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    pwm_vmsig(
                        
                            
                            
                                *
                            
                            data_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__1095 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_1096 = /*
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


      
   

                                               
                                

vmsig_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_1096 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }

                    _camkes_info_1066 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_1096, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__1095 != NULL);
                        if (_camkes__1095->reply_cap_in_tcb) {
                            _camkes__1095->reply_cap_in_tcb = false;
                            _camkes_info_1066 = seL4_ReplyRecv(27, _camkes_info_1066, &pwm_badge);
                        } else {
                            
                            seL4_Error _camkes__1097 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__1097 != seL4_NoError, pwm_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "pwm_obj",
                                    .interface = "pwm",
                                    .description = "failed to save reply cap in vmsig",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__1097,
                                }), ({
                                    _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                                    continue;
                                }));

                            seL4_Send(29, _camkes_info_1066);
                            _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        }
                    

                    break;
                }
            
            default: {
                ERR(pwm_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "pwm_obj",
                        .interface = "pwm",
                        .description = "invalid method index received in pwm",
                        .lower_bound = 0,
                        .upper_bound = 3 - 1,
                        .invalid_index = * _camkes_call_ptr_1070,
                    }), ({
                        _camkes_info_1066 = seL4_Recv(27, &pwm_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}