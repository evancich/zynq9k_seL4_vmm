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
} from_0_cmu_cpu_clk_data
        ALIGN(MMIO_ALIGN)
        __attribute__((section("ignore_from_0_cmu_cpu_clk")))
        VISIBLE;



volatile Buf * cmu_cpu_clk =
    (volatile Buf *) & from_0_cmu_cpu_clk_data;



int cmu_cpu_clk_wrap_ptr(dataport_ptr_t *p, void *ptr) {
    
    off_t _camkes_offset_124 = (off_t)((uintptr_t)ptr - (uintptr_t)cmu_cpu_clk);
    if (_camkes_offset_124 < sizeof(Buf)) {
        p->id = 4;
        p->offset = _camkes_offset_124;
        return 0;
    } else {
        return -1;
    }
}

void * cmu_cpu_clk_unwrap_ptr(dataport_ptr_t *p) {
    if (p->id == 4) {
        return (void*)((uintptr_t)cmu_cpu_clk + (uintptr_t)p->offset);
    } else {
        return NULL;
    }
}










static_assert(sizeof(Buf) == 4096, "Data type mismatch!");

void * cmu_cpu_clk_translate_paddr(
        uintptr_t paddr, size_t size) {
    if (paddr == 268500992 && size == 4096) {
        return (void*)cmu_cpu_clk;
    }
    return NULL;
}

