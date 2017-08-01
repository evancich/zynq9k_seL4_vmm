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
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void signal_wait(void)
        
        
        ;
    int signal_poll(void) WARN_UNUSED_RESULT
        
        
        ;
    int signal_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
        
        ;
    int signal_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void signal_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void timer_update_wait(void)
        
        
        ;
    int timer_update_poll(void) WARN_UNUSED_RESULT
        
        
        ;
    int timer_update_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
        
        ;
    int timer_update_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void timer_update_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void i2c0_int_wait(void)
        
         WARNING("i2c0_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int i2c0_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("i2c0_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int i2c0_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("i2c0_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int i2c0_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void i2c0_int_handle(void);





    extern Buf * i2c0
    ;



    int set_motors_lock(void) WARN_UNUSED_RESULT;
    int set_motors_unlock(void) WARN_UNUSED_RESULT;

    int sig_lock(void) WARN_UNUSED_RESULT;
    int sig_unlock(void) WARN_UNUSED_RESULT;



    int bus_sem_wait(void) WARN_UNUSED_RESULT;
    int bus_sem_trywait(void) WARN_UNUSED_RESULT;
    int bus_sem_post(void) WARN_UNUSED_RESULT;




/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void pwm__init(void) WEAK;

    void pwm_timing_get_points(char ***points, size_t *size);
    uint64_t pwm_timing_get_entry(unsigned iteration, char *point);
    void pwm_timing_reset(void);

    void signal__init(void) WEAK;

    void signal_timing_get_points(char ***points, size_t *size);
    uint64_t signal_timing_get_entry(unsigned iteration, char *point);
    void signal_timing_reset(void);

    void timer_update__init(void) WEAK;

    void timer_update_timing_get_points(char ***points, size_t *size);
    uint64_t timer_update_timing_get_entry(unsigned iteration, char *point);
    void timer_update_timing_reset(void);

    void i2c0_int__init(void) WEAK;

    void i2c0_int_timing_get_points(char ***points, size_t *size);
    uint64_t i2c0_int_timing_get_entry(unsigned iteration, char *point);
    void i2c0_int_timing_reset(void);

    void i2c0__init(void) WEAK;

    void i2c0_timing_get_points(char ***points, size_t *size);
    uint64_t i2c0_timing_get_entry(unsigned iteration, char *point);
    void i2c0_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t pwm_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t signal_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t timer_update_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t i2c0_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t i2c0_register_error_handler(
    camkes_error_handler_t handler);


#endif