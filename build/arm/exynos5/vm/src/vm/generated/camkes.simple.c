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

/* This template is meant to be used for components that are themselves dynamic systems
 * and need to create seL4 objects dynamically at run time. This is *not* the standard
 * use case for CAmkES and should only be used as a last resort if what you want is
 * really not possible any other way. This template is also highly experimental and
 * unsupported / undocumented */



#include <autoconf.h>
#include <assert.h>
#include <sel4/types.h>
#include <sel4/sel4.h>
#include <sel4utils/mapping.h>
#include <stddef.h>
#include <stdint.h>
#include <camkes/error.h>
#include <camkes/tls.h>
#include <vka/kobject_t.h>

#include <simple/simple.h>













    
    

    
    

    
    
        
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
            
            
            
        
    

    
    

    
    

    
    

    
    

    
    

    
    

    
    

    
    

    
    











    
        
        
    
        
        
    
        
        
    
        
        
    








    
    static seL4_CPtr mmio_cap_lookup_2685009924096[] = {
    
        
        
        
        27,
        
    
    };

    
    static seL4_CPtr mmio_cap_lookup_2685665284096[] = {
    
        
        
        
        28,
        
    
    };

    
    static seL4_CPtr mmio_cap_lookup_3229614084096[] = {
    
        
        
        
        29,
        
    
    };

    
    static seL4_CPtr mmio_cap_lookup_2685173764096[] = {
    
        
        
        
        30,
        
    
    };






    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    
        
        
        
        
        
    












    







    
        
        
    
        
        
    
        
        
    
        
        
    
        
        
    







    
    
        
    


/* Static declaration for our cap information. We will populate this when we make
 * the simple */
typedef struct camkes_untyped {
    seL4_CPtr cptr;
    uintptr_t paddr;
    int size_bits;
    int device;
} camkes_untyped_t;
typedef struct camkes_simple_data {

    camkes_untyped_t untyped[28];
    seL4_CPtr inittcb;
    seL4_CPtr initsc;
} camkes_simple_data_t;
static camkes_simple_data_t simple_data;
static bool camkes_simple_init = false;

static int simple_camkes_untyped_count(void *data) {
    return 28;
}

static int simple_camkes_cap_count(void *data) {
    
    return 35;
}

static seL4_CPtr simple_camkes_nth_untyped(void *data, int n, size_t *size_bits, uintptr_t *paddr, bool *device) {
    camkes_simple_data_t *camkes = (camkes_simple_data_t *)data;
    if (size_bits) {
        *size_bits = (size_t)camkes->untyped[n].size_bits;
    }
    if (paddr) {
        *paddr = camkes->untyped[n].paddr;
    }
    if (device) {
        *device = camkes->untyped[n].device;
    }
    return camkes->untyped[n].cptr;
}

static seL4_Error simple_camkes_get_frame_cap(void *data, void *paddr, int size_bits, cspacepath_t *path) {
    
        
            
            if ((uintptr_t)paddr >= (uintptr_t)268500992 && (uintptr_t)paddr < (uintptr_t)268500992 + (uintptr_t)4096 && size_bits == 12) {
                return seL4_CNode_Copy(path->root, path->capPtr, path->capDepth, 15, mmio_cap_lookup_2685009924096[((uintptr_t)paddr - (uintptr_t)268500992) >> 12], CONFIG_WORD_SIZE, seL4_AllRights);
            }
        
            
            if ((uintptr_t)paddr >= (uintptr_t)268566528 && (uintptr_t)paddr < (uintptr_t)268566528 + (uintptr_t)4096 && size_bits == 12) {
                return seL4_CNode_Copy(path->root, path->capPtr, path->capDepth, 15, mmio_cap_lookup_2685665284096[((uintptr_t)paddr - (uintptr_t)268566528) >> 12], CONFIG_WORD_SIZE, seL4_AllRights);
            }
        
            
            if ((uintptr_t)paddr >= (uintptr_t)322961408 && (uintptr_t)paddr < (uintptr_t)322961408 + (uintptr_t)4096 && size_bits == 12) {
                return seL4_CNode_Copy(path->root, path->capPtr, path->capDepth, 15, mmio_cap_lookup_3229614084096[((uintptr_t)paddr - (uintptr_t)322961408) >> 12], CONFIG_WORD_SIZE, seL4_AllRights);
            }
        
            
            if ((uintptr_t)paddr >= (uintptr_t)268517376 && (uintptr_t)paddr < (uintptr_t)268517376 + (uintptr_t)4096 && size_bits == 12) {
                return seL4_CNode_Copy(path->root, path->capPtr, path->capDepth, 15, mmio_cap_lookup_2685173764096[((uintptr_t)paddr - (uintptr_t)268517376) >> 12], CONFIG_WORD_SIZE, seL4_AllRights);
            }
        
    
    return seL4_FailedLookup;
}

