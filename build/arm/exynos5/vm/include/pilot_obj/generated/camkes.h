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



    

    

    


    




    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
#include <gcs_buf_seL4SharedData_0.h>
        
    
    
        
    

    
        
    
    
        
    

    
        
#include <px4_buf_seL4SharedData_0.h>
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
        
    
    
        
    

    
        
    
        
    
    
        
    


const char *get_instance_name(void);

/* Attributes */





    
        
            
                int
            
        
        uart_gcs_write(
            
              
                
                  int
                
                uart_num
              
              
                ,
              
            
              
                
                  int
                
                wsize
              
              
            
            
        ) NONNULL_ALL ;
    

    
        
            
                int
            
        
        uart_px4_write(
            
              
                
                  int
                
                uart_num
              
              
                ,
              
            
              
                
                  int
                
                wsize
              
              
            
            
        ) NONNULL_ALL ;
    

    
        
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
    

    
        
            void
        
        mavlink_recv(
            
              
                
                  int
                
                uart_num
              
              
                ,
              
            
              
                
                  int
                
                c
              
              
            
            
        ) NONNULL_ALL ;
    





    void signal_emit(void);

    void restart_vm_emit(void);



    extern Buf * gcs_buf
    ;

    extern Buf * px4_buf
    ;








/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void mavlink__init(void) WEAK;

    void mavlink_timing_get_points(char ***points, size_t *size);
    uint64_t mavlink_timing_get_entry(unsigned iteration, char *point);
    void mavlink_timing_reset(void);

    void uart_gcs__init(void) WEAK;

    void uart_gcs_timing_get_points(char ***points, size_t *size);
    uint64_t uart_gcs_timing_get_entry(unsigned iteration, char *point);
    void uart_gcs_timing_reset(void);

    void uart_px4__init(void) WEAK;

    void uart_px4_timing_get_points(char ***points, size_t *size);
    uint64_t uart_px4_timing_get_entry(unsigned iteration, char *point);
    void uart_px4_timing_reset(void);

    void pwm__init(void) WEAK;

    void pwm_timing_get_points(char ***points, size_t *size);
    uint64_t pwm_timing_get_entry(unsigned iteration, char *point);
    void pwm_timing_reset(void);

    void signal__init(void) WEAK;

    void signal_timing_get_points(char ***points, size_t *size);
    uint64_t signal_timing_get_entry(unsigned iteration, char *point);
    void signal_timing_reset(void);

    void restart_vm__init(void) WEAK;

    void restart_vm_timing_get_points(char ***points, size_t *size);
    uint64_t restart_vm_timing_get_entry(unsigned iteration, char *point);
    void restart_vm_timing_reset(void);

    void gcs_buf__init(void) WEAK;

    void gcs_buf_timing_get_points(char ***points, size_t *size);
    uint64_t gcs_buf_timing_get_entry(unsigned iteration, char *point);
    void gcs_buf_timing_reset(void);

    void px4_buf__init(void) WEAK;

    void px4_buf_timing_get_points(char ***points, size_t *size);
    uint64_t px4_buf_timing_get_entry(unsigned iteration, char *point);
    void px4_buf_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t mavlink_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t uart_gcs_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t uart_px4_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t pwm_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t signal_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t restart_vm_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t gcs_buf_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t px4_buf_register_error_handler(
    camkes_error_handler_t handler);


#endif