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





#define _camkes_BUFFER_BASE_543 ((void*)&seL4_GetIPCBuffer()->msg[0])






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


    extern
    
        
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


      
     
          
      
        
          
    


  
  
  static unsigned transfer_unmarshal_inputs_id(unsigned _camkes_size_544, unsigned _camkes_offset_545,
    
      int * id
    
  ) {

    
    void * _camkes_buffer_base_546 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_545 + sizeof(* id) > _camkes_size_544, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling id in transfer",
          .length = _camkes_size_544,
          .current_index = _camkes_offset_545 + sizeof(* id),
        }), ({
          return UINT_MAX;
        }));
      memcpy(id, _camkes_buffer_base_546 + _camkes_offset_545, sizeof(* id));
      _camkes_offset_545 += sizeof(* id);
    

    return _camkes_offset_545;
  }

  
  
  static unsigned transfer_unmarshal_inputs_wcount(unsigned _camkes_size_547, unsigned _camkes_offset_548,
    
      unsigned int * wcount
    
  ) {

    
    void * _camkes_buffer_base_549 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_548 + sizeof(* wcount) > _camkes_size_547, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling wcount in transfer",
          .length = _camkes_size_547,
          .current_index = _camkes_offset_548 + sizeof(* wcount),
        }), ({
          return UINT_MAX;
        }));
      memcpy(wcount, _camkes_buffer_base_549 + _camkes_offset_548, sizeof(* wcount));
      _camkes_offset_548 += sizeof(* wcount);
    

    return _camkes_offset_548;
  }

  
  
  static unsigned transfer_unmarshal_inputs_rcount(unsigned _camkes_size_550, unsigned _camkes_offset_551,
    
      unsigned int * rcount
    
  ) {

    
    void * _camkes_buffer_base_552 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_551 + sizeof(* rcount) > _camkes_size_550, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling rcount in transfer",
          .length = _camkes_size_550,
          .current_index = _camkes_offset_551 + sizeof(* rcount),
        }), ({
          return UINT_MAX;
        }));
      memcpy(rcount, _camkes_buffer_base_552 + _camkes_offset_551, sizeof(* rcount));
      _camkes_offset_551 += sizeof(* rcount);
    

    return _camkes_offset_551;
  }


