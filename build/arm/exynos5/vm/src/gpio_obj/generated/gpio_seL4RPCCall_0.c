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





#define _camkes_BUFFER_BASE_257 ((void*)&seL4_GetIPCBuffer()->msg[0])






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


    extern
    
        void
    
    gpio_spi_can_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_can_nss_unmarshal_inputs_state(unsigned _camkes_size_258, unsigned _camkes_offset_259,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_260 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_259 + sizeof(* state) > _camkes_size_258, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_can_nss",
          .length = _camkes_size_258,
          .current_index = _camkes_offset_259 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_260 + _camkes_offset_259, sizeof(* state));
      _camkes_offset_259 += sizeof(* state);
    

    return _camkes_offset_259;
  }


static int spi_can_nss_unmarshal_inputs(

unsigned _camkes_size_261

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_262 UNUSED = 0;

  
  void * _camkes_buffer_base_263 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_262 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_262 = spi_can_nss_unmarshal_inputs_state(_camkes_size_261, _camkes_length_262,
      
      state
    );
    if (unlikely(_camkes_length_262 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_262, sizeof(seL4_Word)) != _camkes_size_261, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_can_nss",
        .length = _camkes_size_261,
        .current_index = _camkes_length_262,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_can_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_266 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_266 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_can_nss");

  return _camkes_length_266;
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


    
    static int spi_can_nss_state_to_1
    
    UNUSED;

    
    static int spi_can_nss_state_to_2
    
    UNUSED;

    
    static int spi_can_nss_state_to_3
    
    UNUSED;

    
    static int spi_can_nss_state_to_4
    
    UNUSED;

    
    static int spi_can_nss_state_to_5
    
    UNUSED;

    
    static int spi_can_nss_state_to_6
    
    UNUSED;

    
    static int spi_can_nss_state_to_7
    
    UNUSED;

    
    static int spi_can_nss_state_to_8
    
    UNUSED;

    
    static int spi_can_nss_state_to_9
    
    UNUSED;


static int *

get_spi_can_nss_state_to(void) UNUSED;
static int *

get_spi_can_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_can_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_can_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_can_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_can_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_can_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_can_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_can_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_can_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_can_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    gpio_spi_mpu_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_mpu_nss_unmarshal_inputs_state(unsigned _camkes_size_267, unsigned _camkes_offset_268,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_269 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_268 + sizeof(* state) > _camkes_size_267, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_mpu_nss",
          .length = _camkes_size_267,
          .current_index = _camkes_offset_268 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_269 + _camkes_offset_268, sizeof(* state));
      _camkes_offset_268 += sizeof(* state);
    

    return _camkes_offset_268;
  }


static int spi_mpu_nss_unmarshal_inputs(

unsigned _camkes_size_270

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_271 UNUSED = 0;

  
  void * _camkes_buffer_base_272 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_271 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_271 = spi_mpu_nss_unmarshal_inputs_state(_camkes_size_270, _camkes_length_271,
      
      state
    );
    if (unlikely(_camkes_length_271 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_271, sizeof(seL4_Word)) != _camkes_size_270, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_mpu_nss",
        .length = _camkes_size_270,
        .current_index = _camkes_length_271,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_mpu_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_275 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_275 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_mpu_nss");

  return _camkes_length_275;
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


    
    static int spi_mpu_nss_state_to_1
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_2
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_3
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_4
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_5
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_6
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_7
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_8
    
    UNUSED;

    
    static int spi_mpu_nss_state_to_9
    
    UNUSED;


static int *

get_spi_mpu_nss_state_to(void) UNUSED;
static int *

get_spi_mpu_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_mpu_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_mpu_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_mpu_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_mpu_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_mpu_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_mpu_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_mpu_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_mpu_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_mpu_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    gpio_spi_acc_mag_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_acc_mag_nss_unmarshal_inputs_state(unsigned _camkes_size_276, unsigned _camkes_offset_277,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_278 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_277 + sizeof(* state) > _camkes_size_276, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_acc_mag_nss",
          .length = _camkes_size_276,
          .current_index = _camkes_offset_277 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_278 + _camkes_offset_277, sizeof(* state));
      _camkes_offset_277 += sizeof(* state);
    

    return _camkes_offset_277;
  }


static int spi_acc_mag_nss_unmarshal_inputs(

unsigned _camkes_size_279

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_280 UNUSED = 0;

  
  void * _camkes_buffer_base_281 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_280 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_280 = spi_acc_mag_nss_unmarshal_inputs_state(_camkes_size_279, _camkes_length_280,
      
      state
    );
    if (unlikely(_camkes_length_280 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_280, sizeof(seL4_Word)) != _camkes_size_279, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_acc_mag_nss",
        .length = _camkes_size_279,
        .current_index = _camkes_length_280,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_acc_mag_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_284 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_284 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_acc_mag_nss");

  return _camkes_length_284;
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


    
    static int spi_acc_mag_nss_state_to_1
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_2
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_3
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_4
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_5
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_6
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_7
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_8
    
    UNUSED;

    
    static int spi_acc_mag_nss_state_to_9
    
    UNUSED;


static int *

get_spi_acc_mag_nss_state_to(void) UNUSED;
static int *

get_spi_acc_mag_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_acc_mag_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_acc_mag_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_acc_mag_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_acc_mag_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_acc_mag_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_acc_mag_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_acc_mag_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_acc_mag_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_acc_mag_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    gpio_spi_gyro_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_gyro_nss_unmarshal_inputs_state(unsigned _camkes_size_285, unsigned _camkes_offset_286,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_287 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_286 + sizeof(* state) > _camkes_size_285, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_gyro_nss",
          .length = _camkes_size_285,
          .current_index = _camkes_offset_286 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_287 + _camkes_offset_286, sizeof(* state));
      _camkes_offset_286 += sizeof(* state);
    

    return _camkes_offset_286;
  }


static int spi_gyro_nss_unmarshal_inputs(

unsigned _camkes_size_288

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_289 UNUSED = 0;

  
  void * _camkes_buffer_base_290 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_289 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_289 = spi_gyro_nss_unmarshal_inputs_state(_camkes_size_288, _camkes_length_289,
      
      state
    );
    if (unlikely(_camkes_length_289 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_289, sizeof(seL4_Word)) != _camkes_size_288, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_gyro_nss",
        .length = _camkes_size_288,
        .current_index = _camkes_length_289,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_gyro_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_293 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_293 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_gyro_nss");

  return _camkes_length_293;
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


    
    static int spi_gyro_nss_state_to_1
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_2
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_3
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_4
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_5
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_6
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_7
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_8
    
    UNUSED;

    
    static int spi_gyro_nss_state_to_9
    
    UNUSED;


static int *

get_spi_gyro_nss_state_to(void) UNUSED;
static int *

get_spi_gyro_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_gyro_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_gyro_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_gyro_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_gyro_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_gyro_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_gyro_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_gyro_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_gyro_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_gyro_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    gpio_spi_baro_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_baro_nss_unmarshal_inputs_state(unsigned _camkes_size_294, unsigned _camkes_offset_295,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_296 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_295 + sizeof(* state) > _camkes_size_294, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_baro_nss",
          .length = _camkes_size_294,
          .current_index = _camkes_offset_295 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_296 + _camkes_offset_295, sizeof(* state));
      _camkes_offset_295 += sizeof(* state);
    

    return _camkes_offset_295;
  }


static int spi_baro_nss_unmarshal_inputs(

unsigned _camkes_size_297

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_298 UNUSED = 0;

  
  void * _camkes_buffer_base_299 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_298 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_298 = spi_baro_nss_unmarshal_inputs_state(_camkes_size_297, _camkes_length_298,
      
      state
    );
    if (unlikely(_camkes_length_298 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_298, sizeof(seL4_Word)) != _camkes_size_297, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_baro_nss",
        .length = _camkes_size_297,
        .current_index = _camkes_length_298,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_baro_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_302 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_302 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_baro_nss");

  return _camkes_length_302;
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


    
    static int spi_baro_nss_state_to_1
    
    UNUSED;

    
    static int spi_baro_nss_state_to_2
    
    UNUSED;

    
    static int spi_baro_nss_state_to_3
    
    UNUSED;

    
    static int spi_baro_nss_state_to_4
    
    UNUSED;

    
    static int spi_baro_nss_state_to_5
    
    UNUSED;

    
    static int spi_baro_nss_state_to_6
    
    UNUSED;

    
    static int spi_baro_nss_state_to_7
    
    UNUSED;

    
    static int spi_baro_nss_state_to_8
    
    UNUSED;

    
    static int spi_baro_nss_state_to_9
    
    UNUSED;


static int *

get_spi_baro_nss_state_to(void) UNUSED;
static int *

get_spi_baro_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_baro_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_baro_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_baro_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_baro_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_baro_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_baro_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_baro_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_baro_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_baro_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        void
    
    gpio_spi_ext_nss(
      
        
          
            int
          
          state
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned spi_ext_nss_unmarshal_inputs_state(unsigned _camkes_size_303, unsigned _camkes_offset_304,
    
      int * state
    
  ) {

    
    void * _camkes_buffer_base_305 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_304 + sizeof(* state) > _camkes_size_303, gpio_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "gpio_obj",
          .interface = "gpio",
          .description = "truncated message encountered while unmarshalling state in spi_ext_nss",
          .length = _camkes_size_303,
          .current_index = _camkes_offset_304 + sizeof(* state),
        }), ({
          return UINT_MAX;
        }));
      memcpy(state, _camkes_buffer_base_305 + _camkes_offset_304, sizeof(* state));
      _camkes_offset_304 += sizeof(* state);
    

    return _camkes_offset_304;
  }


static int spi_ext_nss_unmarshal_inputs(

unsigned _camkes_size_306

  ,


  
    int * state
  
  

) {

  
  unsigned _camkes_length_307 UNUSED = 0;

  
  void * _camkes_buffer_base_308 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_307 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_307 = spi_ext_nss_unmarshal_inputs_state(_camkes_size_306, _camkes_length_307,
      
      state
    );
    if (unlikely(_camkes_length_307 == UINT_MAX)) {
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_307, sizeof(seL4_Word)) != _camkes_size_306, gpio_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "gpio_obj",
        .interface = "gpio",
        .description = "excess trailing bytes after unmarshalling parameters for spi_ext_nss",
        .length = _camkes_size_306,
        .current_index = _camkes_length_307,
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


      
     
          
      
        
          
   

                                               
 





static unsigned spi_ext_nss_marshal_outputs(




  void

) {

  
  unsigned _camkes_length_311 = 0;

  

  /* Marshal output parameters. */
  

  assert(_camkes_length_311 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for spi_ext_nss");

  return _camkes_length_311;
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


    
    static int spi_ext_nss_state_to_1
    
    UNUSED;

    
    static int spi_ext_nss_state_to_2
    
    UNUSED;

    
    static int spi_ext_nss_state_to_3
    
    UNUSED;

    
    static int spi_ext_nss_state_to_4
    
    UNUSED;

    
    static int spi_ext_nss_state_to_5
    
    UNUSED;

    
    static int spi_ext_nss_state_to_6
    
    UNUSED;

    
    static int spi_ext_nss_state_to_7
    
    UNUSED;

    
    static int spi_ext_nss_state_to_8
    
    UNUSED;

    
    static int spi_ext_nss_state_to_9
    
    UNUSED;


static int *

get_spi_ext_nss_state_to(void) UNUSED;
static int *

get_spi_ext_nss_state_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & spi_ext_nss_state_to_1;
                
        
            case 2:
                
                    return & spi_ext_nss_state_to_2;
                
        
            case 3:
                
                    return & spi_ext_nss_state_to_3;
                
        
            case 4:
                
                    return & spi_ext_nss_state_to_4;
                
        
            case 5:
                
                    return & spi_ext_nss_state_to_5;
                
        
            case 6:
                
                    return & spi_ext_nss_state_to_6;
                
        
            case 7:
                
                    return & spi_ext_nss_state_to_7;
                
        
            case 8:
                
                    return & spi_ext_nss_state_to_8;
                
        
            case 9:
                
                    return & spi_ext_nss_state_to_9;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  







static seL4_Word gpio_badge = 0;

seL4_Word gpio_get_sender_id(void) {
    return gpio_badge;
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


    
    static uint8_t _camkes_call_tls_var_to_312_1
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_2
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_3
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_4
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_5
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_6
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_7
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_8
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_312_9
    
    UNUSED;


static uint8_t *

get__camkes_call_tls_var_to_312(void) UNUSED;
static uint8_t *

get__camkes_call_tls_var_to_312(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_312_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_312_2;
                
        
            case 3:
                
                    return & _camkes_call_tls_var_to_312_3;
                
        
            case 4:
                
                    return & _camkes_call_tls_var_to_312_4;
                
        
            case 5:
                
                    return & _camkes_call_tls_var_to_312_5;
                
        
            case 6:
                
                    return & _camkes_call_tls_var_to_312_6;
                
        
            case 7:
                
                    return & _camkes_call_tls_var_to_312_7;
                
        
            case 8:
                
                    return & _camkes_call_tls_var_to_312_8;
                
        
            case 9:
                
                    return & _camkes_call_tls_var_to_312_9;
                
        
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







  
  
    
      
  
  
  static void _camkes__313(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__313(void) {
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

      /* trigger a compile-time warning: */ _camkes__313(),
      /* do nothing: */ (void)0);
  }

      
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  






int

    gpio__run(void)

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





  
  
    
      
  
  static int _camkes__314;
  gpio_inf_spi_can_nss_state_array_typedef_check(_camkes__314);

      
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  

  
  
    
  


    
        
            /* We're going to need a CNode cap in order to save our pending reply
             * caps in the future.
             */
            
            
            camkes_get_tls()->cnode_cap = 29;
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_315 = seL4_Recv(28, &gpio_badge);
    

    while (1) {

        
        void * _camkes_buffer_316 UNUSED = (void*)_camkes_BUFFER_BASE_257;

        
        unsigned _camkes_size_317 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_315) * sizeof(seL4_Word);
            assert(_camkes_size_317 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          uint8_t _camkes_call_318 UNUSED;
          uint8_t * _camkes_call_ptr_319 = TLS_PTR(_camkes_call_tls_var_to_312, _camkes_call_318);
        
        
            ERR_IF(sizeof(* _camkes_call_ptr_319) > _camkes_size_317, gpio_error_handler, ((camkes_error_t){
                    .type = CE_MALFORMED_RPC_PAYLOAD,
                    .instance = "gpio_obj",
                    .interface = "gpio",
                    .description = "truncated message encountered while unmarshalling method index in gpio",
                    .length = _camkes_size_317,
                    .current_index = sizeof(* _camkes_call_ptr_319),
                }), ({
                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                    continue;
                }));

            memcpy(_camkes_call_ptr_319, _camkes_buffer_316, sizeof(* _camkes_call_ptr_319));
        

        switch (* _camkes_call_ptr_319) {
            
                case 0: { /* spi_can_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_can_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_320 = /*
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


     
         
   

spi_can_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_320 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__321 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__321 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_can_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_can_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__326 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_327 = /*
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


      
   

                                               
                                

spi_can_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_327 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_327, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__326 != NULL);
                        if (_camkes__326->reply_cap_in_tcb) {
                            _camkes__326->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__328 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__328 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_can_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__328,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
                case 1: { /* spi_mpu_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_mpu_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_329 = /*
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


     
         
   

spi_mpu_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_329 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__330 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__330 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_mpu_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_mpu_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__335 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_336 = /*
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


      
   

                                               
                                

spi_mpu_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_336 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_336, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__335 != NULL);
                        if (_camkes__335->reply_cap_in_tcb) {
                            _camkes__335->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__337 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__337 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_mpu_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__337,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
                case 2: { /* spi_acc_mag_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_acc_mag_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_338 = /*
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


     
         
   

spi_acc_mag_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_338 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__339 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__339 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_acc_mag_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_acc_mag_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__344 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_345 = /*
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


      
   

                                               
                                

spi_acc_mag_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_345 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_345, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__344 != NULL);
                        if (_camkes__344->reply_cap_in_tcb) {
                            _camkes__344->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__346 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__346 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_acc_mag_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__346,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
                case 3: { /* spi_gyro_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_gyro_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_347 = /*
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


     
         
   

spi_gyro_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_347 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__348 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__348 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_gyro_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_gyro_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__353 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_354 = /*
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


      
   

                                               
                                

spi_gyro_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_354 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_354, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__353 != NULL);
                        if (_camkes__353->reply_cap_in_tcb) {
                            _camkes__353->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__355 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__355 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_gyro_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__355,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
                case 4: { /* spi_baro_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_baro_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_356 = /*
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


     
         
   

spi_baro_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_356 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__357 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__357 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_baro_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_baro_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__362 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_363 = /*
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


      
   

                                               
                                

spi_baro_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_363 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_363, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__362 != NULL);
                        if (_camkes__362->reply_cap_in_tcb) {
                            _camkes__362->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__364 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__364 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_baro_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__364,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
                case 5: { /* spi_ext_nss */
                    
                    

                        
                            int state UNUSED;
                            int * state_ptr = TLS_PTR(spi_ext_nss_state_to, state);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_365 = /*
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


     
         
   

spi_ext_nss_unmarshal_inputs(
_camkes_size_317

  ,


  
  state_ptr
  

);
                    if (unlikely(_camkes_error_365 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__366 UNUSED = camkes_declare_reply_cap(30);
                        ERR_IF(_camkes__366 != 0, gpio_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "gpio_obj",
                                .interface = "gpio",
                                .description = "failed to declare reply cap in spi_ext_nss",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                    gpio_spi_ext_nss(
                        
                            
                            
                                *
                            
                            state_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__371 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_372 = /*
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


      
   

                                               
                                

spi_ext_nss_marshal_outputs(


);

                    
                    
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_372 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }

                    _camkes_info_315 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_372, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__371 != NULL);
                        if (_camkes__371->reply_cap_in_tcb) {
                            _camkes__371->reply_cap_in_tcb = false;
                            _camkes_info_315 = seL4_ReplyRecv(28, _camkes_info_315, &gpio_badge);
                        } else {
                            
                            seL4_Error _camkes__373 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__373 != seL4_NoError, gpio_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "gpio_obj",
                                    .interface = "gpio",
                                    .description = "failed to save reply cap in spi_ext_nss",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__373,
                                }), ({
                                    _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                                    continue;
                                }));

                            seL4_Send(30, _camkes_info_315);
                            _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        }
                    

                    break;
                }
            
            default: {
                ERR(gpio_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "gpio_obj",
                        .interface = "gpio",
                        .description = "invalid method index received in gpio",
                        .lower_bound = 0,
                        .upper_bound = 6 - 1,
                        .invalid_index = * _camkes_call_ptr_319,
                    }), ({
                        _camkes_info_315 = seL4_Recv(28, &gpio_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}