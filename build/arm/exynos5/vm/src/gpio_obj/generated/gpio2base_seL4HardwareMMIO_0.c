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
} from_0_gpio2base_data
        ALIGN(MMIO_ALIGN)
        __attribute__((section("ignore_from_0_gpio2base")))
        VISIBLE;



volatile Buf * gpio2base =
    (volatile Buf *) & from_0_gpio2base_data;



int gpio2base_wrap_ptr(dataport_ptr_t *p, void *ptr) {
    
    off_t _camkes_offset_121 = (off_t)((uintptr_t)ptr - (uintptr_t)gpio2base);
    if (_camkes_offset_121 < sizeof(Buf)) {
        p->id = 1;
        p->offset = _camkes_offset_121;
        return 0;
    } else {
        return -1;
    }
}

void * gpio2base_unwrap_ptr(dataport_ptr_t *p) {
    if (p->id == 1) {
        return (void*)((uintptr_t)gpio2base + (uintptr_t)p->offset);
    } else {
        return NULL;
    }
}










static_assert(sizeof(Buf) == 4096, "Data type mismatch!");

void * gpio2base_translate_paddr(
        uintptr_t paddr, size_t size) {
    if (paddr == 335544320 && size == 4096) {
        return (void*)gpio2base;
    }
    return NULL;
}