static seL4_CPtr simple_camkes_nth_cap(void *data, int n) {
    camkes_simple_data_t *camkes = (camkes_simple_data_t *)data;
    switch(n) {
    case 0:
        return 15;
    case 1:
        return 16;
    
        case 2 ... 11:
            return camkes->untyped[n - 2].cptr;
    
    
    
    
        
        
        case 12 ... 12:
            return mmio_cap_lookup_2685009924096[n - 12];
        
    
        
        
        case 13 ... 13:
            return mmio_cap_lookup_2685665284096[n - 13];
        
    
        
        
        case 14 ... 14:
            return mmio_cap_lookup_3229614084096[n - 14];
        
    
        
        
        case 15 ... 15:
            return mmio_cap_lookup_2685173764096[n - 15];
        
    
    
    
    
        case 16:
            return 31;
    
        case 17:
            return 32;
    
        case 18:
            return 33;
    
        case 19:
            return 34;
    
        case 20:
            return 35;
    
        case 21:
            return 36;
    
        case 22:
            return 37;
    
        case 23:
            return 38;
    
        case 24:
            return 39;
    
        case 25:
            return 40;
    
        case 26:
            return 41;
    
        case 27:
            return 42;
    
        case 28:
            return 43;
    
        case 29:
            return 44;
    
        case 30:
            return 45;
    
        case 31:
            return 46;
    
        case 32:
            return 47;
    
        case 33:
            return 48;
    
    case 34:
        
        return 56;
    default:
        assert(!"Invalid cap requested");
    }
    return 0;
}

static seL4_CPtr simple_camkes_init_cap(void *data, seL4_CPtr cap) {
    camkes_simple_data_t *camkes = (camkes_simple_data_t *)data;
    switch(cap) {
    case seL4_CapInitThreadCNode:
        return 15;
    case seL4_CapInitThreadPD:
        return 16;
    case seL4_CapInitThreadTCB:
        return camkes->inittcb;
    
    default:
        assert(!"Unsupported init_cap requested");
    }
    return 0;
}

static uint8_t simple_camkes_cnode_size(void *data) {
    
        return 23;
    
}

static seL4_CPtr simple_camkes_get_IOPort_cap(void *data, uint16_t start_port, uint16_t end_port) {
    assert(start_port <= end_port);
    
    ERR(camkes_error, ((camkes_error_t){
            .type = CE_ALLOCATION_FAILURE,
            .instance = "vm",
            .description = "unable to find IO port cap",
        }), ({
            return 0;
        }));
    return 0;
}

#ifdef CONFIG_IOMMU
static seL4_Error simple_camkes_get_iospace(void *data, uint16_t domainID, uint16_t deviceID, cspacepath_t *path) {
    
        return seL4_FailedLookup;
    
}
#endif

#ifdef CONFIG_ARM_SMMU
static seL4_Error simple_camkes_get_iospace_cap_count(void *data, int *count) {
    if (count) {
        *count = 0;
    }
    return seL4_NoError;
}

static seL4_CPtr simple_camkes_get_iospace_nth_cap(void *data, int n) {
    
        return 0;
    
}
#endif

static void simple_camkes_print(void *data) {
    printf("camkes is too cool to print out simple information\n");
}

static seL4_Error simple_camkes_set_ASID(void *data, seL4_CPtr vspace) {
    
#ifdef CONFIG_ARCH_X86
        return seL4_X86_ASIDPool_Assign(49, vspace);
#elif CONFIG_ARCH_ARM
        return seL4_ARM_ASIDPool_Assign(49, vspace);
#endif
    
}

