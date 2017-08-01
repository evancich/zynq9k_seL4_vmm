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

#include <camkes/dataport.h>
#include <stdint.h>
#include <stdlib.h>
#include <utils/util.h>







struct {
    char content[ROUND_UP_UNSAFE(sizeof(Buf),
        PAGE_SIZE_4K)];
} to_0_spi1_can_data
        __attribute__((section("shared_to_0_spi1_can")));





Buf * spi1_can =
    (Buf *) & to_0_spi1_can_data;

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



#include <stdlib.h>



int spi1_can_wrap_ptr(dataport_ptr_t *p, void *ptr) {
    if ((uintptr_t)ptr < (uintptr_t)spi1_can ||
            (uintptr_t)ptr >= (uintptr_t)spi1_can + sizeof(Buf)) {
        return -1;
    }
    p->id = 16;
    p->offset = (off_t)((uintptr_t)ptr - (uintptr_t)spi1_can);
    return 0;
}

void * spi1_can_unwrap_ptr(dataport_ptr_t *p) {
    if (p->id == 16) {
        return (void*)((uintptr_t)spi1_can + (uintptr_t)p->offset);
    } else {
        return NULL;
    }
}