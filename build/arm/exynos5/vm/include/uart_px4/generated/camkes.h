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



    


    




    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
#include <client_buf_seL4SharedData_0.h>
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
        
    
    
        
    

    
        
    
        
    
    
        
    


const char *get_instance_name(void);

/* Attributes */



    
    extern const int ID ;



    
        
            void
        
        pilot_recv(
            
              
                
                  int
                
                uart_num
              
              
                ,
              
            
              
                
                  int
                
                c
              
              
            
            
        ) NONNULL_ALL ;
    

    
        
            
                int
            
        
        uart_write(
            
              
                
                  int
                
                uart_num
              
              
                ,
              
            
              
                
                  int
                
                wsize
              
              
            
            
        ) NONNULL_ALL ;
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void interrupt_wait(void)
        
         WARNING("interrupt_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int interrupt_poll(void) WARN_UNUSED_RESULT
        
         WARNING("interrupt_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int interrupt_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("interrupt_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int interrupt_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void interrupt_handle(void);





    extern Buf * uart0base
    ;

    extern Buf * client_buf
    ;





    int read_sem_wait(void) WARN_UNUSED_RESULT;
    int read_sem_trywait(void) WARN_UNUSED_RESULT;
    int read_sem_post(void) WARN_UNUSED_RESULT;

    int write_sem_wait(void) WARN_UNUSED_RESULT;
    int write_sem_trywait(void) WARN_UNUSED_RESULT;
    int write_sem_post(void) WARN_UNUSED_RESULT;




/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void uart__init(void) WEAK;

    void uart_timing_get_points(char ***points, size_t *size);
    uint64_t uart_timing_get_entry(unsigned iteration, char *point);
    void uart_timing_reset(void);

    void pilot__init(void) WEAK;

    void pilot_timing_get_points(char ***points, size_t *size);
    uint64_t pilot_timing_get_entry(unsigned iteration, char *point);
    void pilot_timing_reset(void);

    void interrupt__init(void) WEAK;

    void interrupt_timing_get_points(char ***points, size_t *size);
    uint64_t interrupt_timing_get_entry(unsigned iteration, char *point);
    void interrupt_timing_reset(void);

    void uart0base__init(void) WEAK;

    void uart0base_timing_get_points(char ***points, size_t *size);
    uint64_t uart0base_timing_get_entry(unsigned iteration, char *point);
    void uart0base_timing_reset(void);

    void client_buf__init(void) WEAK;

    void client_buf_timing_get_points(char ***points, size_t *size);
    uint64_t client_buf_timing_get_entry(unsigned iteration, char *point);
    void client_buf_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t uart_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t pilot_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t interrupt_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t uart0base_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t client_buf_register_error_handler(
    camkes_error_handler_t handler);


#endif