static seL4_Error simple_camkes_get_irq(void *data, int irq, seL4_CNode cnode, seL4_Word index, uint8_t depth) {
    
        switch(irq) {
        
            case 27:
                return seL4_CNode_Copy(cnode, index, depth, 15, 51, CONFIG_WORD_SIZE, seL4_AllRights);
        
            case 85:
                return seL4_CNode_Copy(cnode, index, depth, 15, 52, CONFIG_WORD_SIZE, seL4_AllRights);
        
            case 107:
                return seL4_CNode_Copy(cnode, index, depth, 15, 53, CONFIG_WORD_SIZE, seL4_AllRights);
        
            case 109:
                return seL4_CNode_Copy(cnode, index, depth, 15, 54, CONFIG_WORD_SIZE, seL4_AllRights);
        
            case 103:
                return seL4_CNode_Copy(cnode, index, depth, 15, 55, CONFIG_WORD_SIZE, seL4_AllRights);
        
            default:
                return seL4_FailedLookup;
        }
    
}

static uintptr_t make_frame_get_paddr(seL4_CPtr untyped) {
    int type;
    int error;
    uintptr_t ret;
    type = seL4_ARCH_4KPage;
#ifdef CONFIG_KERNEL_STABLE
    error = seL4_Untyped_RetypeAtOffset(untyped, type, 0, 12, 15, 0, 0, 56, 1);
#else
    error = seL4_Untyped_Retype(untyped, type, 12, 15, 0, 0, 56, 1);
#endif
    ERR_IF(error != seL4_NoError, camkes_error, ((camkes_error_t){
            .type = CE_SYSCALL_FAILED,
            .instance = "vm",
            .description = "failed to retype an untyped while trying to determine its physical address",
            .syscall = UntypedRetype,
            .error = error,
        }), ({
            return (uintptr_t)NULL;
        }));
    seL4_ARCH_Page_GetAddress_t res = seL4_ARCH_Page_GetAddress(56);
    ret = res.paddr;
    ERR_IF(ret == 0, camkes_error, ((camkes_error_t){
            .type = CE_SYSCALL_FAILED,
            .instance = "vm",
            .description = "failed to retrieve the physical address of a temporary frame",
            .syscall = ARCHPageGetAddress,
            .error = res.error,
        }), ({
            return (uintptr_t)NULL;
        }));
    seL4_CNode_Delete(15, 56, CONFIG_WORD_SIZE);
    return ret;
}

static void camkes_make_arch_simple(arch_simple_t *simple) {
    simple->irq = &simple_camkes_get_irq;
#ifdef CONFIG_IOMMU
    simple->iospace = &simple_camkes_get_iospace;
#endif

}

static ssize_t camkes_get_extended_bootinfo(void *data, seL4_Word type, void *dest, ssize_t max_len) {
    seL4_BootInfoHeader *mapping = NULL;
    
    if (mapping && mapping->len != -1) {
        ssize_t len = MIN(mapping->len, max_len);
        memcpy(dest, mapping, len);
        return len;
    }
    return -1;
}

static seL4_Word camkes_simple_arch_info(void *data) {
    seL4_Word word = 0;
    
    return word;
}

static UNUSED seL4_CPtr camkes_simple_sched_ctrl(void *data, seL4_Word core) {
    
    return seL4_CapNull;
}

