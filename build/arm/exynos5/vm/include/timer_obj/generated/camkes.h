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





    
        
            
                int
            
        
        tm_get_time(
            
            
              void
            
        ) NONNULL_ALL ;
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void irq_wait(void)
        
         WARNING("irq_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_poll(void) WARN_UNUSED_RESULT
        
         WARNING("irq_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("irq_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int irq_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void irq_handle(void);



    void timer_update_emit(void);



    extern Buf * timerbase
    ;








/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void tm__init(void) WEAK;

    void tm_timing_get_points(char ***points, size_t *size);
    uint64_t tm_timing_get_entry(unsigned iteration, char *point);
    void tm_timing_reset(void);

    void timer_update__init(void) WEAK;

    void timer_update_timing_get_points(char ***points, size_t *size);
    uint64_t timer_update_timing_get_entry(unsigned iteration, char *point);
    void timer_update_timing_reset(void);

    void irq__init(void) WEAK;

    void irq_timing_get_points(char ***points, size_t *size);
    uint64_t irq_timing_get_entry(unsigned iteration, char *point);
    void irq_timing_reset(void);

    void timerbase__init(void) WEAK;

    void timerbase_timing_get_points(char ***points, size_t *size);
    uint64_t timerbase_timing_get_entry(unsigned iteration, char *point);
    void timerbase_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t tm_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t timer_update_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t irq_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t timerbase_register_error_handler(
    camkes_error_handler_t handler);


#endif