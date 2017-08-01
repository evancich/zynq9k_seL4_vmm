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

#ifndef _CAMKES__HOME_SEL4_WORK_WORK2_BUILD_ARM_EXYNOS5_VM_CAMKES_GEN_MK_
#define _CAMKES__HOME_SEL4_WORK_WORK2_BUILD_ARM_EXYNOS5_VM_CAMKES_GEN_MK_

#include <camkes/dataport.h>
#include <camkes/error.h>
#include <stdint.h>
#include <stdlib.h>
#include <utils/util.h>



    


    #include "can_inf.h"





    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
#include <spi_can_seL4SharedData_0.h>
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
        
    
    
        
    

    
        
    
        
    
    
        
    


const char *get_instance_name(void);

/* Attributes */





    
        
            
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
              
              
            
            
        ) NONNULL_ALL ;
    
        
            
                int
            
        
        spi_transfer_byte(
            
              
                
                  int
                
                id
              
              
                ,
              
            
              
                
                  char
                
                byte
              
              
            
            
        ) NONNULL_ALL ;
    

    
        
            
                int
            
        
        can_setup(
            
              
                
                  int
                
                baudrate
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        can_send(
            
              
                
                  can_frame_t
                
                frame
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        can_recv(
            
              
                
                
                  
                  can_frame_t *
                
                frame
              
              
            
            
        ) NONNULL_ALL ;
    
        
            
                int
            
        
        can_try_recv(
            
              
                
                
                  
                  can_frame_t *
                
                frame
              
              
            
            
        ) NONNULL_ALL ;
    
        
            
                int
            
        
        can_set_filter(
            
              
                
                  can_id_t
                
                ident
              
              
                ,
              
            
              
                
                  unsigned int
                
                mask
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        can_clear_filter(
            
              
                
                  int
                
                filter_id
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        can_disable_filtering(
            
            
              void
            
        ) NONNULL_ALL ;
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void Int_wait(void)
        
        
        ;
    int Int_poll(void) WARN_UNUSED_RESULT
        
        
        ;
    int Int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
        
        ;
    int Int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void Int_handle(void);



    void IntAck_emit(void);



    extern Buf * spi_can
    ;



    int m_test_lock(void) WARN_UNUSED_RESULT;
    int m_test_unlock(void) WARN_UNUSED_RESULT;






/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void can__init(void) WEAK;

    void can_timing_get_points(char ***points, size_t *size);
    uint64_t can_timing_get_entry(unsigned iteration, char *point);
    void can_timing_reset(void);

    void spi__init(void) WEAK;

    void spi_timing_get_points(char ***points, size_t *size);
    uint64_t spi_timing_get_entry(unsigned iteration, char *point);
    void spi_timing_reset(void);

    void IntAck__init(void) WEAK;

    void IntAck_timing_get_points(char ***points, size_t *size);
    uint64_t IntAck_timing_get_entry(unsigned iteration, char *point);
    void IntAck_timing_reset(void);

    void Int__init(void) WEAK;

    void Int_timing_get_points(char ***points, size_t *size);
    uint64_t Int_timing_get_entry(unsigned iteration, char *point);
    void Int_timing_reset(void);

    void spi_can__init(void) WEAK;

    void spi_can_timing_get_points(char ***points, size_t *size);
    uint64_t spi_can_timing_get_entry(unsigned iteration, char *point);
    void spi_can_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t can_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t spi_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t IntAck_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t Int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t spi_can_register_error_handler(
    camkes_error_handler_t handler);


#endif