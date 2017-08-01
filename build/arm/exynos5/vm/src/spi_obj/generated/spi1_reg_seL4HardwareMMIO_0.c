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

#include <assert.h>
#include <camkes/dataport.h>
#include <stddef.h>
#include <stdint.h>
#include <utils/util.h>





#define MMIO_ALIGN (1 << 12)
struct {
    char content[ROUND_UP_UNSAFE(sizeof(Buf),
        PAGE_SIZE_4K)];
} from_0_spi1_reg_data
        ALIGN(MMIO_ALIGN)
        __attribute__((section("ignore_from_0_spi1_reg")))
        VISIBLE;



volatile Buf * spi1_reg =
    (volatile Buf *) & from_0_spi1_reg_data;



int spi1_reg_wrap_ptr(dataport_ptr_t *p, void *ptr) {
    
    off_t _camkes_offset_466 = (off_t)((uintptr_t)ptr - (uintptr_t)spi1_reg);
    if (_camkes_offset_466 < sizeof(Buf)) {
        p->id = 14;
        p->offset = _camkes_offset_466;
        return 0;
    } else {
        return -1;
    }
}

void * spi1_reg_unwrap_ptr(dataport_ptr_t *p) {
    if (p->id == 14) {
        return (void*)((uintptr_t)spi1_reg + (uintptr_t)p->offset);
    } else {
        return NULL;
    }
}










static_assert(sizeof(Buf) == 4096, "Data type mismatch!");

void * spi1_reg_translate_paddr(
        uintptr_t paddr, size_t size) {
    if (paddr == 315817984 && size == 4096) {
        return (void*)spi1_reg;
    }
    return NULL;
}

