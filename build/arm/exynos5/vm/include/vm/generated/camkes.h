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



    





    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
        
    
    
        
    

    
        
    
        
    
    
        
    


const char *get_instance_name(void);

/* Attributes */



    
    extern const int base_prio ;

    
    extern const int num_extra_frame_caps ;

    
    extern const int extra_frame_map_address ;



    
        
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
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        pwm_set_led(
            
              
                
                  int
                
                led
              
              
                ,
              
            
              
                
                  int
                
                level
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        pwm_vmsig(
            
              
                
                  int
                
                data
              
              
            
            
        ) NONNULL_ALL ;
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void restart_event_wait(void)
         WEAK 
        
        ;
    int restart_event_poll(void) WARN_UNUSED_RESULT
         WEAK 
        
        ;
    int restart_event_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
         WEAK 
        
        ;
    int restart_event_acknowledge(void) WARN_UNUSED_RESULT
         WEAK ;
    /* Implemented by user code. */
    void restart_event_handle(void);









    int vm_sem_wait(void) WARN_UNUSED_RESULT;
    int vm_sem_trywait(void) WARN_UNUSED_RESULT;
    int vm_sem_post(void) WARN_UNUSED_RESULT;




/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void pwm__init(void) WEAK;

    void pwm_timing_get_points(char ***points, size_t *size);
    uint64_t pwm_timing_get_entry(unsigned iteration, char *point);
    void pwm_timing_reset(void);

    void restart_event__init(void) WEAK;

    void restart_event_timing_get_points(char ***points, size_t *size);
    uint64_t restart_event_timing_get_entry(unsigned iteration, char *point);
    void restart_event_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t pwm_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t restart_event_register_error_handler(
    camkes_error_handler_t handler);


#endif