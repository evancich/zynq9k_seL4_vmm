/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#ifndef SEL4ARM_VMM_DEVICES_VRAM_H
#define SEL4ARM_VMM_DEVICES_VRAM_H

#include <sel4arm-vmm/vm.h>
#include <sel4arm-vmm/devices.h>

int vm_install_ram_default(vm_t *vm);

int vm_install_ram_range(vm_t *vm, uintptr_t start, size_t size);

#endif /* SEL4ARM_VMM_DEVICES_VRAM_H */
