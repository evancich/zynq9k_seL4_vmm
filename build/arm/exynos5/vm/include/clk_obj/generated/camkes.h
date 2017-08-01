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





    
        
            
                unsigned int
            
        
        clktree_set_spi1_freq(
            
              
                
                  unsigned int
                
                hz
              
              
            
            
        ) NONNULL_ALL ;
    
        
            
                unsigned int
            
        
        clktree_get_spi1_freq(
            
            
              void
            
        ) NONNULL_ALL ;
    







    extern Buf * cmu_cpu_clk
    ;

    extern Buf * cmu_top_clk
    ;

    extern Buf * cmu_core_clk
    ;








/* Entry point expected to be provided by the user. */
int run(void);



/* Optional init functions provided by the user. */
void pre_init(void) WEAK;
void post_init(void) WEAK;

    void clktree__init(void) WEAK;

    void clktree_timing_get_points(char ***points, size_t *size);
    uint64_t clktree_timing_get_entry(unsigned iteration, char *point);
    void clktree_timing_reset(void);

    void cmu_cpu_clk__init(void) WEAK;

    void cmu_cpu_clk_timing_get_points(char ***points, size_t *size);
    uint64_t cmu_cpu_clk_timing_get_entry(unsigned iteration, char *point);
    void cmu_cpu_clk_timing_reset(void);

    void cmu_top_clk__init(void) WEAK;

    void cmu_top_clk_timing_get_points(char ***points, size_t *size);
    uint64_t cmu_top_clk_timing_get_entry(unsigned iteration, char *point);
    void cmu_top_clk_timing_reset(void);

    void cmu_core_clk__init(void) WEAK;

    void cmu_core_clk_timing_get_points(char ***points, size_t *size);
    uint64_t cmu_core_clk_timing_get_entry(unsigned iteration, char *point);
    void cmu_core_clk_timing_reset(void);


void set_putchar(void (*putchar)(int c));


  camkes_error_handler_t clktree_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t cmu_cpu_clk_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t cmu_top_clk_register_error_handler(
    camkes_error_handler_t handler);

  camkes_error_handler_t cmu_core_clk_register_error_handler(
    camkes_error_handler_t handler);


#endif