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
    



    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void EINT14_wait(void)
         WEAK 
        
        ;
    int EINT14_poll(void) WARN_UNUSED_RESULT
         WEAK 
        
        ;
    int EINT14_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
         WEAK 
        
        ;
    int EINT14_acknowledge(void) WARN_UNUSED_RESULT
         WEAK ;
    /* Implemented by user code. */
    void EINT14_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
    void CANIntAck_wait(void)
        
        
        ;
    int CANIntAck_poll(void) WARN_UNUSED_RESULT
        
        
        ;
    int CANIntAck_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
        
        ;
    int CANIntAck_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void CANIntAck_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void irq_grp26_int_wait(void)
        
         WARNING("irq_grp26_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp26_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("irq_grp26_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp26_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("irq_grp26_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int irq_grp26_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void irq_grp26_int_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void irq_grp28_int_wait(void)
        
         WARNING("irq_grp28_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp28_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("irq_grp28_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp28_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("irq_grp28_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int irq_grp28_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void irq_grp28_int_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void irq_grp31_int_wait(void)
        
         WARNING("irq_grp31_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp31_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("irq_grp31_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int irq_grp31_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("irq_grp31_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int irq_grp31_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void irq_grp31_int_handle(void);

    
    
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
        
    void xint16_31_int_wait(void)
        
         WARNING("xint16_31_int_wait is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int xint16_31_int_poll(void) WARN_UNUSED_RESULT
        
         WARNING("xint16_31_int_poll is not provided by "
            "seL4HardwareInterrupt") 
        ;
    int xint16_31_int_reg_callback(void (*callback)(void*), void *arg) WARN_UNUSED_RESULT
        
         WARNING("xint16_31_int_reg_callback is not provided "
            "by seL4HardwareInterrupt") 
        ;
    int xint16_31_int_acknowledge(void) WARN_UNUSED_RESULT
        ;
    /* Implemented by user code. */
    void xint16_31_int_handle(void);



    void CANInt_emit(void);



    extern Buf * gpio1base
    ;

    extern Buf * gpio2base
    ;

    extern Buf * irqcbase
    ;

    extern Buf * clk_tree
    ;








/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void gpio__init(void) WEAK;

    void gpio_timing_get_points(char ***points, size_t *size);
    uint64_t gpio_timing_get_entry(unsigned iteration, char *point);
    void gpio_timing_reset(void);

    void CANInt__init(void) WEAK;

    void CANInt_timing_get_points(char ***points, size_t *size);
    uint64_t CANInt_timing_get_entry(unsigned iteration, char *point);
    void CANInt_timing_reset(void);

    void EINT14__init(void) WEAK;

    void EINT14_timing_get_points(char ***points, size_t *size);
    uint64_t EINT14_timing_get_entry(unsigned iteration, char *point);
    void EINT14_timing_reset(void);

    void CANIntAck__init(void) WEAK;

    void CANIntAck_timing_get_points(char ***points, size_t *size);
    uint64_t CANIntAck_timing_get_entry(unsigned iteration, char *point);
    void CANIntAck_timing_reset(void);

    void irq_grp26_int__init(void) WEAK;

    void irq_grp26_int_timing_get_points(char ***points, size_t *size);
    uint64_t irq_grp26_int_timing_get_entry(unsigned iteration, char *point);
    void irq_grp26_int_timing_reset(void);

    void irq_grp28_int__init(void) WEAK;

    void irq_grp28_int_timing_get_points(char ***points, size_t *size);
    uint64_t irq_grp28_int_timing_get_entry(unsigned iteration, char *point);
    void irq_grp28_int_timing_reset(void);

    void irq_grp31_int__init(void) WEAK;

    void irq_grp31_int_timing_get_points(char ***points, size_t *size);
    uint64_t irq_grp31_int_timing_get_entry(unsigned iteration, char *point);
    void irq_grp31_int_timing_reset(void);

    void xint16_31_int__init(void) WEAK;

    void xint16_31_int_timing_get_points(char ***points, size_t *size);
    uint64_t xint16_31_int_timing_get_entry(unsigned iteration, char *point);
    void xint16_31_int_timing_reset(void);

    void gpio1base__init(void) WEAK;

    void gpio1base_timing_get_points(char ***points, size_t *size);
    uint64_t gpio1base_timing_get_entry(unsigned iteration, char *point);
    void gpio1base_timing_reset(void);

    void gpio2base__init(void) WEAK;

    void gpio2base_timing_get_points(char ***points, size_t *size);
    uint64_t gpio2base_timing_get_entry(unsigned iteration, char *point);
    void gpio2base_timing_reset(void);

    void irqcbase__init(void) WEAK;

    void irqcbase_timing_get_points(char ***points, size_t *size);
    uint64_t irqcbase_timing_get_entry(unsigned iteration, char *point);
    void irqcbase_timing_reset(void);

    void clk_tree__init(void) WEAK;

    void clk_tree_timing_get_points(char ***points, size_t *size);
    uint64_t clk_tree_timing_get_entry(unsigned iteration, char *point);
    void clk_tree_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t gpio_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t CANInt_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t EINT14_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t CANIntAck_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t irq_grp26_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t irq_grp28_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t irq_grp31_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t xint16_31_int_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t gpio1base_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t gpio2base_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t irqcbase_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t clk_tree_register_error_handler(
    camkes_error_handler_t handler);


#endif