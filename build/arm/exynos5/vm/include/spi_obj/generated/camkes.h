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



    

    


    




    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
#include <spi1_can_seL4SharedData_0.h>
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
    
        
    

    
        
    
        
    
    
        
    

    
        
    
        
    
    
        
    


const char *get_instance_name(void);

/* Attributes */





    
        
            void
        
        gpio_spi_can_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        gpio_spi_mpu_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        gpio_spi_acc_mag_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        gpio_spi_gyro_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        gpio_spi_baro_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    
        
            void
        
        gpio_spi_ext_nss(
            
              
                
                  int
                
                state
              
              
            
            
        ) NONNULL_ALL ;
    

    
        
            
                unsigned int
            
        
        clktree_set_spi1_freq(
            
              
                
                  unsigned int
                
                hz
              
              
            
            
        ) NONNULL_ALL ;
    
        
            
                unsigned int
            
        
        clktree_get_spi1_freq(
            
            
              void
            
        ) NONNULL_ALL ;
    

    
        
            
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
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void spi1_int_wait(void)
        
         WARNING("spi1_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int spi1_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("spi1_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int spi1_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("spi1_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int spi1_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void spi1_int_handle(void);





    extern Buf * spi1_reg
    ;

    extern Buf * spi1_can
    ;





    int bus_sem_wait(void) WARN_UNUSED_RESULT;
    int bus_sem_trywait(void) WARN_UNUSED_RESULT;
    int bus_sem_post(void) WARN_UNUSED_RESULT;




/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void spi__init(void) WEAK;

    void spi_timing_get_points(char ***points, size_t *size);
    uint64_t spi_timing_get_entry(unsigned iteration, char *point);
    void spi_timing_reset(void);

    void gpio__init(void) WEAK;

    void gpio_timing_get_points(char ***points, size_t *size);
    uint64_t gpio_timing_get_entry(unsigned iteration, char *point);
    void gpio_timing_reset(void);

    void clktree__init(void) WEAK;

    void clktree_timing_get_points(char ***points, size_t *size);
    uint64_t clktree_timing_get_entry(unsigned iteration, char *point);
    void clktree_timing_reset(void);

    void spi1_int__init(void) WEAK;

    void spi1_int_timing_get_points(char ***points, size_t *size);
    uint64_t spi1_int_timing_get_entry(unsigned iteration, char *point);
    void spi1_int_timing_reset(void);

    void spi1_reg__init(void) WEAK;

    void spi1_reg_timing_get_points(char ***points, size_t *size);
    uint64_t spi1_reg_timing_get_entry(unsigned iteration, char *point);
    void spi1_reg_timing_reset(void);

    void spi1_can__init(void) WEAK;

    void spi1_can_timing_get_points(char ***points, size_t *size);
    uint64_t spi1_can_timing_get_entry(unsigned iteration, char *point);
    void spi1_can_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t spi_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t gpio_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t clktree_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t spi1_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t spi1_reg_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t spi1_can_register_error_handler(
    camkes_error_handler_t handler);


#endif