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

/* Linker script for CAmkES components. */


  







  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  



SECTIONS {

    guarded (NOLOAD) : ALIGN(4096) {
        *(guarded)
    }

    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
          
        
        
          
        
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
          
        
        
          
            shared_to_0_client_buf (NOLOAD) : ALIGN(0x1000) {
              *(shared_to_0_client_buf)
            }
          
        
      
    
      
    
      
        
          
        
        
          
        
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    

    
      
        
          
        
      
    
      
        
          
        
      
    
      
        
          
        
      
    
      
        
          
        
      
    
      
        
          
        
      
    
      
        
          
        
      
    
      
        
          
        
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
    
      
        
          
        
      
    
      
    
      
    
      
    
      
    
      
        
          
            ignore_from_0_uart0base (NOLOAD) : ALIGN(0x100000) {
              *(ignore_from_0_uart0base)
            }
          
        
      
    
      
    
      
        
          
        
      
    
      
    
      
    
      
    
      
    
      
    
      
        
          
        
      
    
      
    
      
    
      
    
      
        
          
        
      
    
      
    
      
    
      
    
      
    

    

        /* The ARM GNU Assembler does not permit allignment constraints of more than
         * 15 bits. To work around this limitation, objects which are multiples of
         * page sizes that require page-size-alignment are placed in sections aligned
         * to the size of a page. A section for 12-bit-aligned regular pages is
         * included for consistency.
         */

        

            

            align_12bit (NOLOAD) : ALIGN(4096) {
                *(align_12bit)
            }

        

            

            align_16bit (NOLOAD) : ALIGN(65536) {
                *(align_16bit)
            }

        

            

            align_21bit (NOLOAD) : ALIGN(2097152) {
                *(align_21bit)
            }

        

            

            align_25bit (NOLOAD) : ALIGN(33554432) {
                *(align_25bit)
            }

        
    
}
INSERT AFTER .bss;