void camkes_make_simple(simple_t *simple) {
    if (!camkes_simple_init) {
        
        
        
            
                simple_data.untyped[0] = (camkes_untyped_t) {.cptr = 17, .paddr = make_frame_get_paddr(17), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[1] = (camkes_untyped_t) {.cptr = 18, .paddr = make_frame_get_paddr(18), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[2] = (camkes_untyped_t) {.cptr = 19, .paddr = make_frame_get_paddr(19), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[3] = (camkes_untyped_t) {.cptr = 20, .paddr = make_frame_get_paddr(20), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[4] = (camkes_untyped_t) {.cptr = 21, .paddr = make_frame_get_paddr(21), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[5] = (camkes_untyped_t) {.cptr = 22, .paddr = make_frame_get_paddr(22), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[6] = (camkes_untyped_t) {.cptr = 23, .paddr = make_frame_get_paddr(23), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[7] = (camkes_untyped_t) {.cptr = 24, .paddr = make_frame_get_paddr(24), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[8] = (camkes_untyped_t) {.cptr = 25, .paddr = make_frame_get_paddr(25), .size_bits = 24, .device = false};
            
        
            
                simple_data.untyped[9] = (camkes_untyped_t) {.cptr = 26, .paddr = make_frame_get_paddr(26), .size_bits = 24, .device = false};
            
        
        
            simple_data.untyped[10] = (camkes_untyped_t){.cptr = 31, .paddr = 268435456, .size_bits = 12, .device = true};
        
            simple_data.untyped[11] = (camkes_untyped_t){.cptr = 32, .paddr = 273178624, .size_bits = 12, .device = true};
        
            simple_data.untyped[12] = (camkes_untyped_t){.cptr = 33, .paddr = 314703872, .size_bits = 12, .device = true};
        
            simple_data.untyped[13] = (camkes_untyped_t){.cptr = 34, .paddr = 268697600, .size_bits = 12, .device = true};
        
            simple_data.untyped[14] = (camkes_untyped_t){.cptr = 35, .paddr = 268701696, .size_bits = 12, .device = true};
        
            simple_data.untyped[15] = (camkes_untyped_t){.cptr = 36, .paddr = 268705792, .size_bits = 12, .device = true};
        
            simple_data.untyped[16] = (camkes_untyped_t){.cptr = 37, .paddr = 268709888, .size_bits = 12, .device = true};
        
            simple_data.untyped[17] = (camkes_untyped_t){.cptr = 38, .paddr = 268713984, .size_bits = 12, .device = true};
        
            simple_data.untyped[18] = (camkes_untyped_t){.cptr = 39, .paddr = 268763136, .size_bits = 12, .device = true};
        
            simple_data.untyped[19] = (camkes_untyped_t){.cptr = 40, .paddr = 268632064, .size_bits = 12, .device = true};
        
            simple_data.untyped[20] = (camkes_untyped_t){.cptr = 41, .paddr = 268664832, .size_bits = 12, .device = true};
        
            simple_data.untyped[21] = (camkes_untyped_t){.cptr = 42, .paddr = 268550144, .size_bits = 12, .device = true};
        
            simple_data.untyped[22] = (camkes_untyped_t){.cptr = 43, .paddr = 268533760, .size_bits = 12, .device = true};
        
            simple_data.untyped[23] = (camkes_untyped_t){.cptr = 44, .paddr = 303104000, .size_bits = 12, .device = true};
        
            simple_data.untyped[24] = (camkes_untyped_t){.cptr = 45, .paddr = 303235072, .size_bits = 12, .device = true};
        
            simple_data.untyped[25] = (camkes_untyped_t){.cptr = 46, .paddr = 304087040, .size_bits = 12, .device = true};
        
            simple_data.untyped[26] = (camkes_untyped_t){.cptr = 47, .paddr = 304218112, .size_bits = 12, .device = true};
        
            simple_data.untyped[27] = (camkes_untyped_t){.cptr = 48, .paddr = 1073741824, .size_bits = 29, .device = true};
        
        camkes_simple_init = true;
    }
    /* Assume we are called from init */
    simple_data.inittcb = camkes_get_tls()->tcb_cap;
    simple_data.initsc = camkes_get_tls()->sc_cap;
    simple->data = &simple_data;
    simple->frame_info = /*&simple_camkes_get_frame_info*/NULL;
    simple->frame_cap = &simple_camkes_get_frame_cap;
    simple->frame_mapping = /*&simple_camkes_get_frame_mapping*/NULL;
    simple->ASID_assign = &simple_camkes_set_ASID;
    simple->cap_count = &simple_camkes_cap_count;
    simple->nth_cap = &simple_camkes_nth_cap;
    simple->init_cap = &simple_camkes_init_cap;
    simple->cnode_size = &simple_camkes_cnode_size;
    simple->untyped_count = &simple_camkes_untyped_count;
    simple->nth_untyped = &simple_camkes_nth_untyped;
    simple->userimage_count = /*&simple_camkes_userimage_count*/NULL;
    simple->nth_userimage = /*&simple_camkes_nth_userimage*/NULL;
    simple->extended_bootinfo = &camkes_get_extended_bootinfo;
    simple->arch_info = &camkes_simple_arch_info;
#ifdef CONFIG_KERNEL_RT
    simple->sched_ctrl = &camkes_simple_sched_ctrl;
#endif
#ifdef CONFIG_ARM_SMMU
    simple->arch_simple.iospace_cap_count = simple_camkes_get_iospace_cap_count;
    simple->arch_simple.iospace_get_nth_cap = simple_camkes_get_iospace_nth_cap;
#endif
    simple->print = &simple_camkes_print;

    camkes_make_arch_simple(&simple->arch_simple);
}