static int transfer_unmarshal_inputs(

unsigned _camkes_size_553

  ,


  
    int * id
  
  
    ,
  

  
    unsigned int * wcount
  
  
    ,
  

  
    unsigned int * rcount
  
  

) {

  
  unsigned _camkes_length_554 UNUSED = 0;

  
  void * _camkes_buffer_base_555 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_554 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_554 = transfer_unmarshal_inputs_id(_camkes_size_553, _camkes_length_554,
      
      id
    );
    if (unlikely(_camkes_length_554 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_554 = transfer_unmarshal_inputs_wcount(_camkes_size_553, _camkes_length_554,
      
      wcount
    );
    if (unlikely(_camkes_length_554 == UINT_MAX)) {
      
        
      
      return -1;
    }
  
    
    _camkes_length_554 = transfer_unmarshal_inputs_rcount(_camkes_size_553, _camkes_length_554,
      
      rcount
    );
    if (unlikely(_camkes_length_554 == UINT_MAX)) {
      
        
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_554, sizeof(seL4_Word)) != _camkes_size_553, spi_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "spi",
        .description = "excess trailing bytes after unmarshalling parameters for transfer",
        .length = _camkes_size_553,
        .current_index = _camkes_length_554,
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


      
     
          
      
        
          
   

                                               
 



  
  
  static unsigned transfer_marshal_outputs__camkes_ret_fn_556(unsigned _camkes_offset_557,
    
      const int * _camkes_return_558
    
  ) {

    
    void * _camkes_buffer_base_559 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Marshal the return value. */
    
      ERR_IF(_camkes_offset_557 + sizeof(* _camkes_return_558) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling return value for transfer",
          .current_length = _camkes_offset_557,
          .target_length = _camkes_offset_557 + sizeof(* _camkes_return_558),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_559 + _camkes_offset_557, _camkes_return_558, sizeof(* _camkes_return_558));
      _camkes_offset_557 += sizeof(* _camkes_return_558);
    

    return _camkes_offset_557;
  }



static unsigned transfer_marshal_outputs(


  
    const int * _camkes_return_560
  
  



) {

  
  unsigned _camkes_length_561 = 0;

  
    _camkes_length_561 = transfer_marshal_outputs__camkes_ret_fn_556(_camkes_length_561,
      _camkes_return_560
    );
    if (unlikely(_camkes_length_561 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  /* Marshal output parameters. */
  

  assert(_camkes_length_561 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for transfer");

  return _camkes_length_561;
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


    
    static int transfer_ret_to_1
    
    UNUSED;

    
    static int transfer_ret_to_2
    
    UNUSED;

    
    static int transfer_ret_to_3
    
    UNUSED;

    
    static int transfer_ret_to_4
    
    UNUSED;

    
    static int transfer_ret_to_5
    
    UNUSED;


static int *

get_transfer_ret_to(void) UNUSED;
static int *

get_transfer_ret_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_ret_to_1;
                
        
            case 2:
                
                    return & transfer_ret_to_2;
                
        
            case 3:
                
                    return & transfer_ret_to_3;
                
        
            case 4:
                
                    return & transfer_ret_to_4;
                
        
            case 5:
                
                    return & transfer_ret_to_5;
                
        
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


    
    static int transfer_id_to_1
    
    UNUSED;

    
    static int transfer_id_to_2
    
    UNUSED;

    
    static int transfer_id_to_3
    
    UNUSED;

    
    static int transfer_id_to_4
    
    UNUSED;

    
    static int transfer_id_to_5
    
    UNUSED;


static int *

get_transfer_id_to(void) UNUSED;
static int *

get_transfer_id_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_id_to_1;
                
        
            case 2:
                
                    return & transfer_id_to_2;
                
        
            case 3:
                
                    return & transfer_id_to_3;
                
        
            case 4:
                
                    return & transfer_id_to_4;
                
        
            case 5:
                
                    return & transfer_id_to_5;
                
        
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


    
    static unsigned int transfer_wcount_to_1
    
    UNUSED;

    
    static unsigned int transfer_wcount_to_2
    
    UNUSED;

    
    static unsigned int transfer_wcount_to_3
    
    UNUSED;

    
    static unsigned int transfer_wcount_to_4
    
    UNUSED;

    
    static unsigned int transfer_wcount_to_5
    
    UNUSED;


static unsigned int *

get_transfer_wcount_to(void) UNUSED;
static unsigned int *

get_transfer_wcount_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_wcount_to_1;
                
        
            case 2:
                
                    return & transfer_wcount_to_2;
                
        
            case 3:
                
                    return & transfer_wcount_to_3;
                
        
            case 4:
                
                    return & transfer_wcount_to_4;
                
        
            case 5:
                
                    return & transfer_wcount_to_5;
                
        
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


    
    static unsigned int transfer_rcount_to_1
    
    UNUSED;

    
    static unsigned int transfer_rcount_to_2
    
    UNUSED;

    
    static unsigned int transfer_rcount_to_3
    
    UNUSED;

    
    static unsigned int transfer_rcount_to_4
    
    UNUSED;

    
    static unsigned int transfer_rcount_to_5
    
    UNUSED;


static unsigned int *

get_transfer_rcount_to(void) UNUSED;
static unsigned int *

get_transfer_rcount_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_rcount_to_1;
                
        
            case 2:
                
                    return & transfer_rcount_to_2;
                
        
            case 3:
                
                    return & transfer_rcount_to_3;
                
        
            case 4:
                
                    return & transfer_rcount_to_4;
                
        
            case 5:
                
                    return & transfer_rcount_to_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  



    extern
    
        
            int
        
    
    spi_transfer_byte(
      
        
          
            int
          
          id
        
        
          ,
        
      
        
          
            char
          
          byte
        
        
      
      
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


      
     
          
      
        
          
    


  
  
  static unsigned transfer_byte_unmarshal_inputs_id(unsigned _camkes_size_562, unsigned _camkes_offset_563,
    
      int * id
    
  ) {

    
    void * _camkes_buffer_base_564 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_563 + sizeof(* id) > _camkes_size_562, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling id in transfer_byte",
          .length = _camkes_size_562,
          .current_index = _camkes_offset_563 + sizeof(* id),
        }), ({
          return UINT_MAX;
        }));
      memcpy(id, _camkes_buffer_base_564 + _camkes_offset_563, sizeof(* id));
      _camkes_offset_563 += sizeof(* id);
    

    return _camkes_offset_563;
  }

  
  
  static unsigned transfer_byte_unmarshal_inputs_byte(unsigned _camkes_size_565, unsigned _camkes_offset_566,
    
      char * byte
    
  ) {

    
    void * _camkes_buffer_base_567 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    
      ERR_IF(_camkes_offset_566 + sizeof(* byte) > _camkes_size_565, spi_error_handler, ((camkes_error_t){
          .type = CE_MALFORMED_RPC_PAYLOAD,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "truncated message encountered while unmarshalling byte in transfer_byte",
          .length = _camkes_size_565,
          .current_index = _camkes_offset_566 + sizeof(* byte),
        }), ({
          return UINT_MAX;
        }));
      memcpy(byte, _camkes_buffer_base_567 + _camkes_offset_566, sizeof(* byte));
      _camkes_offset_566 += sizeof(* byte);
    

    return _camkes_offset_566;
  }


static int transfer_byte_unmarshal_inputs(

unsigned _camkes_size_568

  ,


  
    int * id
  
  
    ,
  

  
    char * byte
  
  

) {

  
  unsigned _camkes_length_569 UNUSED = 0;

  
  void * _camkes_buffer_base_570 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

  
    /* Step over the method index. */
    _camkes_length_569 += sizeof(
    
      uint8_t
    
    );
  

  /* Unmarshal input parameters. */
  
    
    _camkes_length_569 = transfer_byte_unmarshal_inputs_id(_camkes_size_568, _camkes_length_569,
      
      id
    );
    if (unlikely(_camkes_length_569 == UINT_MAX)) {
      
      return -1;
    }
  
    
    _camkes_length_569 = transfer_byte_unmarshal_inputs_byte(_camkes_size_568, _camkes_length_569,
      
      byte
    );
    if (unlikely(_camkes_length_569 == UINT_MAX)) {
      
        
      
      return -1;
    }
  

  
    ERR_IF(ROUND_UP_UNSAFE(_camkes_length_569, sizeof(seL4_Word)) != _camkes_size_568, spi_error_handler, ((camkes_error_t){
        .type = CE_MALFORMED_RPC_PAYLOAD,
        .instance = "spi_obj",
        .interface = "spi",
        .description = "excess trailing bytes after unmarshalling parameters for transfer_byte",
        .length = _camkes_size_568,
        .current_index = _camkes_length_569,
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


      
     
          
      
        
          
   

                                               
 



  
  
  static unsigned transfer_byte_marshal_outputs__camkes_ret_fn_571(unsigned _camkes_offset_572,
    
      const int * _camkes_return_573
    
  ) {

    
    void * _camkes_buffer_base_574 UNUSED = (void*)(((void*)&seL4_GetIPCBuffer()->msg[0]));

    /* Marshal the return value. */
    
      ERR_IF(_camkes_offset_572 + sizeof(* _camkes_return_573) > (seL4_MsgMaxLength * sizeof(seL4_Word)), spi_error_handler, ((camkes_error_t){
          .type = CE_BUFFER_LENGTH_EXCEEDED,
          .instance = "spi_obj",
          .interface = "spi",
          .description = "buffer exceeded while marshalling return value for transfer_byte",
          .current_length = _camkes_offset_572,
          .target_length = _camkes_offset_572 + sizeof(* _camkes_return_573),
        }), ({
          return UINT_MAX;
        }));
      memcpy(_camkes_buffer_base_574 + _camkes_offset_572, _camkes_return_573, sizeof(* _camkes_return_573));
      _camkes_offset_572 += sizeof(* _camkes_return_573);
    

    return _camkes_offset_572;
  }



static unsigned transfer_byte_marshal_outputs(


  
    const int * _camkes_return_575
  
  



) {

  
  unsigned _camkes_length_576 = 0;

  
    _camkes_length_576 = transfer_byte_marshal_outputs__camkes_ret_fn_571(_camkes_length_576,
      _camkes_return_575
    );
    if (unlikely(_camkes_length_576 == UINT_MAX)) {
      return UINT_MAX;
    }
  

  /* Marshal output parameters. */
  

  assert(_camkes_length_576 <= (seL4_MsgMaxLength * sizeof(seL4_Word)) &&
    "uncaught buffer overflow while marshalling outputs for transfer_byte");

  return _camkes_length_576;
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


    
    static int transfer_byte_ret_to_1
    
    UNUSED;

    
    static int transfer_byte_ret_to_2
    
    UNUSED;

    
    static int transfer_byte_ret_to_3
    
    UNUSED;

    
    static int transfer_byte_ret_to_4
    
    UNUSED;

    
    static int transfer_byte_ret_to_5
    
    UNUSED;


static int *

get_transfer_byte_ret_to(void) UNUSED;
static int *

get_transfer_byte_ret_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_byte_ret_to_1;
                
        
            case 2:
                
                    return & transfer_byte_ret_to_2;
                
        
            case 3:
                
                    return & transfer_byte_ret_to_3;
                
        
            case 4:
                
                    return & transfer_byte_ret_to_4;
                
        
            case 5:
                
                    return & transfer_byte_ret_to_5;
                
        
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


    
    static int transfer_byte_id_to_1
    
    UNUSED;

    
    static int transfer_byte_id_to_2
    
    UNUSED;

    
    static int transfer_byte_id_to_3
    
    UNUSED;

    
    static int transfer_byte_id_to_4
    
    UNUSED;

    
    static int transfer_byte_id_to_5
    
    UNUSED;


static int *

get_transfer_byte_id_to(void) UNUSED;
static int *

get_transfer_byte_id_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_byte_id_to_1;
                
        
            case 2:
                
                    return & transfer_byte_id_to_2;
                
        
            case 3:
                
                    return & transfer_byte_id_to_3;
                
        
            case 4:
                
                    return & transfer_byte_id_to_4;
                
        
            case 5:
                
                    return & transfer_byte_id_to_5;
                
        
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


    
    static char transfer_byte_byte_to_1
    
    UNUSED;

    
    static char transfer_byte_byte_to_2
    
    UNUSED;

    
    static char transfer_byte_byte_to_3
    
    UNUSED;

    
    static char transfer_byte_byte_to_4
    
    UNUSED;

    
    static char transfer_byte_byte_to_5
    
    UNUSED;


static char *

get_transfer_byte_byte_to(void) UNUSED;
static char *

get_transfer_byte_byte_to(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & transfer_byte_byte_to_1;
                
        
            case 2:
                
                    return & transfer_byte_byte_to_2;
                
        
            case 3:
                
                    return & transfer_byte_byte_to_3;
                
        
            case 4:
                
                    return & transfer_byte_byte_to_4;
                
        
            case 5:
                
                    return & transfer_byte_byte_to_5;
                
        
        default:
            assert(!"invalid thread index");
            abort();
    }
}
  







static seL4_Word spi_badge = 0;

seL4_Word spi_get_sender_id(void) {
    return spi_badge;
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


    
    static uint8_t _camkes_call_tls_var_to_577_1
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_577_2
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_577_3
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_577_4
    
    UNUSED;

    
    static uint8_t _camkes_call_tls_var_to_577_5
    
    UNUSED;


static uint8_t *

get__camkes_call_tls_var_to_577(void) UNUSED;
static uint8_t *

get__camkes_call_tls_var_to_577(void) {
    switch (camkes_get_tls()->thread_index) {
        
            case 1:
                
                    return & _camkes_call_tls_var_to_577_1;
                
        
            case 2:
                
                    return & _camkes_call_tls_var_to_577_2;
                
        
            case 3:
                
                    return & _camkes_call_tls_var_to_577_3;
                
        
            case 4:
                
                    return & _camkes_call_tls_var_to_577_4;
                
        
            case 5:
                
                    return & _camkes_call_tls_var_to_577_5;
                
        
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







  
    
  
  
  static void _camkes__578(void) NO_INLINE UNUSED
    WARNING("typedef int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__578(void) {
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

      /* trigger a compile-time warning: */ _camkes__578(),
      /* do nothing: */ (void)0);
  }

    
  
  
    
  
    
      
  
  
  static void _camkes__579(void) NO_INLINE UNUSED
    WARNING("typedef unsigned int looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__579(void) {
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

      /* trigger a compile-time warning: */ _camkes__579(),
      /* do nothing: */ (void)0);
  }

      
    
  
    
  

  
  
    
  
    
      
  
  
  static void _camkes__580(void) NO_INLINE UNUSED
    WARNING("typedef char looks like an array (unsupported) and should be wrapped in a struct");
  static void _camkes__580(void) {
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

      /* trigger a compile-time warning: */ _camkes__580(),
      /* do nothing: */ (void)0);
  }

      
    
  






int

    spi__run(void)

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





  
    
  
  static int _camkes__581;
  spi_inf_transfer_return_array_typedef_check(_camkes__581);

    
  
  
    
  
    
      
  
  static unsigned int _camkes__582;
  spi_inf_transfer_wcount_array_typedef_check(_camkes__582);

      
    
  
    
  

  
  
    
  
    
      
  
  static char _camkes__583;
  spi_inf_transfer_byte_byte_array_typedef_check(_camkes__583);

      
    
  


    
        
            /* We're going to need a CNode cap in order to save our pending reply
             * caps in the future.
             */
            
            
            camkes_get_tls()->cnode_cap = 18;
        
    

    
    
       /* This interface has an active thread, just wait for an RPC */
        seL4_MessageInfo_t _camkes_info_584 = seL4_Recv(17, &spi_badge);
    

    while (1) {

        
        void * _camkes_buffer_585 UNUSED = (void*)_camkes_BUFFER_BASE_543;

        
        unsigned _camkes_size_586 UNUSED =
        
            seL4_MessageInfo_get_length(_camkes_info_584) * sizeof(seL4_Word);
            assert(_camkes_size_586 <= seL4_MsgMaxLength * sizeof(seL4_Word));
        

        
        
        
          uint8_t _camkes_call_587 UNUSED;
          uint8_t * _camkes_call_ptr_588 = TLS_PTR(_camkes_call_tls_var_to_577, _camkes_call_587);
        
        
            ERR_IF(sizeof(* _camkes_call_ptr_588) > _camkes_size_586, spi_error_handler, ((camkes_error_t){
                    .type = CE_MALFORMED_RPC_PAYLOAD,
                    .instance = "spi_obj",
                    .interface = "spi",
                    .description = "truncated message encountered while unmarshalling method index in spi",
                    .length = _camkes_size_586,
                    .current_index = sizeof(* _camkes_call_ptr_588),
                }), ({
                    _camkes_info_584 = seL4_Recv(17, &spi_badge);
                    continue;
                }));

            memcpy(_camkes_call_ptr_588, _camkes_buffer_585, sizeof(* _camkes_call_ptr_588));
        

        switch (* _camkes_call_ptr_588) {
            
                case 0: { /* transfer */
                    
                    

                        
                            int id UNUSED;
                            int * id_ptr = TLS_PTR(transfer_id_to, id);
                        
                    

                        
                            unsigned int wcount UNUSED;
                            unsigned int * wcount_ptr = TLS_PTR(transfer_wcount_to, wcount);
                        
                    

                        
                            unsigned int rcount UNUSED;
                            unsigned int * rcount_ptr = TLS_PTR(transfer_rcount_to, rcount);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_589 = /*
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


     
         
   

transfer_unmarshal_inputs(
_camkes_size_586

  ,


  
  id_ptr
  
    ,
  

  
  wcount_ptr
  
    ,
  

  
  rcount_ptr
  

);
                    if (unlikely(_camkes_error_589 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__590 UNUSED = camkes_declare_reply_cap(19);
                        ERR_IF(_camkes__590 != 0, spi_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "spi_obj",
                                .interface = "spi",
                                .description = "failed to declare reply cap in transfer",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_584 = seL4_Recv(17, &spi_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                        
                            int _camkes_ret_591 UNUSED;
                            int * _camkes_ret_ptr_593 = TLS_PTR(transfer_ret_to, _camkes_ret_591);
                        
                        * _camkes_ret_ptr_593 =
                    
                    spi_transfer(
                        
                            
                            
                                *
                            
                            id_ptr
                            ,
                        
                            
                            
                                *
                            
                            wcount_ptr
                            ,
                        
                            
                            
                                *
                            
                            rcount_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__595 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_596 = /*
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


      
   

                                               
                                

transfer_marshal_outputs(

  
  _camkes_ret_ptr_593
  


);

                    
                    
                    
                      
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_596 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        continue;
                    }

                    _camkes_info_584 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_596, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__595 != NULL);
                        if (_camkes__595->reply_cap_in_tcb) {
                            _camkes__595->reply_cap_in_tcb = false;
                            _camkes_info_584 = seL4_ReplyRecv(17, _camkes_info_584, &spi_badge);
                        } else {
                            
                            seL4_Error _camkes__597 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__597 != seL4_NoError, spi_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "spi_obj",
                                    .interface = "spi",
                                    .description = "failed to save reply cap in transfer",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__597,
                                }), ({
                                    _camkes_info_584 = seL4_Recv(17, &spi_badge);
                                    continue;
                                }));

                            seL4_Send(19, _camkes_info_584);
                            _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        }
                    

                    break;
                }
            
                case 1: { /* transfer_byte */
                    
                    

                        
                            int id UNUSED;
                            int * id_ptr = TLS_PTR(transfer_byte_id_to, id);
                        
                    

                        
                            char byte UNUSED;
                            char * byte_ptr = TLS_PTR(transfer_byte_byte_to, byte);
                        
                    

                    /* Unmarshal parameters */
                    
                    
                    
                    int _camkes_error_598 = /*
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


     
         
   

transfer_byte_unmarshal_inputs(
_camkes_size_586

  ,


  
  id_ptr
  
    ,
  

  
  byte_ptr
  

);
                    if (unlikely(_camkes_error_598 != 0)) {
                        /* Error in unmarshalling; return to event loop. */
                        _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        continue;
                    }

                    
                        /* We need to save the reply cap because the user's implementation may
                         * perform operations that overwrite or discard it.
                         */
                        
                        
                        int _camkes__599 UNUSED = camkes_declare_reply_cap(19);
                        ERR_IF(_camkes__599 != 0, spi_error_handler, ((camkes_error_t){
                                .type = CE_ALLOCATION_FAILURE,
                                .instance = "spi_obj",
                                .interface = "spi",
                                .description = "failed to declare reply cap in transfer_byte",
                                .alloc_bytes = sizeof(seL4_CPtr),
                            }), ({
                                _camkes_info_584 = seL4_Recv(17, &spi_badge);
                                continue;
                            }));
                    

                    /* Call the implementation */
                    
                    
                    
                    
                    
                        
                            int _camkes_ret_600 UNUSED;
                            int * _camkes_ret_ptr_602 = TLS_PTR(transfer_byte_ret_to, _camkes_ret_600);
                        
                        * _camkes_ret_ptr_602 =
                    
                    spi_transfer_byte(
                        
                            
                            
                                *
                            
                            id_ptr
                            ,
                        
                            
                            
                                *
                            
                            byte_ptr
                            
                        
                    );

                    
                    camkes_tls_t * _camkes__604 UNUSED = camkes_get_tls();

                    /* Marshal the response */
                    
                    
                    
                    
                    unsigned _camkes_length_605 = /*
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


      
   

                                               
                                

transfer_byte_marshal_outputs(

  
  _camkes_ret_ptr_602
  


);

                    
                    
                    
                      
                    
                      
                    

                    /* Check if there was an error during marshalling. We do
                     * this after freeing internal parameter variables to avoid
                     * leaking memory on errors.
                     */
                    if (unlikely(_camkes_length_605 == UINT_MAX)) {
                        /* Error occurred; return to event loop. */
                        _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        continue;
                    }

                    _camkes_info_584 = seL4_MessageInfo_new(0, 0, 0, /* length */
                        
                            ROUND_UP_UNSAFE(_camkes_length_605, sizeof(seL4_Word)) / sizeof(seL4_Word)
                        
                    );

                    /* Send the response */
                    
                        assert(_camkes__604 != NULL);
                        if (_camkes__604->reply_cap_in_tcb) {
                            _camkes__604->reply_cap_in_tcb = false;
                            _camkes_info_584 = seL4_ReplyRecv(17, _camkes_info_584, &spi_badge);
                        } else {
                            
                            seL4_Error _camkes__606 UNUSED = camkes_unprotect_reply_cap();
                            ERR_IF(_camkes__606 != seL4_NoError, spi_error_handler, ((camkes_error_t){
                                    .type = CE_SYSCALL_FAILED,
                                    .instance = "spi_obj",
                                    .interface = "spi",
                                    .description = "failed to save reply cap in transfer_byte",
                                    .syscall = CNodeSaveCaller,
                                    .error = _camkes__606,
                                }), ({
                                    _camkes_info_584 = seL4_Recv(17, &spi_badge);
                                    continue;
                                }));

                            seL4_Send(19, _camkes_info_584);
                            _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        }
                    

                    break;
                }
            
            default: {
                ERR(spi_error_handler, ((camkes_error_t){
                        .type = CE_INVALID_METHOD_INDEX,
                        .instance = "spi_obj",
                        .interface = "spi",
                        .description = "invalid method index received in spi",
                        .lower_bound = 0,
                        .upper_bound = 2 - 1,
                        .invalid_index = * _camkes_call_ptr_588,
                    }), ({
                        _camkes_info_584 = seL4_Recv(17, &spi_badge);
                        continue;
                    }));
            }
        }
    }

    UNREACHABLE();
}