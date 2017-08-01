
	.arch_extension virt
	.arch_extension idiv
	.arch_extension sec
	.arch_extension mp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"kernel_final.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	idle_thread
	.syntax unified
	.arm
	.fpu softvfp
	.type	idle_thread, %function
idle_thread:
.LFB382:
	.file 1 "/home/sel4/work/work2/kernel/src/arch/arm/32/idle.c"
	.loc 1 16 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
.LBB5920:
.LBB5921:
	.file 2 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h"
	.loc 2 16 0 discriminator 1
	.syntax divided
@ 16 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	wfi
@ 0 "" 2
	.arm
	.syntax unified
	b	.L2
.LBE5921:
.LBE5920:
	.cfi_endproc
.LFE382:
	.size	idle_thread, .-idle_thread
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	putEncodedChar, %function
putEncodedChar:
.LFB473:
	.file 3 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/capdl.c"
	.loc 3 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 3 65 0
	cmp	r0, #187
.LBB5922:
.LBB5923:
	.file 4 "/home/sel4/work/work2/kernel/src/plat/exynos5/../exynos_common/io.c"
	.loc 4 44 0
	mvneq	r1, #1040384
.LBE5923:
.LBE5922:
	.loc 3 65 0
	beq	.L5
	cmp	r0, #255
.LBB5926:
.LBB5927:
	.loc 4 44 0
	mvneq	r1, #1040384
.LBE5927:
.LBE5926:
	.loc 3 65 0
	beq	.L6
	cmp	r0, #170
	beq	.L43
	.loc 3 79 0
	cmp	r0, #19
	bhi	.L12
.LBB5930:
.LBB5931:
	.loc 4 44 0
	mvn	r1, #1040384
.L27:
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L27
.LBE5931:
.LBE5930:
	.loc 3 81 0
	add	r0, r0, #20
.LVL1:
.LBB5934:
.LBB5932:
	.loc 4 45 0
	mov	r3, #170
.LBE5932:
.LBE5934:
	.loc 3 81 0
	uxtb	r0, r0
.LBB5935:
.LBB5936:
	.loc 4 44 0
	mvn	r2, #1040384
.LBE5936:
.LBE5935:
.LBB5938:
.LBB5933:
	.loc 4 45 0
	str	r3, [r1, #-4063]
.LVL2:
.L14:
.LBE5933:
.LBE5938:
.LBB5939:
.LBB5937:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L14
.LBE5937:
.LBE5939:
.LBB5940:
.LBB5941:
	.loc 4 45 0
	str	r0, [r2, #-4063]
.LVL3:
.L44:
.LBE5941:
.LBE5940:
	.loc 3 86 0
	bx	lr
.LVL4:
.L5:
.LBB5943:
.LBB5924:
	.loc 4 44 0
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L5
	.loc 4 45 0
	mov	r3, #170
.LBE5924:
.LBE5943:
.LBB5944:
.LBB5945:
	.loc 4 44 0
	mvn	r2, #1040384
.LBE5945:
.LBE5944:
.LBB5947:
.LBB5925:
	.loc 4 45 0
	str	r3, [r1, #-4063]
.L11:
.LBE5925:
.LBE5947:
.LBB5948:
.LBB5946:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L11
	.loc 4 45 0
	mov	r3, #162
	str	r3, [r2, #-4063]
.LBE5946:
.LBE5948:
	.loc 3 86 0
	bx	lr
.L6:
.LBB5949:
.LBB5928:
	.loc 4 44 0
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L6
	.loc 4 45 0
	mov	r3, #170
.LBE5928:
.LBE5949:
.LBB5950:
.LBB5951:
	.loc 4 44 0
	mvn	r2, #1040384
.LBE5951:
.LBE5950:
.LBB5953:
.LBB5929:
	.loc 4 45 0
	str	r3, [r1, #-4063]
.L10:
.LBE5929:
.LBE5953:
.LBB5954:
.LBB5952:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L10
	.loc 4 45 0
	mov	r3, #160
	str	r3, [r2, #-4063]
.LBE5952:
.LBE5954:
	.loc 3 86 0
	bx	lr
.L43:
.LBB5955:
.LBB5956:
	.loc 4 44 0
	mvn	r1, #1040384
.L7:
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L7
	.loc 4 45 0
	mov	r3, #170
.LBE5956:
.LBE5955:
.LBB5958:
.LBB5959:
	.loc 4 44 0
	mvn	r2, #1040384
.LBE5959:
.LBE5958:
.LBB5961:
.LBB5957:
	.loc 4 45 0
	str	r3, [r1, #-4063]
.L8:
.LBE5957:
.LBE5961:
.LBB5962:
.LBB5960:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L8
	.loc 4 45 0
	mov	r3, #161
	str	r3, [r2, #-4063]
.LBE5960:
.LBE5962:
	.loc 3 86 0
	bx	lr
.L12:
.LBB5963:
.LBB5942:
	.loc 4 44 0
	mvn	r2, #1040384
.L28:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L28
	.loc 4 45 0
	str	r0, [r2, #-4063]
	b	.L44
.LBE5942:
.LBE5963:
	.cfi_endproc
.LFE473:
	.size	putEncodedChar, .-putEncodedChar
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	sendWord, %function
sendWord:
.LFB475:
	.loc 3 111 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 3 112 0
	uxtb	r0, r0
.LVL6:
	.loc 3 111 0
	str	lr, [sp, #4]
	.loc 3 112 0
	bl	putEncodedChar
.LVL7:
	.loc 3 113 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL8:
	.loc 3 114 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL9:
	.loc 3 115 0
	lsr	r0, r4, #24
	.loc 3 116 0
	ldr	r4, [sp]
	.cfi_restore 4
.LVL10:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 3 115 0
	b	putEncodedChar
.LVL11:
	.cfi_endproc
.LFE475:
	.size	sendWord, .-sendWord
	.section	.boot.text,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	dist_init, %function
dist_init:
.LFB576:
	.file 5 "/home/sel4/work/work2/kernel/src/arch/arm/machine/gic_pl390.c"
	.loc 5 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 48 0
	movw	r3, #16639
	.loc 5 49 0
	mov	ip, #0
	.loc 5 48 0
	movt	r3, 65520
	.loc 5 51 0
	mov	r1, ip
	.loc 5 48 0
	ldr	r2, [r3, #-251]
	.loc 5 53 0
	mvn	r0, #0
	.loc 5 49 0
	str	ip, [r3, #-255]
	.loc 5 48 0
	and	r2, r2, #31
	add	r2, r2, #1
	lsl	r2, r2, #5
.LVL12:
.L48:
	.loc 5 53 0 discriminator 3
	lsr	r3, r1, #5
	.loc 5 51 0 discriminator 3
	add	r1, r1, #32
.LVL13:
	lsl	r3, r3, #2
	cmp	r2, r1
	sub	r3, r3, #1032192
	.loc 5 53 0 discriminator 3
	str	r0, [r3, #384]
	.loc 5 55 0 discriminator 3
	str	r0, [r3, #640]
	.loc 5 51 0 discriminator 3
	bhi	.L48
.LVL14:
	.loc 5 59 0 discriminator 1
	cmp	r2, #32
	beq	.L52
	.loc 5 61 0
	movw	ip, #16639
	movw	r0, #32896
	movt	ip, 65520
	movt	r0, 32896
	.loc 5 59 0
	mov	r1, #32
.LVL15:
.L51:
	.loc 5 61 0
	bic	r3, r1, #3
	.loc 5 59 0
	add	r1, r1, #4
.LVL16:
	.loc 5 61 0
	add	r3, r3, #1024
	.loc 5 59 0
	cmp	r2, r1
	.loc 5 61 0
	add	r3, ip, r3
	str	r0, [r3, #-255]
	.loc 5 59 0
	bhi	.L51
.LVL17:
.L52:
	.loc 5 72 0
	movw	ip, #16639
	movw	r0, #257
	movt	ip, 65520
	movt	r0, 257
	.loc 5 59 0
	mov	r1, #0
.L50:
.LVL18:
	.loc 5 72 0 discriminator 3
	bic	r3, r1, #3
	.loc 5 71 0 discriminator 3
	add	r1, r1, #4
.LVL19:
	.loc 5 72 0 discriminator 3
	add	r3, r3, #2048
	.loc 5 71 0 discriminator 3
	cmp	r2, r1
	.loc 5 72 0 discriminator 3
	add	r3, ip, r3
	str	r0, [r3, #-255]
	.loc 5 71 0 discriminator 3
	bhi	.L50
.LVL20:
	.loc 5 76 0 discriminator 1
	cmp	r2, #64
	bls	.L56
	.loc 5 77 0 discriminator 3
	movw	ip, #16639
	movw	r0, #21845
	movt	ip, 65520
	movt	r0, 21845
	.loc 5 76 0 discriminator 3
	mov	r1, #64
.LVL21:
.L55:
	.loc 5 77 0 discriminator 3
	lsr	r3, r1, #5
	.loc 5 76 0 discriminator 3
	add	r1, r1, #32
.LVL22:
	cmp	r2, r1
	.loc 5 77 0 discriminator 3
	add	r3, r3, #768
	add	r3, ip, r3, lsl #2
	str	r0, [r3, #-255]
	.loc 5 76 0 discriminator 3
	bhi	.L55
.LVL23:
.L56:
	.loc 5 83 0
	movw	r0, #16639
	.loc 5 76 0
	mov	r1, #0
	.loc 5 83 0
	movt	r0, 65520
	mvn	ip, #0
.L54:
.LVL24:
	lsr	r3, r1, #5
	.loc 5 81 0
	add	r1, r1, #32
.LVL25:
	cmp	r2, r1
	.loc 5 83 0
	add	r3, r3, #32
	add	r3, r0, r3, lsl #2
	str	ip, [r3, #-255]
	.loc 5 81 0
	bhi	.L54
	.loc 5 89 0
	mov	r3, #1
	str	r3, [r0, #-255]
	.loc 5 90 0
	bx	lr
	.cfi_endproc
.LFE576:
	.size	dist_init, .-dist_init
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cpu_iface_init, %function
cpu_iface_init:
.LFB577:
	.loc 5 94 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 5 98 0
	movw	r3, #16639
	.loc 5 104 0
	movw	ip, #32896
	.loc 5 94 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 5 115 0
	movw	r2, #20735
	.loc 5 94 0
	str	lr, [sp, #8]
	.loc 5 98 0
	movt	r3, 65520
	mvn	r1, #0
	.loc 5 115 0
	movt	r2, 65520
	.loc 5 104 0
	movt	ip, 32896
	.loc 5 115 0
	mov	r5, #0
	.loc 5 122 0
	mov	r4, #240
	.loc 5 123 0
	mov	lr, #3
	.loc 5 98 0
	str	r1, [r3, #129]
	.loc 5 99 0
	str	r1, [r3, #385]
	.loc 5 126 0
	movw	r0, #1023
	.loc 5 103 0
	str	r1, [r3, #-127]
	.loc 5 104 0
	str	ip, [r3, #769]
.LVL26:
	.loc 5 112 0
	str	r1, [r3, #3601]
.LVL27:
	str	r1, [r3, #3605]
.LVL28:
	str	r1, [r3, #3609]
.LVL29:
	str	r1, [r3, #3613]
.LVL30:
	.loc 5 115 0
	str	r5, [r2, #-255]
	.loc 5 122 0
	str	r4, [r2, #-251]
	.loc 5 123 0
	str	lr, [r2, #-247]
	.loc 5 125 0
	ldr	r3, [r2, #-243]
.LVL31:
	.loc 5 126 0
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	beq	.L65
.L64:
	.loc 5 127 0
	str	r3, [r2, #-239]
	.loc 5 128 0
	ldr	r3, [r2, #-243]
.LVL32:
	.loc 5 126 0
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	bne	.L64
.L65:
	.loc 5 130 0
	movw	r3, #20735
.LVL33:
	mov	r2, #1
	.loc 5 131 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	.loc 5 130 0
	movt	r3, 65520
	.loc 5 131 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	.loc 5 130 0
	str	r2, [r3, #-255]
	.loc 5 131 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE577:
	.size	cpu_iface_init, .-cpu_iface_init
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	preemptionPoint.part.63, %function
preemptionPoint.part.63:
.LFB938:
	.file 6 "/home/sel4/work/work2/kernel/src/model/preemption.c"
	.loc 6 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB5964:
.LBB5965:
	.file 7 "/home/sel4/work/work2/kernel/include/arch/arm/arch/machine/gic_pl390.h"
	.loc 7 188 0
	movw	r3, #20735
.LBE5965:
.LBE5964:
	.loc 6 35 0
	movw	r2, #:lower16:ksWorkUnitsCompleted
.LBB5969:
.LBB5966:
	.loc 7 188 0
	movt	r3, 65520
.LBE5966:
.LBE5969:
	.loc 6 35 0
	mov	r1, #0
.LBB5970:
.LBB5967:
	.loc 7 188 0
	ldr	r3, [r3, #-231]
.LBE5967:
.LBE5970:
	.loc 6 35 0
	movt	r2, #:upper16:ksWorkUnitsCompleted
	str	r1, [r2]
.LBB5971:
.LBB5968:
	.loc 7 188 0
	ubfx	r3, r3, #0, #10
.LBE5968:
.LBE5971:
	.loc 6 36 0
	cmp	r3, #1020
	.loc 6 42 0
	movcc	r0, #4
	movcs	r0, r1
	bx	lr
	.cfi_endproc
.LFE938:
	.size	preemptionPoint.part.63, .-preemptionPoint.part.63
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	putchar.part.64, %function
putchar.part.64:
.LFB939:
	.file 8 "/home/sel4/work/work2/kernel/src/machine/io.c"
	.loc 8 19 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL34:
.LBB5972:
.LBB5973:
.LBB5974:
	.loc 4 44 0
	mvn	r2, #1040384
.L73:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L73
	.loc 4 45 0
	mov	r3, #13
	str	r3, [r2, #-4063]
.LBE5974:
.LBE5973:
.LBE5972:
	.loc 8 25 0
	bx	lr
	.cfi_endproc
.LFE939:
	.size	putchar.part.64, .-putchar.part.64
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	print_string, %function
print_string:
.LFB727:
	.loc 8 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL35:
	.loc 8 42 0
	ldrb	r2, [r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L81
	.loc 8 39 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB5975:
.LBB5976:
.LBB5977:
.LBB5978:
.LBB5979:
	.loc 4 44 0
	mvn	r1, #1040384
	mov	r5, r0
	add	r4, r0, #1
.LBE5979:
.LBE5978:
.LBE5977:
.LBE5976:
.LBE5975:
	.loc 8 39 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LVL36:
.L78:
.LBB5988:
.LBB5986:
.LBB5984:
.LBB5982:
.LBB5980:
	.loc 4 44 0
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L78
.LBE5980:
.LBE5982:
.LBE5984:
	.loc 8 22 0
	cmp	r2, #10
.LBB5985:
.LBB5983:
.LBB5981:
	.loc 4 45 0
	str	r2, [r1, #-4063]
.LBE5981:
.LBE5983:
.LBE5985:
	.loc 8 22 0
	beq	.L90
.L79:
.LVL37:
	sub	r0, r4, r5
.LVL38:
.LBE5986:
.LBE5988:
	.loc 8 42 0 discriminator 3
	ldrb	r2, [r4], #1	@ zero_extendqisi2
.LVL39:
	cmp	r2, #0
	bne	.L78
	.loc 8 47 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL40:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL41:
.L90:
	.cfi_restore_state
.LBB5989:
.LBB5987:
	bl	putchar.part.64
.LVL42:
	b	.L79
.LVL43:
.L81:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
.LBE5987:
.LBE5989:
	.loc 8 42 0
	mov	r0, r2
.LVL44:
	.loc 8 46 0
	bx	lr
	.cfi_endproc
.LFE727:
	.size	print_string, .-print_string
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	print_unsigned_long.part.65, %function
print_unsigned_long.part.65:
.LFB940:
	.loc 8 76 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL45:
	.loc 8 95 0
	subs	r3, r0, #0
	beq	.L106
.LBB5990:
.LBB5991:
	.loc 8 65 0
	cmp	r1, #10
.LBE5991:
.LBE5990:
	.loc 8 76 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 8 95 0
	mov	r0, #0
.LVL46:
	.loc 8 76 0
	str	lr, [sp, #8]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB5995:
.LBB5996:
	.loc 8 56 0
	movw	lr, #52429
.LBE5996:
.LBE5995:
	.loc 8 101 0
	mov	r4, #48
	add	ip, sp, #4
.LBB6002:
.LBB5997:
	.loc 8 56 0
	movt	lr, 52428
.LVL47:
.LBE5997:
.LBE6002:
.LBB6003:
.LBB5992:
	.loc 8 65 0
	beq	.L94
.L126:
	cmp	r1, #16
	beq	.L124
.LVL48:
.LBE5992:
.LBE6003:
.LBB6004:
.LBB5998:
	.loc 8 52 0
	cmp	r1, #10
.LBE5998:
.LBE6004:
	.loc 8 101 0
	strb	r4, [ip]
.LVL49:
.LBB6005:
.LBB5999:
	.loc 8 52 0
	beq	.L98
	cmp	r1, #16
	beq	.L97
.LVL50:
.LBE5999:
.LBE6005:
	.loc 8 95 0
	add	r0, r0, #1
.LVL51:
.L100:
	add	r3, sp, #4
	mov	r4, r0
	add	r5, r3, r0
.LBB6006:
.LBB6007:
.LBB6008:
.LBB6009:
.LBB6010:
	.loc 4 44 0
	mvn	r1, #1040384
.LVL52:
.L105:
.LBE6010:
.LBE6009:
.LBE6008:
.LBE6007:
.LBE6006:
	.loc 8 106 0
	ldrb	r2, [r5, #-1]!	@ zero_extendqisi2
.LVL53:
	sub	r4, r4, #1
.LVL54:
.L103:
.LBB6019:
.LBB6017:
.LBB6015:
.LBB6013:
.LBB6011:
	.loc 4 44 0
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L103
.LBE6011:
.LBE6013:
.LBE6015:
	.loc 8 22 0
	cmp	r2, #10
.LBB6016:
.LBB6014:
.LBB6012:
	.loc 4 45 0
	str	r2, [r1, #-4063]
.LVL55:
.LBE6012:
.LBE6014:
.LBE6016:
	.loc 8 22 0
	beq	.L125
.LVL56:
.L104:
.LBE6017:
.LBE6019:
	.loc 8 105 0
	cmp	r4, #0
	bne	.L105
	.loc 8 110 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL57:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL58:
.L124:
	.cfi_restore_state
.LBB6020:
.LBB5993:
	.loc 8 67 0
	and	r2, r3, #15
.LVL59:
.LBE5993:
.LBE6020:
	.loc 8 98 0
	cmp	r2, #9
	.loc 8 101 0
	addls	r2, r2, #48
	strbls	r2, [ip]
	.loc 8 98 0
	bls	.L97
	.loc 8 99 0
	add	r2, r2, #87
	strb	r2, [ip]
.LVL60:
.L97:
.LBB6021:
.LBB6000:
	.loc 8 54 0
	lsr	r3, r3, #4
.LVL61:
.L101:
.LBE6000:
.LBE6021:
	.loc 8 95 0
	cmp	r3, #0
	add	r0, r0, #1
.LVL62:
	add	ip, ip, #1
	beq	.L100
.LVL63:
.LBB6022:
.LBB5994:
	.loc 8 65 0
	cmp	r1, #10
	bne	.L126
.L94:
.LVL64:
	.loc 8 69 0
	umull	r5, r2, lr, r3
	lsr	r2, r2, #3
	add	r2, r2, r2, lsl #2
	sub	r2, r3, r2, lsl #1
.LBE5994:
.LBE6022:
	.loc 8 101 0
	add	r2, r2, #48
	strb	r2, [ip]
.LVL65:
.L98:
.LBB6023:
.LBB6001:
	.loc 8 56 0
	umull	r2, r3, lr, r3
.LVL66:
	lsr	r3, r3, #3
	b	.L101
.LVL67:
.L125:
.LBE6001:
.LBE6023:
.LBB6024:
.LBB6018:
	bl	putchar.part.64
.LVL68:
	b	.L104
.LVL69:
.L106:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
.LBE6018:
.LBE6024:
	.loc 8 95 0
	mov	r0, r3
.LVL70:
	bx	lr
	.cfi_endproc
.LFE940:
	.size	print_unsigned_long.part.65, .-print_unsigned_long.part.65
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	getDecodedChar, %function
getDecodedChar:
.LFB472:
	.loc 3 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL71:
.LBB6033:
.LBB6034:
	.loc 4 53 0
	mvn	r2, #1040384
	ldr	r3, [r2, #-4079]
	tst	r3, #1
	beq	.L137
	.loc 4 54 0
	ldr	r3, [r2, #-4059]
	uxtb	r3, r3
.LBE6034:
.LBE6033:
	.loc 3 33 0
	cmp	r3, #255
	beq	.L137
	.loc 3 36 0
	cmp	r3, #170
	beq	.L141
.L129:
	.loc 3 58 0
	strb	r3, [r0]
	.loc 3 59 0
	mov	r3, #0
.L127:
	.loc 3 61 0
	mov	r0, r3
.LVL72:
	bx	lr
.LVL73:
.L141:
.LBB6035:
.LBB6036:
.LBB6037:
.LBB6038:
	.loc 4 53 0
	ldr	r3, [r2, #-4079]
	tst	r3, #1
	bne	.L142
.LVL74:
.L137:
.LBE6038:
.LBE6037:
.LBE6036:
.LBE6035:
	.loc 3 34 0
	mov	r3, #1
	.loc 3 61 0
	mov	r0, r3
.LVL75:
	bx	lr
.LVL76:
.L142:
.LBB6042:
.LBB6041:
.LBB6040:
.LBB6039:
	.loc 4 54 0
	ldr	r3, [r2, #-4059]
	uxtb	r3, r3
.LBE6039:
.LBE6040:
	.loc 3 38 0
	cmp	r3, #255
	beq	.L137
	.loc 3 41 0
	cmp	r3, #161
	beq	.L131
	cmp	r3, #162
	beq	.L132
	cmp	r3, #160
	beq	.L143
	.loc 3 52 0
	sub	r3, r3, #20
	uxtb	r3, r3
	cmp	r3, #19
	.loc 3 56 0
	movhi	r3, #0
	.loc 3 52 0
	bhi	.L127
	b	.L129
.L131:
	.loc 3 43 0
	mvn	r2, #85
	.loc 3 56 0
	mov	r3, #0
	.loc 3 43 0
	strb	r2, [r0]
	b	.L127
.L143:
	.loc 3 46 0
	mvn	r2, #0
	.loc 3 56 0
	mov	r3, #0
	.loc 3 46 0
	strb	r2, [r0]
	b	.L127
.L132:
	.loc 3 49 0
	mvn	r2, #68
	.loc 3 56 0
	mov	r3, #0
	.loc 3 49 0
	strb	r2, [r0]
	b	.L127
.LBE6041:
.LBE6042:
	.cfi_endproc
.LFE472:
	.size	getDecodedChar, .-getDecodedChar
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	getArg32, %function
getArg32:
.LFB474:
	.loc 3 89 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL77:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 3 90 0
	mov	r3, #0
	.loc 3 89 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 3 89 0
	mov	r1, r0
	.loc 3 94 0
	add	r0, sp, #4
.LVL78:
	.loc 3 90 0
	strb	r3, [sp, #4]
	.loc 3 91 0
	strb	r3, [sp, #5]
	.loc 3 92 0
	strb	r3, [sp, #6]
	.loc 3 93 0
	strb	r3, [sp, #7]
	.loc 3 94 0
	bl	getDecodedChar
.LVL79:
	cmp	r0, #0
	beq	.L145
.L147:
	.loc 3 95 0
	mov	r0, #1
.L144:
	.loc 3 108 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L145:
	.cfi_restore_state
	.loc 3 97 0
	add	r0, sp, #5
	bl	getDecodedChar
.LVL80:
	cmp	r0, #0
	bne	.L147
	.loc 3 100 0
	add	r0, sp, #6
	bl	getDecodedChar
.LVL81:
	cmp	r0, #0
	bne	.L147
	.loc 3 103 0
	add	r0, sp, #7
	bl	getDecodedChar
.LVL82:
	cmp	r0, #0
	bne	.L147
	.loc 3 106 0
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	ldrb	lr, [sp, #4]	@ zero_extendqisi2
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	lsl	r3, r3, #16
	orr	r3, r3, lr, lsl #24
	orr	r3, r3, ip
	orr	r3, r3, r2, lsl #8
	str	r3, [r1]
	.loc 3 107 0
	b	.L144
	.cfi_endproc
.LFE474:
	.size	getArg32, .-getArg32
	.section	.boot.text
	.align	2
	.global	Arch_configureIdleThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_configureIdleThread, %function
Arch_configureIdleThread:
.LFB385:
	.file 9 "/home/sel4/work/work2/kernel/src/arch/arm/32/kernel/thread.c"
	.loc 9 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL83:
.LBB6043:
.LBB6044:
	.file 10 "/home/sel4/work/work2/kernel/include/machine/registerset.h"
	.loc 10 30 0
	movw	r3, #:lower16:idle_thread
.LVL84:
.LBE6044:
.LBE6043:
.LBB6046:
.LBB6047:
	mov	r2, #90
.LBE6047:
.LBE6046:
.LBB6049:
.LBB6045:
	movt	r3, #:upper16:idle_thread
	str	r3, [r0, #60]
.LBE6045:
.LBE6049:
.LBB6050:
.LBB6048:
	str	r2, [r0, #64]
.LVL85:
.LBE6048:
.LBE6050:
	.loc 9 37 0
	bx	lr
	.cfi_endproc
.LFE385:
	.size	Arch_configureIdleThread, .-Arch_configureIdleThread
	.text
	.align	2
	.global	Arch_activateIdleThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_activateIdleThread, %function
Arch_activateIdleThread:
.LFB1188:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE1188:
	.size	Arch_activateIdleThread, .-Arch_activateIdleThread
	.align	2
	.global	findPDForASID
	.syntax unified
	.arm
	.fpu softvfp
	.type	findPDForASID, %function
findPDForASID:
.LFB414:
	.file 11 "/home/sel4/work/work2/kernel/src/arch/arm/32/kernel/vspace.c"
	.loc 11 681 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL86:
	.loc 11 686 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	r2, r1, #10
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, lsl #2]
.LVL87:
	.loc 11 687 0
	cmp	r3, #0
	beq	.L154
	.loc 11 695 0
	ubfx	r1, r1, #0, #10
.LVL88:
	ldr	r3, [r3, r1, lsl #2]
.LVL89:
	.loc 11 696 0
	cmp	r3, #0
	beq	.L154
.LVL90:
	.loc 11 706 0
	mov	r2, #0
.LVL91:
	strd	r2, [r0]
.LVL92:
	.loc 11 707 0
	bx	lr
.LVL93:
.L154:
	.loc 11 688 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r2, #0
.LVL94:
	movt	r3, #:upper16:current_lookup_fault
	.loc 11 692 0
	mov	r1, #2
	.loc 11 688 0
	str	r2, [r3]
	.loc 11 692 0
	stm	r0, {r1, r2}
	.loc 11 688 0
	str	r2, [r3, #4]
.LVL95:
	.loc 11 707 0
	bx	lr
	.cfi_endproc
.LFE414:
	.size	findPDForASID, .-findPDForASID
	.align	2
	.global	lookupPDSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupPDSlot, %function
lookupPDSlot:
.LFB417:
	.loc 11 768 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL96:
	.loc 11 771 0
	lsr	r1, r1, #21
.LVL97:
	.loc 11 773 0
	add	r0, r0, r1, lsl #3
.LVL98:
	bx	lr
	.cfi_endproc
.LFE417:
	.size	lookupPDSlot, .-lookupPDSlot
	.align	2
	.global	isIOSpaceFrameCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	isIOSpaceFrameCap, %function
isIOSpaceFrameCap:
.LFB424:
	.loc 11 1082 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 11 1082 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	.loc 11 1088 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE424:
	.size	isIOSpaceFrameCap, .-isIOSpaceFrameCap
	.align	2
	.global	copyGlobalMappings
	.syntax unified
	.arm
	.fpu softvfp
	.type	copyGlobalMappings, %function
copyGlobalMappings:
.LFB435:
	.loc 11 1299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL99:
	.loc 11 1318 0
	bx	lr
	.cfi_endproc
.LFE435:
	.size	copyGlobalMappings, .-copyGlobalMappings
	.align	2
	.global	getRestartPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	getRestartPC, %function
getRestartPC:
.LFB490:
	.file 12 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/hardware.c"
	.loc 12 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL100:
	.loc 12 20 0
	ldr	r0, [r0, #68]
.LVL101:
	bx	lr
	.cfi_endproc
.LFE490:
	.size	getRestartPC, .-getRestartPC
	.align	2
	.global	setNextPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	setNextPC, %function
setNextPC:
.LFB491:
	.loc 12 24 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL102:
.LBB6057:
.LBB6058:
	.loc 10 30 0
	str	r1, [r0, #60]
.LVL103:
.LBE6058:
.LBE6057:
	.loc 12 26 0
	bx	lr
	.cfi_endproc
.LFE491:
	.size	setNextPC, .-setNextPC
	.section	.boot.text
	.align	2
	.global	get_num_avail_p_regs
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_num_avail_p_regs, %function
get_num_avail_p_regs:
.LFB492:
	.loc 12 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 12 32 0
	mov	r0, #1
	bx	lr
	.cfi_endproc
.LFE492:
	.size	get_num_avail_p_regs, .-get_num_avail_p_regs
	.align	2
	.global	get_num_dev_p_regs
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_num_dev_p_regs, %function
get_num_dev_p_regs:
.LFB493:
	.loc 12 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 12 38 0
	mov	r0, #224
	bx	lr
	.cfi_endproc
.LFE493:
	.size	get_num_dev_p_regs, .-get_num_dev_p_regs
	.align	2
	.global	get_dev_p_reg
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_dev_p_reg, %function
get_dev_p_reg:
.LFB494:
	.loc 12 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL104:
	.loc 12 42 0
	lsl	r1, r1, #3
.LVL105:
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	ldrd	r2, [r3, r1]
	strd	r2, [r0]
	.loc 12 43 0
	bx	lr
	.cfi_endproc
.LFE494:
	.size	get_dev_p_reg, .-get_dev_p_reg
	.align	2
	.global	get_avail_p_reg
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_avail_p_reg, %function
get_avail_p_reg:
.LFB495:
	.loc 12 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL106:
	.loc 12 47 0
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	add	r1, r3, r1, lsl #3
.LVL107:
	add	r1, r1, #1792
	ldrd	r2, [r1]
	strd	r2, [r0]
	.loc 12 48 0
	bx	lr
	.cfi_endproc
.LFE495:
	.size	get_avail_p_reg, .-get_avail_p_reg
	.text
	.align	2
	.global	Arch_isFrameType
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_isFrameType, %function
Arch_isFrameType:
.LFB497:
	.file 13 "/home/sel4/work/work2/kernel/src/arch/arm/32/object/objecttype.c"
	.loc 13 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL108:
	.loc 13 27 0
	sub	r0, r0, #5
.LVL109:
	.loc 13 39 0
	cmp	r0, #3
	movhi	r0, #0
.LVL110:
	movls	r0, #1
	bx	lr
	.cfi_endproc
.LFE497:
	.size	Arch_isFrameType, .-Arch_isFrameType
	.align	2
	.global	Arch_updateCapData
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_updateCapData, %function
Arch_updateCapData:
.LFB499:
	.loc 13 123 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL111:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 13 123 0
	str	r3, [sp, #4]
	.loc 13 124 0
	ldrd	r2, [sp, #4]
.LVL112:
	.loc 13 125 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 13 124 0
	strd	r2, [r0]
	.loc 13 125 0
	bx	lr
	.cfi_endproc
.LFE499:
	.size	Arch_updateCapData, .-Arch_updateCapData
	.align	2
	.global	clean_D_PoU
	.syntax unified
	.arm
	.fpu softvfp
	.type	clean_D_PoU, %function
clean_D_PoU:
.LFB515:
	.file 14 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c"
	.loc 14 75 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
.LBB6059:
.LBB6060:
	.loc 14 32 0
	.syntax divided
@ 32 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, fp, c0, c0, 1
@ 0 "" 2
.LVL113:
	.arm
	.syntax unified
.LBE6060:
.LBE6059:
	.loc 14 77 0
	ubfx	r3, fp, #27, #3
.LVL114:
	.loc 14 80 0
	cmp	r3, #0
	beq	.L174
	lsl	r3, r3, #1
.LVL115:
	mov	r6, #0
	mov	r9, r6
	mov	r10, #1
	str	r3, [sp, #4]
.LVL116:
.L179:
	.loc 14 81 0
	asr	r3, fp, r9
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L176
.LVL117:
.LBB6061:
.LBB6062:
.LBB6063:
	.loc 14 54 0
	.syntax divided
@ 54 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 14 56 0
@ 56 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r6, c0, c0, 0
@ 0 "" 2
	.loc 14 58 0
@ 58 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 14 60 0
@ 60 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LVL118:
	.arm
	.syntax unified
.LBE6063:
.LBE6062:
	.loc 14 84 0
	ubfx	r7, r3, #3, #10
	.loc 14 83 0
	and	lr, r3, #7
.LBB6064:
.LBB6065:
	.file 15 "/home/sel4/work/work2/kernel/include/util.h"
	.loc 15 105 0
	clz	r8, r7
.LBE6065:
.LBE6064:
	.loc 14 83 0
	add	lr, lr, #4
	.loc 14 86 0
	ubfx	r3, r3, #13, #15
	mov	r4, #0
	.loc 14 84 0
	add	r7, r7, #1
.LVL119:
	lsl	r8, r10, r8
.LVL120:
	lsl	lr, r10, lr
	.loc 14 86 0
	add	ip, r3, #1
.LVL121:
	.loc 14 89 0
	mov	r5, r4
.LVL122:
.L177:
.LBE6061:
	.loc 14 80 0
	mov	r3, #0
	orr	r0, r4, r6
	mov	r2, r3
.LVL123:
.L178:
.LBB6069:
.LBB6066:
	.loc 14 94 0 discriminator 3
	orr	r1, r3, r0
.LVL124:
.LBB6067:
.LBB6068:
	.loc 14 20 0 discriminator 3
	.syntax divided
@ 20 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r1, c7, c10, 2
@ 0 "" 2
.LVL125:
	.arm
	.syntax unified
.LBE6068:
.LBE6067:
	.loc 14 92 0 discriminator 3
	add	r2, r2, #1
.LVL126:
	add	r3, r3, lr
	cmp	ip, r2
	bgt	.L178
.LBE6066:
	.loc 14 89 0 discriminator 2
	add	r5, r5, #1
.LVL127:
	add	r4, r4, r8
	cmp	r7, r5
	bgt	.L177
.LVL128:
.L176:
.LBE6069:
	.loc 14 80 0
	ldr	r3, [sp, #4]
	add	r6, r6, #2
	add	r9, r9, #3
	cmp	r3, r6
	bne	.L179
.L174:
	.loc 14 99 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE515:
	.size	clean_D_PoU, .-clean_D_PoU
	.align	2
	.global	cleanInvalidate_D_PoC
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanInvalidate_D_PoC, %function
cleanInvalidate_D_PoC:
.LFB516:
	.loc 14 104 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
.LBB6070:
.LBB6071:
	.loc 14 32 0
	.syntax divided
@ 32 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, fp, c0, c0, 1
@ 0 "" 2
.LVL129:
	.arm
	.syntax unified
.LBE6071:
.LBE6070:
	.loc 14 106 0
	ubfx	r3, fp, #24, #3
.LVL130:
	.loc 14 109 0
	cmp	r3, #0
	beq	.L185
	lsl	r3, r3, #1
.LVL131:
	mov	r6, #0
	mov	r9, r6
	mov	r10, #1
	str	r3, [sp, #4]
.LVL132:
.L190:
	.loc 14 110 0
	asr	r3, fp, r9
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L187
.LVL133:
.LBB6072:
.LBB6073:
.LBB6074:
	.loc 14 54 0
	.syntax divided
@ 54 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 14 56 0
@ 56 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r6, c0, c0, 0
@ 0 "" 2
	.loc 14 58 0
@ 58 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 14 60 0
@ 60 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LVL134:
	.arm
	.syntax unified
.LBE6074:
.LBE6073:
	.loc 14 113 0
	ubfx	r7, r3, #3, #10
	.loc 14 112 0
	and	lr, r3, #7
.LBB6075:
.LBB6076:
	.loc 15 105 0
	clz	r8, r7
.LBE6076:
.LBE6075:
	.loc 14 112 0
	add	lr, lr, #4
	.loc 14 115 0
	ubfx	r3, r3, #13, #15
	mov	r4, #0
	.loc 14 113 0
	add	r7, r7, #1
.LVL135:
	lsl	r8, r10, r8
.LVL136:
	lsl	lr, r10, lr
	.loc 14 115 0
	add	ip, r3, #1
.LVL137:
	.loc 14 118 0
	mov	r5, r4
.LVL138:
.L188:
.LBE6072:
	.loc 14 109 0
	mov	r3, #0
	orr	r0, r4, r6
	mov	r2, r3
.LVL139:
.L189:
.LBB6080:
.LBB6077:
	.loc 14 123 0 discriminator 3
	orr	r1, r3, r0
.LVL140:
.LBB6078:
.LBB6079:
	.loc 14 25 0 discriminator 3
	.syntax divided
@ 25 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r1, c7, c14, 2
@ 0 "" 2
.LVL141:
	.arm
	.syntax unified
.LBE6079:
.LBE6078:
	.loc 14 121 0 discriminator 3
	add	r2, r2, #1
.LVL142:
	add	r3, r3, lr
	cmp	ip, r2
	bgt	.L189
.LBE6077:
	.loc 14 118 0 discriminator 2
	add	r5, r5, #1
.LVL143:
	add	r4, r4, r8
	cmp	r7, r5
	bgt	.L188
.LVL144:
.L187:
.LBE6080:
	.loc 14 109 0
	ldr	r3, [sp, #4]
	add	r6, r6, #2
	add	r9, r9, #3
	cmp	r3, r6
	bne	.L190
.L185:
	.loc 14 128 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE516:
	.size	cleanInvalidate_D_PoC, .-cleanInvalidate_D_PoC
	.section	.boot.text
	.align	2
	.global	activate_global_pd
	.syntax unified
	.arm
	.fpu softvfp
	.type	activate_global_pd, %function
activate_global_pd:
.LFB412:
	.loc 11 638 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB6081:
.LBB6082:
.LBB6083:
.LBB6084:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6084:
.LBE6083:
	.file 16 "/home/sel4/work/work2/kernel/src/arch/arm/machine/cache.c"
	.loc 16 183 0
	bl	cleanInvalidate_D_PoC
.LVL145:
.LBB6085:
.LBB6086:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6086:
.LBE6085:
.LBB6087:
.LBB6088:
	.file 17 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h"
	.loc 17 330 0
	mov	r3, #0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6089:
.LBB6090:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6090:
.LBE6089:
.LBE6088:
.LBE6087:
.LBB6091:
.LBB6092:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL146:
	.arm
	.syntax unified
.LBE6092:
.LBE6091:
.LBE6082:
.LBE6081:
.LBB6093:
.LBB6094:
	.file 18 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h"
	.loc 18 67 0
	mov	r2, #65280
	.syntax divided
@ 67 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r2, c10, c2, 0
@ 0 "" 2
	.loc 18 68 0
@ 68 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r3, c10, c2, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6095:
.LBB6096:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL147:
	.arm
	.syntax unified
.LBE6096:
.LBE6095:
.LBE6094:
.LBE6093:
.LBB6097:
.LBB6098:
.LBB6099:
.LBB6100:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6100:
.LBE6099:
.LBE6098:
.LBE6097:
.LBB6104:
.LBB6105:
	.file 19 "/home/sel4/work/work2/kernel/include/machine.h"
	.loc 19 29 0
	ldr	r2, .L198
.LBE6105:
.LBE6104:
.LBB6106:
.LBB6103:
	.loc 18 47 0
	.syntax divided
@ 47 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcrr p15, 4, r2, r3, c2
@ 0 "" 2
	.arm
	.syntax unified
.LBB6101:
.LBB6102:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6102:
.LBE6101:
.LBE6103:
.LBE6106:
.LBB6107:
.LBB6108:
.LBB6109:
.LBB6110:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6110:
.LBE6109:
	.loc 18 82 0
	.syntax divided
@ 82 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r3, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6111:
.LBB6112:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6112:
.LBE6111:
.LBB6113:
.LBB6114:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL148:
	.arm
	.syntax unified
.LBE6114:
.LBE6113:
.LBE6108:
.LBE6107:
.LBB6115:
.LBB6116:
.LBB6117:
.LBB6118:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6118:
.LBE6117:
	.loc 18 54 0
	mov	r3, #1280
	movt	r3, 32768
	.syntax divided
@ 54 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r3, c2, c1, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBB6119:
.LBB6120:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL149:
	.arm
	.syntax unified
.LBE6120:
.LBE6119:
.LBE6116:
.LBE6115:
	.loc 11 665 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L199:
	.align	2
.L198:
	.word	.LANCHOR1-2147483648
	.cfi_endproc
.LFE412:
	.size	activate_global_pd, .-activate_global_pd
	.text
	.align	2
	.global	armv_init_user_access
	.syntax unified
	.arm
	.fpu softvfp
	.type	armv_init_user_access, %function
armv_init_user_access:
.LFB522:
	.file 20 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/user_access.c"
	.loc 20 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 20 68 0
	.syntax divided
@ 68 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 2
@ 0 "" 2
.LVL150:
	.loc 20 73 0
@ 73 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 1
@ 0 "" 2
.LVL151:
	.loc 20 74 0
	.arm
	.syntax unified
	tst	r3, #65536
	beq	.L200
.LBB6126:
.LBB6127:
.LBB6128:
	.loc 20 52 0
	.syntax divided
@ 52 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL152:
	.loc 20 57 0
	.arm
	.syntax unified
	orr	r3, r3, #3
.LVL153:
.LBB6129:
	.loc 20 59 0
	.syntax divided
@ 59 "/home/sel4/work/work2/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mcr   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL154:
	.arm
	.syntax unified
.L200:
.LBE6129:
.LBE6128:
.LBE6127:
.LBE6126:
	.loc 20 77 0
	bx	lr
	.cfi_endproc
.LFE522:
	.size	armv_init_user_access, .-armv_init_user_access
	.align	2
	.global	cleanInvalidateCacheRange_RAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanInvalidateCacheRange_RAM, %function
cleanInvalidateCacheRange_RAM:
.LFB542:
	.loc 16 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL155:
.LBB6130:
.LBB6131:
	.loc 16 26 0
	lsr	r1, r1, #6
.LVL156:
	lsr	r0, r0, #6
.LVL157:
	add	r1, r1, #1
	cmp	r0, r1
	lslcc	r3, r0, #6
	lslcc	r2, r1, #6
.LVL158:
	bcs	.L210
.LVL159:
.L209:
.LBB6132:
.LBB6133:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6134:
.LBB6135:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL160:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL161:
.LBE6135:
.LBE6134:
.LBE6133:
.LBE6132:
	.loc 16 26 0
	cmp	r3, r2
	bne	.L209
.LVL162:
.L210:
.LBE6131:
.LBE6130:
.LBB6136:
.LBB6137:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL163:
	.arm
	.syntax unified
.LBE6137:
.LBE6136:
	.loc 16 54 0
	cmp	r0, r1
	lslcc	r0, r0, #6
.LVL164:
	lslcc	r1, r1, #6
	bcs	.L208
.LVL165:
.L211:
.LBB6138:
.LBB6139:
	.loc 17 344 0 discriminator 3
	.syntax divided
@ 344 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c14, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6140:
.LBB6141:
	.loc 2 21 0 discriminator 3
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL166:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL167:
.LBE6141:
.LBE6140:
.LBE6139:
.LBE6138:
	.loc 16 54 0 discriminator 3
	cmp	r0, r1
	bne	.L211
.LVL168:
.L208:
.LBB6142:
.LBB6143:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6143:
.LBE6142:
	.loc 16 60 0
	bx	lr
	.cfi_endproc
.LFE542:
	.size	cleanInvalidateCacheRange_RAM, .-cleanInvalidateCacheRange_RAM
	.align	2
	.global	cleanCacheRange_RAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanCacheRange_RAM, %function
cleanCacheRange_RAM:
.LFB543:
	.loc 16 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL169:
.LBB6144:
.LBB6145:
	.loc 16 26 0
	lsr	r1, r1, #6
.LVL170:
	lsr	r0, r0, #6
.LVL171:
	add	r1, r1, #1
	cmp	r0, r1
	lslcc	r0, r0, #6
.LVL172:
	lslcc	r1, r1, #6
	bcs	.L218
.LVL173:
.L217:
.LBB6146:
.LBB6147:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6148:
.LBB6149:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL174:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL175:
.LBE6149:
.LBE6148:
.LBE6147:
.LBE6146:
	.loc 16 26 0
	cmp	r0, r1
	bne	.L217
.LVL176:
.L218:
.LBE6145:
.LBE6144:
.LBB6150:
.LBB6151:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL177:
	.arm
	.syntax unified
.LBE6151:
.LBE6150:
	.loc 16 83 0
	bx	lr
	.cfi_endproc
.LFE543:
	.size	cleanCacheRange_RAM, .-cleanCacheRange_RAM
	.align	2
	.global	cleanCacheRange_PoU
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanCacheRange_PoU, %function
cleanCacheRange_PoU:
.LFB544:
	.loc 16 87 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL178:
	.loc 16 96 0
	lsr	r1, r1, #6
.LVL179:
	lsr	r0, r0, #6
.LVL180:
	add	r1, r1, #1
	cmp	r0, r1
	bcs	.L221
	lsl	r0, r0, #6
.LVL181:
	lsl	r1, r1, #6
.LVL182:
.L223:
.LBB6152:
.LBB6153:
	.loc 17 284 0 discriminator 3
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6154:
.LBB6155:
	.loc 2 26 0 discriminator 3
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL183:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL184:
.LBE6155:
.LBE6154:
.LBE6153:
.LBE6152:
	.loc 16 96 0 discriminator 3
	cmp	r0, r1
	bne	.L223
.LVL185:
.L221:
	.loc 16 100 0
	bx	lr
	.cfi_endproc
.LFE544:
	.size	cleanCacheRange_PoU, .-cleanCacheRange_PoU
	.align	2
	.global	invalidateCacheRange_RAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	invalidateCacheRange_RAM, %function
invalidateCacheRange_RAM:
.LFB545:
	.loc 16 104 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL186:
	.loc 16 113 0
	bic	r3, r0, #63
	cmp	r0, r3
.LBB6156:
.LBB6157:
.LBB6158:
	.loc 16 26 0
	lsr	r0, r0, #6
.LVL187:
.LBE6158:
.LBE6157:
.LBE6156:
	.loc 16 113 0
	beq	.L228
.LVL188:
.LBB6169:
.LBB6165:
.LBB6163:
	.loc 16 26 0
	add	r2, r0, #1
.LVL189:
	cmp	r0, r2
	bcc	.L229
.LVL190:
.L230:
.LBE6163:
.LBE6165:
.LBB6166:
.LBB6167:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL191:
	.arm
	.syntax unified
.L228:
.LBE6167:
.LBE6166:
.LBE6169:
	.loc 16 116 0
	add	r3, r1, #1
	tst	r3, #63
	lsreq	r2, r1, #6
	addeq	r2, r2, #1
	beq	.L232
.LVL192:
	lsr	r3, r1, #6
.LVL193:
.LBB6170:
.LBB6171:
.LBB6172:
	.loc 16 26 0
	add	r2, r3, #1
	cmp	r3, r2
	bcc	.L233
.LVL194:
.L234:
.LBE6172:
.LBE6171:
.LBB6178:
.LBB6179:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL195:
	.arm
	.syntax unified
.L232:
.LBE6179:
.LBE6178:
.LBE6170:
	.loc 16 137 0
	cmp	r0, r2
	lslcc	r3, r0, #6
	bcs	.L237
.LVL196:
.L236:
.LBB6181:
.LBB6182:
	.loc 17 306 0 discriminator 3
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c6, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6183:
.LBB6184:
	.loc 2 26 0 discriminator 3
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL197:
	.arm
	.syntax unified
.LBE6184:
.LBE6183:
.LBE6182:
.LBE6181:
	.loc 16 137 0 discriminator 3
	add	r0, r0, #1
.LVL198:
	add	r3, r3, #64
.LVL199:
	cmp	r0, r2
	bne	.L236
.LVL200:
.L237:
.LBB6185:
.LBB6186:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6186:
.LBE6185:
	.loc 16 143 0
	bx	lr
.LVL201:
.L229:
.LBB6187:
.LBB6168:
.LBB6164:
.LBB6159:
.LBB6160:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6161:
.LBB6162:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL202:
	.arm
	.syntax unified
	b	.L230
.LVL203:
.L233:
.LBE6162:
.LBE6161:
.LBE6160:
.LBE6159:
.LBE6164:
.LBE6168:
.LBE6187:
.LBB6188:
.LBB6180:
.LBB6177:
	.loc 16 27 0
	bic	r1, r1, #63
.LVL204:
.LBB6173:
.LBB6174:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r1, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6175:
.LBB6176:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL205:
	.arm
	.syntax unified
	b	.L234
.LBE6176:
.LBE6175:
.LBE6174:
.LBE6173:
.LBE6177:
.LBE6180:
.LBE6188:
	.cfi_endproc
.LFE545:
	.size	invalidateCacheRange_RAM, .-invalidateCacheRange_RAM
	.align	2
	.global	invalidateCacheRange_I
	.syntax unified
	.arm
	.fpu softvfp
	.type	invalidateCacheRange_I, %function
invalidateCacheRange_I:
.LFB546:
	.loc 16 147 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL206:
	.loc 16 151 0
	lsr	r1, r1, #6
.LVL207:
	lsr	r0, r0, #6
.LVL208:
	add	r1, r1, #1
	cmp	r0, r1
	bcs	.L240
	lsl	r0, r0, #6
.LVL209:
	lsl	r1, r1, #6
.LVL210:
.L242:
.LBB6189:
.LBB6190:
	.loc 17 318 0 discriminator 3
	.syntax divided
@ 318 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c5, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6191:
.LBB6192:
	.loc 2 31 0 discriminator 3
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL211:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL212:
.LBE6192:
.LBE6191:
.LBE6190:
.LBE6189:
	.loc 16 151 0 discriminator 3
	cmp	r0, r1
	bne	.L242
.LVL213:
.L240:
	.loc 16 155 0
	bx	lr
	.cfi_endproc
.LFE546:
	.size	invalidateCacheRange_I, .-invalidateCacheRange_I
	.align	2
	.global	branchFlushRange
	.syntax unified
	.arm
	.fpu softvfp
	.type	branchFlushRange, %function
branchFlushRange:
.LFB547:
	.loc 16 159 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL214:
	.loc 16 163 0
	lsr	r1, r1, #6
.LVL215:
	lsr	r0, r0, #6
.LVL216:
	add	r1, r1, #1
	cmp	r0, r1
	bcs	.L245
	lsl	r0, r0, #6
.LVL217:
	lsl	r1, r1, #6
.LVL218:
.L247:
.LBB6193:
.LBB6194:
	.loc 17 352 0 discriminator 3
	.syntax divided
@ 352 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c5, 7
@ 0 "" 2
.LVL219:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL220:
.LBE6194:
.LBE6193:
	.loc 16 163 0 discriminator 3
	cmp	r1, r0
	bne	.L247
.LVL221:
.L245:
	.loc 16 167 0
	bx	lr
	.cfi_endproc
.LFE547:
	.size	branchFlushRange, .-branchFlushRange
	.align	2
	.global	cleanCaches_PoU
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanCaches_PoU, %function
cleanCaches_PoU:
.LFB548:
	.loc 16 171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB6195:
.LBB6196:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6196:
.LBE6195:
	.loc 16 173 0
	bl	clean_D_PoU
.LVL222:
.LBB6197:
.LBB6198:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6198:
.LBE6197:
.LBB6199:
.LBB6200:
	.loc 17 330 0
	mov	r3, #0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6201:
.LBB6202:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6202:
.LBE6201:
.LBE6200:
.LBE6199:
.LBB6203:
.LBB6204:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6204:
.LBE6203:
	.loc 16 177 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE548:
	.size	cleanCaches_PoU, .-cleanCaches_PoU
	.align	2
	.global	cleanInvalidateL1Caches
	.syntax unified
	.arm
	.fpu softvfp
	.type	cleanInvalidateL1Caches, %function
cleanInvalidateL1Caches:
.LFB549:
	.loc 16 181 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB6205:
.LBB6206:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6206:
.LBE6205:
	.loc 16 183 0
	bl	cleanInvalidate_D_PoC
.LVL223:
.LBB6207:
.LBB6208:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6208:
.LBE6207:
.LBB6209:
.LBB6210:
	.loc 17 330 0
	mov	r3, #0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6211:
.LBB6212:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6212:
.LBE6211:
.LBE6210:
.LBE6209:
.LBB6213:
.LBB6214:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6214:
.LBE6213:
	.loc 16 187 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE549:
	.size	cleanInvalidateL1Caches, .-cleanInvalidateL1Caches
	.align	2
	.global	arch_clean_invalidate_caches
	.syntax unified
	.arm
	.fpu softvfp
	.type	arch_clean_invalidate_caches, %function
arch_clean_invalidate_caches:
.LFB550:
	.loc 16 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB6215:
.LBB6216:
.LBB6217:
.LBB6218:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6218:
.LBE6217:
	.loc 16 173 0
	bl	clean_D_PoU
.LVL224:
.LBB6219:
.LBB6220:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6220:
.LBE6219:
.LBB6221:
.LBB6222:
	.loc 17 330 0
	mov	r4, #0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r4, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6223:
.LBB6224:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6224:
.LBE6223:
.LBE6222:
.LBE6221:
.LBB6225:
.LBB6226:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6226:
.LBE6225:
.LBE6216:
.LBE6215:
.LBB6227:
.LBB6228:
.LBB6229:
.LBB6230:
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6230:
.LBE6229:
	.loc 16 183 0
	bl	cleanInvalidate_D_PoC
.LVL225:
.LBB6231:
.LBB6232:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6232:
.LBE6231:
.LBB6233:
.LBB6234:
	.loc 17 330 0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r4, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB6235:
.LBB6236:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6236:
.LBE6235:
.LBE6234:
.LBE6233:
.LBB6237:
.LBB6238:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6238:
.LBE6237:
.LBE6228:
.LBE6227:
.LBB6239:
.LBB6240:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6240:
.LBE6239:
	.loc 16 196 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE550:
	.size	arch_clean_invalidate_caches, .-arch_clean_invalidate_caches
	.align	2
	.global	Arch_initBreakpointContext
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_initBreakpointContext, %function
Arch_initBreakpointContext:
.LFB567:
	.file 21 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c"
	.loc 21 1202 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL226:
	.loc 21 1203 0
	movw	r1, #:lower16:armKSNullBreakpointState
	.loc 21 1202 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 21 1203 0
	add	r0, r0, #76
.LVL227:
	movt	r1, #:upper16:armKSNullBreakpointState
	mov	r2, #96
	.loc 21 1202 0
	str	lr, [sp, #4]
	.loc 21 1203 0
	bl	memcpy
.LVL228:
	.loc 21 1204 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE567:
	.size	Arch_initBreakpointContext, .-Arch_initBreakpointContext
	.align	2
	.global	Arch_debugAssociateVCPUTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_debugAssociateVCPUTCB, %function
Arch_debugAssociateVCPUTCB:
.LFB570:
	.loc 21 1268 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL229:
	.loc 21 1275 0
	movw	r3, #1023
	str	r3, [r0, #156]
	.loc 21 1276 0
	bx	lr
	.cfi_endproc
.LFE570:
	.size	Arch_debugAssociateVCPUTCB, .-Arch_debugAssociateVCPUTCB
	.align	2
	.global	Arch_debugDissociateVCPUTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_debugDissociateVCPUTCB, %function
Arch_debugDissociateVCPUTCB:
.LFB571:
	.loc 21 1280 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL230:
	.loc 21 1281 0
	mov	r3, #0
	str	r3, [r0, #156]
	.loc 21 1282 0
	bx	lr
	.cfi_endproc
.LFE571:
	.size	Arch_debugDissociateVCPUTCB, .-Arch_debugDissociateVCPUTCB
	.section	.boot.text
	.align	2
	.global	arm_errata
	.syntax unified
	.arm
	.fpu softvfp
	.type	arm_errata, %function
arm_errata:
.LFB575:
	.file 22 "/home/sel4/work/work2/kernel/src/arch/arm/machine/errata.c"
	.loc 22 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB6249:
.LBB6250:
.LBB6251:
.LBB6252:
	.loc 17 79 0
	.syntax divided
@ 79 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mrc  p15, 0, r3, c0, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6252:
.LBE6251:
	.loc 22 63 0
	movw	r0, #3087
	.loc 22 60 0
	ubfx	r2, r3, #4, #12
	.loc 22 63 0
	ubfx	r1, r3, #20, #4
	.loc 22 59 0
	and	r3, r3, #15
	.loc 22 63 0
	cmp	r2, r0
	cmpeq	r1, #0
	moveq	r2, #1
	movne	r2, #0
	cmp	r3, #4
	movhi	r3, #0
	andls	r3, r2, #1
	cmp	r3, #0
	beq	.L259
.LBB6253:
.LBB6254:
	.loc 17 101 0
	.syntax divided
@ 101 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mrc  p15, 0, r3, c1, c0, 1
@ 0 "" 2
.LVL231:
	.arm
	.syntax unified
.LBE6254:
.LBE6253:
	.loc 22 65 0
	orr	r3, r3, #2
.LVL232:
.LBB6255:
.LBB6256:
	.loc 17 108 0
	.syntax divided
@ 108 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr  p15, 0, r3, c1, c0, 1
@ 0 "" 2
.LVL233:
	.arm
	.syntax unified
.L259:
.LBE6256:
.LBE6255:
.LBE6250:
.LBE6249:
	.loc 22 79 0
	bx	lr
	.cfi_endproc
.LFE575:
	.size	arm_errata, .-arm_errata
	.align	2
	.global	initIRQController
	.syntax unified
	.arm
	.fpu softvfp
	.type	initIRQController, %function
initIRQController:
.LFB578:
	.loc 5 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 136 0
	b	dist_init
.LVL234:
	.cfi_endproc
.LFE578:
	.size	initIRQController, .-initIRQController
	.align	2
	.global	cpu_initLocalIRQController
	.syntax unified
	.arm
	.fpu softvfp
	.type	cpu_initLocalIRQController, %function
cpu_initLocalIRQController:
.LFB579:
	.loc 5 140 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 141 0
	b	cpu_iface_init
.LVL235:
	.cfi_endproc
.LFE579:
	.size	cpu_initLocalIRQController, .-cpu_initLocalIRQController
	.text
	.align	2
	.global	Arch_decodeIRQControlInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_decodeIRQControlInvocation, %function
Arch_decodeIRQControlInvocation:
.LFB581:
	.file 23 "/home/sel4/work/work2/kernel/src/arch/arm/object/interrupt.c"
	.loc 23 20 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL236:
	.loc 23 21 0
	movw	r2, #:lower16:current_syscall_error
.LVL237:
	.loc 23 20 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 23 21 0
	mov	r1, #3
.LVL238:
	movt	r2, #:upper16:current_syscall_error
	.loc 23 23 0
	mov	r0, r1
.LVL239:
	.loc 23 20 0
	str	r3, [sp, #4]
	.loc 23 23 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 23 21 0
	str	r1, [r2, #24]
	.loc 23 23 0
	bx	lr
	.cfi_endproc
.LFE581:
	.size	Arch_decodeIRQControlInvocation, .-Arch_decodeIRQControlInvocation
	.align	2
	.global	Arch_decodeTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_decodeTransfer, %function
Arch_decodeTransfer:
.LFB582:
	.file 24 "/home/sel4/work/work2/kernel/src/arch/arm/object/tcb.c"
	.loc 24 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL240:
	.loc 24 23 0
	mov	r0, #0
.LVL241:
	bx	lr
	.cfi_endproc
.LFE582:
	.size	Arch_decodeTransfer, .-Arch_decodeTransfer
	.align	2
	.global	Arch_performTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_performTransfer, %function
Arch_performTransfer:
.LFB583:
	.loc 24 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL242:
	.loc 24 29 0
	mov	r0, #0
.LVL243:
	bx	lr
	.cfi_endproc
.LFE583:
	.size	Arch_performTransfer, .-Arch_performTransfer
	.align	2
	.global	Arch_setTCBIPCBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_setTCBIPCBuffer, %function
Arch_setTCBIPCBuffer:
.LFB584:
	.loc 24 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL244:
.LBB6257:
.LBB6258:
	.loc 10 30 0
	str	r1, [r0, #72]
.LVL245:
.LBE6258:
.LBE6257:
	.loc 24 53 0
	bx	lr
	.cfi_endproc
.LFE584:
	.size	Arch_setTCBIPCBuffer, .-Arch_setTCBIPCBuffer
	.align	2
	.global	vcpu_init
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_init, %function
vcpu_init:
.LFB635:
	.file 25 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c"
	.loc 25 860 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL246:
	.loc 25 862 0
	movw	r3, #6268
	.loc 25 863 0
	mov	r1, #64
	.loc 25 862 0
	movt	r3, 197
	.loc 25 865 0
	mov	r2, #1
	.loc 25 862 0
	str	r3, [r0, #4]
	.loc 25 863 0
	str	r1, [r0, #8]
	.loc 25 865 0
	str	r2, [r0, #12]
	.loc 25 866 0
	bx	lr
	.cfi_endproc
.LFE635:
	.size	vcpu_init, .-vcpu_init
	.align	2
	.global	invokeVCPUInjectIRQ
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeVCPUInjectIRQ, %function
invokeVCPUInjectIRQ:
.LFB645:
	.loc 25 1015 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL247:
	.loc 25 1016 0
	movw	r3, #:lower16:armHSCurVCPU
	movt	r3, #:upper16:armHSCurVCPU
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L273
.LVL248:
.LBB6259:
.LBB6260:
	.loc 25 398 0
	lsl	r1, r1, #2
.LVL249:
	movw	r3, #25087
	movt	r3, 65520
	add	r3, r1, r3
.LBE6260:
.LBE6259:
	.loc 25 1023 0
	mov	r0, #0
.LVL250:
.LBB6262:
.LBB6261:
	.loc 25 398 0
	str	r2, [r3, #-255]
.LBE6261:
.LBE6262:
	.loc 25 1023 0
	bx	lr
.LVL251:
.L273:
	.loc 25 1019 0
	add	r1, r0, r1, lsl #2
.LVL252:
	.loc 25 1023 0
	mov	r0, #0
.LVL253:
	.loc 25 1019 0
	str	r2, [r1, #24]
	.loc 25 1023 0
	bx	lr
	.cfi_endproc
.LFE645:
	.size	invokeVCPUInjectIRQ, .-invokeVCPUInjectIRQ
	.section	.boot.text
	.align	2
	.global	init_core_state
	.syntax unified
	.arm
	.fpu softvfp
	.type	init_core_state, %function
init_core_state:
.LFB677:
	.file 26 "/home/sel4/work/work2/kernel/src/kernel/boot.c"
	.loc 26 481 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL254:
	.loc 26 488 0
	sub	r2, r0, #1
	.loc 26 483 0
	movw	r3, #:lower16:ksActiveFPUState
	.loc 26 481 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 26 483 0
	movt	r3, #:upper16:ksActiveFPUState
	.loc 26 488 0
	cmn	r2, #3
	.loc 26 483 0
	mov	r2, #0
	.loc 26 487 0
	movw	r1, #:lower16:ksDebugTCBs
	movt	r1, #:upper16:ksDebugTCBs
	.loc 26 483 0
	str	r2, [r3]
.LBB6263:
	.loc 26 493 0
	movw	r3, #:lower16:ksIdleThread
.LBE6263:
	.loc 26 488 0
	bls	.L280
.LVL255:
.LBB6276:
	.loc 26 493 0
	movt	r3, #:upper16:ksIdleThread
.LBB6264:
.LBB6265:
	.file 27 "/home/sel4/work/work2/kernel/src/object/tcb.c"
	.loc 27 178 0
	mov	lr, r2
.LBE6265:
.LBE6264:
	.loc 26 493 0
	ldr	r3, [r3]
.LVL256:
.LBB6271:
.LBB6266:
	.loc 27 178 0
	str	r2, [r3, #524]
.L277:
.LBE6266:
.LBE6271:
.LBE6276:
	.loc 26 496 0
	movw	ip, #:lower16:ksSchedulerAction
	.loc 26 497 0
	movw	r2, #:lower16:ksCurThread
.LBB6277:
.LBB6272:
.LBB6267:
	.loc 27 185 0
	str	r3, [r1]
.LVL257:
.LBE6267:
.LBE6272:
.LBE6277:
	.loc 26 496 0
	movt	ip, #:upper16:ksSchedulerAction
	.loc 26 497 0
	movt	r2, #:upper16:ksCurThread
.LBB6278:
.LBB6273:
.LBB6268:
	.loc 27 184 0
	str	lr, [r3, #520]
.LBE6268:
.LBE6273:
.LBE6278:
	.loc 26 497 0
	str	r3, [r2]
	.loc 26 496 0
	str	r0, [ip]
	.loc 26 498 0
	ldr	pc, [sp], #4
.LVL258:
.L280:
.LBB6279:
	.loc 26 493 0
	movt	r3, #:upper16:ksIdleThread
.LBE6279:
.LBB6280:
.LBB6281:
	.loc 27 184 0
	str	r2, [r0, #520]
.LVL259:
.LBE6281:
.LBE6280:
.LBB6282:
.LBB6274:
.LBB6269:
	.loc 27 181 0
	mov	lr, r0
.LBE6269:
.LBE6274:
	.loc 26 493 0
	ldr	r3, [r3]
.LVL260:
.LBB6275:
.LBB6270:
	.loc 27 178 0
	str	r2, [r3, #524]
	.loc 27 181 0
	str	r3, [r0, #524]
	b	.L277
.LBE6270:
.LBE6275:
.LBE6282:
	.cfi_endproc
.LFE677:
	.size	init_core_state, .-init_core_state
	.align	2
	.global	bi_finalise
	.syntax unified
	.arm
	.fpu softvfp
	.type	bi_finalise, %function
bi_finalise:
.LFB682:
	.loc 26 596 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL261:
	.loc 26 598 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	.loc 26 599 0
	ldr	r2, [r3, #16]
	ldr	r1, [r3, #20]
	.loc 26 598 0
	ldr	r3, [r3, #24]
.LVL262:
	.loc 26 599 0
	str	r1, [r2, #20]	@ unaligned
	str	r3, [r2, #24]	@ unaligned
	.loc 26 602 0
	bx	lr
	.cfi_endproc
.LFE682:
	.size	bi_finalise, .-bi_finalise
	.text
	.align	2
	.global	doNBRecvFailedTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	doNBRecvFailedTransfer, %function
doNBRecvFailedTransfer:
.LFB705:
	.file 28 "/home/sel4/work/work2/kernel/src/kernel/thread.c"
	.loc 28 251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL263:
.LBB6283:
.LBB6284:
	.loc 10 30 0
	mov	r3, #0
	str	r3, [r0]
.LVL264:
.LBE6284:
.LBE6283:
	.loc 28 254 0
	bx	lr
	.cfi_endproc
.LFE705:
	.size	doNBRecvFailedTransfer, .-doNBRecvFailedTransfer
	.align	2
	.global	setMCPriority
	.syntax unified
	.arm
	.fpu softvfp
	.type	setMCPriority, %function
setMCPriority:
.LFB712:
	.loc 28 360 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL265:
	.loc 28 361 0
	str	r1, [r0, #484]
	.loc 28 362 0
	bx	lr
	.cfi_endproc
.LFE712:
	.size	setMCPriority, .-setMCPriority
	.align	2
	.global	putchar
	.syntax unified
	.arm
	.fpu softvfp
	.type	putchar, %function
putchar:
.LFB725:
	.loc 8 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL266:
.LBB6285:
.LBB6286:
.LBB6287:
	.loc 4 44 0
	mvn	r2, #1040384
.L285:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L285
.LBE6287:
.LBE6286:
.LBE6285:
	.loc 8 22 0
	cmp	r0, #10
.LBB6290:
.LBB6289:
.LBB6288:
	.loc 4 45 0
	str	r0, [r2, #-4063]
.LVL267:
.LBE6288:
.LBE6289:
.LBE6290:
	.loc 8 22 0
	beq	.L289
	.loc 8 25 0
	bx	lr
.L289:
	b	putchar.part.64
.LVL268:
	.cfi_endproc
.LFE725:
	.size	putchar, .-putchar
	.align	2
	.global	print_unsigned_long
	.syntax unified
	.arm
	.fpu softvfp
	.type	print_unsigned_long, %function
print_unsigned_long:
.LFB730:
	.loc 8 77 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL269:
	.loc 8 86 0
	cmp	r1, #10
	cmpne	r1, #16
	bne	.L293
	.loc 8 90 0
	cmp	r0, #0
.LBB6291:
.LBB6292:
.LBB6293:
.LBB6294:
	.loc 4 44 0
	mvneq	r2, #1040384
.LBE6294:
.LBE6293:
.LBE6292:
.LBE6291:
	.loc 8 90 0
	beq	.L292
	b	print_unsigned_long.part.65
.LVL270:
.L292:
.LBB6301:
.LBB6299:
.LBB6297:
.LBB6295:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L292
	.loc 4 45 0
	mov	r3, #48
.LBE6295:
.LBE6297:
.LBE6299:
.LBE6301:
	.loc 8 92 0
	mov	r0, #1
.LVL271:
.LBB6302:
.LBB6300:
.LBB6298:
.LBB6296:
	.loc 4 45 0
	str	r3, [r2, #-4063]
.LBE6296:
.LBE6298:
.LBE6300:
.LBE6302:
	.loc 8 110 0
	bx	lr
.LVL272:
.L293:
	.loc 8 87 0
	mov	r0, #0
.LVL273:
	.loc 8 110 0
	bx	lr
	.cfi_endproc
.LFE730:
	.size	print_unsigned_long, .-print_unsigned_long
	.align	2
	.global	puts
	.syntax unified
	.arm
	.fpu softvfp
	.type	puts, %function
puts:
.LFB735:
	.loc 8 300 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL274:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 8 301 0
	ldrb	r2, [r0]	@ zero_extendqisi2
	cmp	r2, #0
.LBB6303:
.LBB6304:
.LBB6305:
.LBB6306:
.LBB6307:
	.loc 4 44 0
	mvnne	r1, #1040384
.LBE6307:
.LBE6306:
.LBE6305:
.LBE6304:
.LBE6303:
	.loc 8 301 0
	beq	.L304
.LVL275:
.L301:
.LBB6316:
.LBB6314:
.LBB6312:
.LBB6310:
.LBB6308:
	.loc 4 44 0
	ldr	r3, [r1, #-4079]
	tst	r3, #2
	beq	.L301
.LBE6308:
.LBE6310:
.LBE6312:
	.loc 8 22 0
	cmp	r2, #10
.LBB6313:
.LBB6311:
.LBB6309:
	.loc 4 45 0
	str	r2, [r1, #-4063]
.LBE6309:
.LBE6311:
.LBE6313:
	.loc 8 22 0
	beq	.L311
.L302:
.LVL276:
.LBE6314:
.LBE6316:
	.loc 8 301 0 discriminator 2
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2
.LVL277:
	cmp	r2, #0
	bne	.L301
.LVL278:
.L304:
.LBB6317:
.LBB6318:
.LBB6319:
.LBB6320:
.LBB6321:
	.loc 4 44 0
	mvn	r2, #1040384
.L300:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L300
	.loc 4 45 0
	mov	r3, #10
	str	r3, [r2, #-4063]
.LBE6321:
.LBE6320:
.LBE6319:
	bl	putchar.part.64
.LVL279:
.LBE6318:
.LBE6317:
	.loc 8 306 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L311:
	.cfi_restore_state
.LBB6322:
.LBB6315:
	bl	putchar.part.64
.LVL280:
	b	.L302
.LBE6315:
.LBE6322:
	.cfi_endproc
.LFE735:
	.size	puts, .-puts
	.align	2
	.global	kprintf
	.syntax unified
	.arm
	.fpu softvfp
	.type	kprintf, %function
kprintf:
.LFB736:
	.loc 8 310 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL281:
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 52
	.cfi_offset 4, -52
	.cfi_offset 5, -48
	.cfi_offset 6, -44
	.cfi_offset 7, -40
	.cfi_offset 8, -36
	.cfi_offset 9, -32
	.cfi_offset 10, -28
	.cfi_offset 11, -24
	.cfi_offset 14, -20
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 64
	.loc 8 310 0
	ldr	r9, [sp, #48]
	.loc 8 314 0
	add	r3, sp, #52
	str	r3, [sp, #4]
.LVL282:
.LBB6399:
.LBB6400:
	.loc 8 173 0
	cmp	r9, #0
	beq	.L365
.LBB6401:
	.loc 8 224 0
	movw	r6, #:lower16:.LC3
	mov	r8, r3
.LBE6401:
	.loc 8 173 0
	mov	r7, #0
.LBB6404:
	.loc 8 224 0
	movt	r6, #:upper16:.LC3
.LBE6404:
.LBB6405:
.LBB6406:
.LBB6407:
.LBB6408:
.LBB6409:
	.loc 4 44 0
	mvn	r4, #1040384
.LVL283:
.L314:
.LBE6409:
.LBE6408:
.LBE6407:
.LBE6406:
.LBE6405:
	.loc 8 179 0
	ldrb	r2, [r9]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L360
.LVL284:
.L363:
	.loc 8 281 0
	cmp	r2, #37
	bne	.L358
.LVL285:
	.loc 8 179 0
	ldrb	r2, [r9, #1]	@ zero_extendqisi2
	.loc 8 284 0
	add	r9, r9, #1
.LVL286:
	.loc 8 179 0
	cmp	r2, #0
	beq	.L360
	mov	r5, #0
	b	.L361
.LVL287:
.L316:
	.loc 8 182 0
	add	r5, r5, r5, lsl #2
.LVL288:
	.loc 8 184 0
	cmn	r9, #1
	.loc 8 182 0
	add	r5, r3, r5, lsl #1
.LVL289:
	.loc 8 184 0
	beq	.L315
	ldrb	r2, [r9, #1]!	@ zero_extendqisi2
.LVL290:
.L361:
.LBB6418:
.LBB6419:
	.loc 8 156 0
	sub	r3, r2, #48
.LBE6419:
.LBE6418:
	.loc 8 181 0
	uxtb	r1, r3
	cmp	r1, #9
	bls	.L316
	.loc 8 188 0
	cmp	r2, #112
	beq	.L317
	bhi	.L318
	cmp	r2, #100
	beq	.L319
	cmp	r2, #108
	beq	.L320
	cmp	r2, #37
	beq	.L321
.LVL291:
.L367:
	.loc 8 238 0
	mvn	r0, #0
.LVL292:
.L312:
.LBE6400:
.LBE6399:
	.loc 8 318 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 52
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.LVL293:
.L358:
	.cfi_restore_state
.LBB6541:
.LBB6540:
.LBB6420:
.LBB6416:
.LBB6414:
.LBB6412:
.LBB6410:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L358
.LBE6410:
.LBE6412:
.LBE6414:
	.loc 8 22 0
	cmp	r2, #10
.LBB6415:
.LBB6413:
.LBB6411:
	.loc 4 45 0
	str	r2, [r4, #-4063]
.LBE6411:
.LBE6413:
.LBE6415:
	.loc 8 22 0
	beq	.L418
.L362:
.LBE6416:
.LBE6420:
	.loc 8 179 0
	ldrb	r2, [r9, #1]!	@ zero_extendqisi2
	.loc 8 289 0
	add	r7, r7, #1
.LVL294:
	.loc 8 179 0
	cmp	r2, #0
	bne	.L363
.L360:
	mov	r0, r7
	b	.L312
.LVL295:
.L321:
.LBB6421:
.LBB6422:
.LBB6423:
.LBB6424:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L321
	.loc 4 45 0
	mov	r3, #37
.LBE6424:
.LBE6423:
.LBE6422:
.LBE6421:
	.loc 8 191 0
	add	r0, r7, #1
	.loc 8 192 0
	add	r9, r9, #1
.LVL296:
.LBB6428:
.LBB6427:
.LBB6426:
.LBB6425:
	.loc 4 45 0
	str	r3, [r4, #-4063]
.LVL297:
.L325:
.LBE6425:
.LBE6426:
.LBE6427:
.LBE6428:
	.loc 8 277 0
	sub	r1, r5, r0
.LVL298:
	mov	r7, r5
.LBB6429:
.LBB6430:
	.loc 8 30 0
	cmp	r1, #0
	ble	.L314
	mov	r2, #0
.LBB6431:
.LBB6432:
.LBB6433:
.LBB6434:
	.loc 4 45 0
	mov	r0, #32
.LVL299:
.L356:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L356
.LBE6434:
.LBE6433:
.LBE6432:
.LBE6431:
	.loc 8 30 0
	add	r2, r2, #1
.LBB6438:
.LBB6437:
.LBB6436:
.LBB6435:
	.loc 4 45 0
	str	r0, [r4, #-4063]
.LVL300:
.LBE6435:
.LBE6436:
.LBE6437:
.LBE6438:
	.loc 8 30 0
	cmp	r1, r2
	bne	.L356
	b	.L314
.LVL301:
.L315:
.LBE6430:
.LBE6429:
	.loc 8 188 0
	mov	r3, #0
	ldrb	r3, [r3]	@ zero_extendqisi2
	.inst	0xe7f000f0
.LVL302:
.L318:
	cmp	r2, #117
	beq	.L322
	cmp	r2, #120
	beq	.L323
	cmp	r2, #115
	bne	.L367
	.loc 8 232 0
	ldr	r0, [r8]
	.loc 8 233 0
	add	r9, r9, #1
.LVL303:
	.loc 8 232 0
	add	r8, r8, #4
.LVL304:
	bl	print_string
.LVL305:
	add	r0, r0, r7
.LVL306:
	b	.L325
.LVL307:
.L323:
	.loc 8 215 0
	ldr	r0, [r8]
	add	r8, r8, #4
.LVL308:
.LBB6439:
.LBB6440:
	.loc 8 90 0
	cmp	r0, #0
	bne	.L419
.L333:
.LBB6441:
.LBB6442:
.LBB6443:
.LBB6444:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L333
.LVL309:
.L414:
	.loc 4 45 0
	mov	r3, #48
.LBE6444:
.LBE6443:
.LBE6442:
.LBE6441:
	.loc 8 92 0
	mov	r0, #1
.LBB6448:
.LBB6447:
.LBB6446:
.LBB6445:
	.loc 4 45 0
	str	r3, [r4, #-4063]
.LVL310:
.L413:
.LBE6445:
.LBE6446:
.LBE6447:
.LBE6448:
.LBE6440:
.LBE6439:
.LBB6450:
	.loc 8 225 0
	add	r0, r0, r7
.LVL311:
.L336:
	.loc 8 227 0
	add	r9, r9, #1
.LVL312:
	b	.L325
.LVL313:
.L322:
.LBE6450:
	.loc 8 210 0
	ldr	r0, [r8]
	add	r8, r8, #4
.LVL314:
.LBB6451:
.LBB6452:
	.loc 8 90 0
	cmp	r0, #0
	bne	.L420
.L331:
.LBB6453:
.LBB6454:
.LBB6455:
.LBB6456:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	bne	.L414
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L331
	b	.L414
.LVL315:
.L317:
.LBE6456:
.LBE6455:
.LBE6454:
.LBE6453:
.LBE6452:
.LBE6451:
.LBB6458:
	.loc 8 220 0
	ldr	fp, [r8]
	add	r8, r8, #4
.LVL316:
	.loc 8 221 0
	cmp	fp, #0
	bne	.L335
	.loc 8 222 0
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	print_string
.LVL317:
	add	r0, r0, r7
.LVL318:
	b	.L336
.LVL319:
.L320:
.LBE6458:
	.loc 8 238 0
	ldrb	r3, [r9, #1]	@ zero_extendqisi2
	sub	r3, r3, #100
	cmp	r3, #20
	ldrls	pc, [pc, r3, asl #2]
	b	.L367
.L338:
	.word	.L337
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L339
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L367
	.word	.L340
	.word	.L367
	.word	.L367
	.word	.L341
.LVL320:
.L319:
.LBB6459:
	.loc 8 196 0
	ldr	r3, [r8]
	add	r8, r8, #4
.LVL321:
	.loc 8 198 0
	cmp	r3, #0
	blt	.L394
.LVL322:
.LBB6460:
.LBB6461:
	.loc 8 90 0
	bne	.L328
.LVL323:
.L395:
.LBB6462:
.LBB6463:
.LBB6464:
.LBB6465:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L395
	b	.L414
.LVL324:
.L394:
.LBE6465:
.LBE6464:
.LBE6463:
.LBE6462:
.LBE6461:
.LBE6460:
.LBB6467:
.LBB6468:
.LBB6469:
.LBB6470:
	ldr	r2, [r4, #-4079]
	tst	r2, #2
	beq	.L394
	.loc 4 45 0
	mov	r2, #45
.LBE6470:
.LBE6469:
.LBE6468:
.LBE6467:
	.loc 8 200 0
	add	r7, r7, #1
.LVL325:
	.loc 8 201 0
	rsb	r3, r3, #0
.LBB6474:
.LBB6473:
.LBB6472:
.LBB6471:
	.loc 4 45 0
	str	r2, [r4, #-4063]
.LVL326:
.L328:
.LBE6471:
.LBE6472:
.LBE6473:
.LBE6474:
.LBB6475:
.LBB6466:
	mov	r0, r3
	mov	r1, #10
	bl	print_unsigned_long.part.65
.LVL327:
	b	.L413
.LVL328:
.L335:
.LBE6466:
.LBE6475:
.LBE6459:
.LBB6476:
	.loc 8 224 0
	mov	r0, r6
	bl	print_string
.LVL329:
	mov	r10, r0
.LVL330:
.LBB6402:
.LBB6403:
	mov	r1, #16
	mov	r0, fp
.LVL331:
	bl	print_unsigned_long.part.65
.LVL332:
.LBE6403:
.LBE6402:
	.loc 8 225 0
	add	r0, r10, r0
	b	.L413
.LVL333:
.L418:
.LBE6476:
.LBB6477:
.LBB6417:
	bl	putchar.part.64
.LVL334:
	b	.L362
.LVL335:
.L420:
.LBE6417:
.LBE6477:
.LBB6478:
.LBB6457:
	mov	r1, #10
	bl	print_unsigned_long.part.65
.LVL336:
	b	.L413
.LVL337:
.L419:
.LBE6457:
.LBE6478:
.LBB6479:
.LBB6449:
	mov	r1, #16
	bl	print_unsigned_long.part.65
.LVL338:
	b	.L413
.LVL339:
.L337:
.LBE6449:
.LBE6479:
.LBB6480:
	.loc 8 240 0
	ldr	r3, [r8]
	add	r8, r8, #4
.LVL340:
	.loc 8 242 0
	cmp	r3, #0
	blt	.L396
.LVL341:
.LBB6481:
.LBB6482:
	.loc 8 90 0
	bne	.L344
.LVL342:
.L397:
.LBB6483:
.LBB6484:
.LBB6485:
.LBB6486:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L397
.LVL343:
.L415:
.LBE6486:
.LBE6485:
.LBE6484:
.LBE6483:
.LBE6482:
.LBE6481:
.LBE6480:
.LBB6497:
.LBB6498:
.LBB6499:
.LBB6500:
.LBB6501:
.LBB6502:
	.loc 4 45 0
	mov	r3, #48
.LBE6502:
.LBE6501:
.LBE6500:
.LBE6499:
	.loc 8 92 0
	mov	r0, #1
.LBB6509:
.LBB6507:
.LBB6505:
.LBB6503:
	.loc 4 45 0
	str	r3, [r4, #-4063]
.L354:
.LBE6503:
.LBE6505:
.LBE6507:
.LBE6509:
.LBE6498:
.LBE6497:
	.loc 8 263 0
	add	r0, r0, r7
.LVL344:
	.loc 8 264 0
	add	r9, r9, #2
.LVL345:
	b	.L325
.LVL346:
.L396:
.LBB6513:
.LBB6488:
.LBB6489:
.LBB6490:
.LBB6491:
	.loc 4 44 0
	ldr	r2, [r4, #-4079]
	tst	r2, #2
	beq	.L396
	.loc 4 45 0
	mov	r2, #45
.LBE6491:
.LBE6490:
.LBE6489:
.LBE6488:
	.loc 8 244 0
	add	r7, r7, #1
.LVL347:
	.loc 8 245 0
	rsb	r3, r3, #0
.LBB6495:
.LBB6494:
.LBB6493:
.LBB6492:
	.loc 4 45 0
	str	r2, [r4, #-4063]
.LVL348:
.L344:
.LBE6492:
.LBE6493:
.LBE6494:
.LBE6495:
.LBB6496:
.LBB6487:
	mov	r0, r3
	mov	r1, #10
	bl	print_unsigned_long.part.65
.LVL349:
	b	.L354
.LVL350:
.L339:
.LBE6487:
.LBE6496:
.LBE6513:
	.loc 8 253 0
	ldrb	r3, [r9, #2]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L421
.L347:
	.loc 8 256 0
	add	r9, r9, #3
.LVL351:
	mov	r0, r7
	b	.L325
.LVL352:
.L340:
	.loc 8 259 0
	ldr	r0, [r8]
	add	r8, r8, #4
.LVL353:
.LBB6514:
.LBB6515:
	.loc 8 90 0
	cmp	r0, #0
	bne	.L422
.L351:
.LBB6516:
.LBB6517:
.LBB6518:
.LBB6519:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L351
	b	.L415
.LVL354:
.L341:
.LBE6519:
.LBE6518:
.LBE6517:
.LBE6516:
.LBE6515:
.LBE6514:
	.loc 8 263 0
	ldr	r0, [r8]
	add	r8, r8, #4
.LVL355:
.LBB6521:
.LBB6511:
	.loc 8 90 0
	cmp	r0, #0
	bne	.L423
.L353:
.LBB6510:
.LBB6508:
.LBB6506:
.LBB6504:
	.loc 4 44 0
	ldr	r3, [r4, #-4079]
	tst	r3, #2
	beq	.L353
	b	.L415
.LVL356:
.L365:
.LBE6504:
.LBE6506:
.LBE6508:
.LBE6510:
.LBE6511:
.LBE6521:
	.loc 8 173 0
	mov	r0, r9
	b	.L312
.LVL357:
.L423:
.LBB6522:
.LBB6512:
	mov	r1, #16
	bl	print_unsigned_long.part.65
.LVL358:
	b	.L354
.LVL359:
.L422:
.LBE6512:
.LBE6522:
.LBB6523:
.LBB6520:
	mov	r1, #10
	bl	print_unsigned_long.part.65
.LVL360:
	b	.L354
.LVL361:
.L421:
.LBE6520:
.LBE6523:
	.loc 8 254 0
	add	r3, r8, #7
	bic	r3, r3, #7
	add	r8, r3, #8
.LVL362:
	ldr	fp, [r3]
	ldr	r10, [r3, #4]
.LVL363:
.LBB6524:
.LBB6525:
	.loc 8 134 0
	cmp	r10, #0
	bne	.L424
.LVL364:
.L348:
	.loc 8 148 0
	mov	r0, fp
	mov	r1, #16
	bl	print_unsigned_long
.LVL365:
	add	r0, r0, r10
.LBE6525:
.LBE6524:
	.loc 8 254 0
	add	r7, r7, r0
.LVL366:
	b	.L347
.LVL367:
.L424:
.LBB6539:
.LBB6538:
	.loc 8 135 0
	mov	r0, r10
	mov	r1, #16
	bl	print_unsigned_long
.LVL368:
	add	r1, r0, #8
	mov	r10, r0
.LVL369:
	.loc 8 121 0
	mov	r3, #-268435456
.LBB6526:
.LBB6527:
.LBB6528:
.LBB6529:
	.loc 4 45 0
	mov	r2, #48
.LVL370:
.L349:
.LBE6529:
.LBE6528:
.LBE6527:
.LBE6526:
	.loc 8 137 0
	tst	fp, r3
	bne	.L348
.L350:
.LBB6536:
.LBB6534:
.LBB6532:
.LBB6530:
	.loc 4 44 0
	ldr	r0, [r4, #-4079]
	tst	r0, #2
	beq	.L350
.LBE6530:
.LBE6532:
.LBE6534:
.LBE6536:
	.loc 8 139 0
	add	r10, r10, #1
.LVL371:
	.loc 8 140 0
	lsr	r3, r3, #4
.LVL372:
.LBB6537:
.LBB6535:
.LBB6533:
.LBB6531:
	.loc 4 45 0
	str	r2, [r4, #-4063]
.LVL373:
.LBE6531:
.LBE6533:
.LBE6535:
.LBE6537:
	.loc 8 142 0
	cmp	r1, r10
	bne	.L349
	b	.L348
.LBE6538:
.LBE6539:
.LBE6540:
.LBE6541:
	.cfi_endproc
.LFE736:
	.size	kprintf, .-kprintf
	.align	2
	.global	halt
	.syntax unified
	.arm
	.fpu softvfp
	.type	halt, %function
halt:
.LFB383:
	.loc 1 24 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 1 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/src/arch/arm/32/idle.c" 1
	cpsid iaf
@ 0 "" 2
	.loc 1 29 0
	.arm
	.syntax unified
	movw	r0, #:lower16:.LC4
.LBB6547:
.LBB6548:
	.file 29 "/home/sel4/work/work2/kernel/include/api/debug.h"
	.loc 29 29 0
	movw	r4, #:lower16:ksKernelEntry
.LBE6548:
.LBE6547:
	.loc 1 29 0
	movt	r0, #:upper16:.LC4
.LBB6552:
.LBB6549:
	.loc 29 29 0
	movt	r4, #:upper16:ksKernelEntry
.LBE6549:
.LBE6552:
	.loc 1 29 0
	bl	kprintf
.LVL374:
.LBB6553:
.LBB6550:
	.loc 29 28 0
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL375:
	.loc 29 29 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	and	r3, r3, #7
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L426
.L428:
	.word	.L427
	.word	.L429
	.word	.L430
	.word	.L426
	.word	.L431
	.word	.L432
	.word	.L426
	.word	.L433
.L426:
	.loc 29 68 0
	movw	r0, #:lower16:.LC13
	movt	r0, #:upper16:.LC13
	bl	kprintf
.LVL376:
.L435:
.LBE6550:
.LBE6553:
.LBB6554:
.LBB6555:
.LBB6556:
	.loc 2 16 0
	.syntax divided
@ 16 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	wfi
@ 0 "" 2
	.arm
	.syntax unified
	b	.L435
.L433:
.LBE6556:
.LBE6555:
.LBE6554:
.LBB6557:
.LBB6551:
	.loc 29 59 0
	movw	r0, #:lower16:.LC12
	movt	r0, #:upper16:.LC12
	bl	kprintf
.LVL377:
	b	.L435
.L432:
	.loc 29 48 0
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	movw	r3, #:lower16:.LANCHOR3
	movw	r0, #:lower16:.LC10
	movt	r3, #:upper16:.LANCHOR3
	movt	r0, #:upper16:.LC10
	and	r1, r1, #15
	ldr	r2, [r3, r1, lsl #2]
	bl	kprintf
.LVL378:
	.loc 29 50 0
	ldrb	ip, [r4, #1]	@ zero_extendqisi2
	and	r3, ip, #15
	sub	r2, r3, #3
	.loc 29 49 0
	cmp	r3, #1
	cmpne	r2, #1
	bhi	.L435
	.loc 29 53 0
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	movw	r0, #:lower16:.LC11
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	movt	r0, #:upper16:.LC11
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	lsl	r3, r3, #6
	and	r1, lr, #1
	orr	r3, r3, lr, lsr #2
	lsl	r1, r1, #4
	and	r2, r2, #31
	orr	r1, r1, ip, lsr #4
	orr	r2, r3, r2, lsl #14
	bl	kprintf
.LVL379:
	b	.L435
.L431:
	.loc 29 37 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	movw	r0, #:lower16:.LC8
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	movt	r0, #:upper16:.LC8
.L440:
	.loc 29 34 0
	ldrb	r2, [r4, #3]	@ zero_extendqisi2
	orr	r3, r3, ip, lsl #8
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	orr	r3, r3, r2, lsl #16
	and	r1, r1, #31
	orr	r1, r3, r1, lsl #24
	bl	kprintf
.LVL380:
	b	.L435
.L429:
	movw	r0, #:lower16:.LC7
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	movt	r0, #:upper16:.LC7
	b	.L440
.L427:
	.loc 29 31 0
	movw	r0, #:lower16:.LC6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	movt	r0, #:upper16:.LC6
	b	.L440
.L430:
	.loc 29 40 0
	movw	r0, #:lower16:.LC9
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	movt	r0, #:upper16:.LC9
	b	.L440
.LBE6551:
.LBE6557:
	.cfi_endproc
.LFE383:
	.size	halt, .-halt
	.align	2
	.global	maskVMRights
	.syntax unified
	.arm
	.fpu softvfp
	.type	maskVMRights, %function
maskVMRights:
.LFB402:
	.loc 11 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL381:
	.loc 11 139 0
	cmp	r0, #0
.LVL382:
	bxeq	lr
	.loc 11 142 0
	cmp	r0, #2
	beq	.L454
	.loc 11 146 0
	cmp	r0, #3
	beq	.L455
.L449:
	.loc 11 159 0
	mov	r0, #1
.LVL383:
	bx	lr
.LVL384:
.L454:
	.loc 11 142 0 discriminator 1
	tst	r1, #2
	.loc 11 144 0 discriminator 1
	moveq	r0, #1
.LVL385:
	movne	r0, #2
	bx	lr
.LVL386:
.L455:
.LBB6583:
.LBB6584:
	.file 30 "32/mode/api/shared_types_gen.h"
	.loc 30 166 0 discriminator 1
	ubfx	r3, r1, #1, #1
.LBE6584:
.LBE6583:
	.loc 11 146 0 discriminator 1
	cmp	r3, #0
	beq	.L444
.LVL387:
	.loc 11 148 0
	tst	r1, #1
	.loc 11 151 0
	moveq	r0, #2
.LVL388:
	movne	r0, #3
	bx	lr
.LVL389:
.L444:
	.loc 11 155 0 discriminator 1
	tst	r1, #1
	beq	.L449
.LVL390:
.LBB6585:
.LBB6586:
	.loc 11 157 0
	movw	ip, #:lower16:ksCurThread
.LBE6586:
.LBE6585:
	.loc 11 138 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6589:
.LBB6587:
	.loc 11 157 0
	movw	r0, #:lower16:.LC14
.LVL391:
	movt	ip, #:upper16:ksCurThread
	mov	r1, r3
.LVL392:
	ldr	r2, .L456
	ldr	ip, [ip]
.LBE6587:
.LBE6589:
	.loc 11 138 0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
.LBB6590:
.LBB6588:
	.loc 11 157 0
	mov	r3, #157
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL393:
	movw	r0, #:lower16:.LC15
	movt	r0, #:upper16:.LC15
	bl	kprintf
.LVL394:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL395:
	mov	r0, #1
.LBE6588:
.LBE6590:
	.loc 11 160 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L457:
	.align	2
.L456:
	.word	.LANCHOR3+36
	.cfi_endproc
.LFE402:
	.size	maskVMRights, .-maskVMRights
	.align	2
	.global	kernelPrefetchAbort
	.syntax unified
	.arm
	.fpu softvfp
	.type	kernelPrefetchAbort, %function
kernelPrefetchAbort:
.LFB467:
	.loc 11 3066 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL396:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB6591:
.LBB6592:
	.loc 18 100 0
	.syntax divided
@ 100 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r4, c5, c2, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6592:
.LBE6591:
	.loc 11 3069 0
	movw	r0, #:lower16:.LC17
.LVL397:
	movt	r0, #:upper16:.LC17
	bl	kprintf
.LVL398:
	.loc 11 3070 0
	movw	r0, #:lower16:.LC18
	mov	r1, r5
	movt	r0, #:upper16:.LC18
	bl	kprintf
.LVL399:
	.loc 11 3071 0
	movw	r0, #:lower16:.LC19
	mov	r1, r4
	movt	r0, #:upper16:.LC19
	bl	kprintf
.LVL400:
	.loc 11 3073 0
	bl	halt
.LVL401:
	.cfi_endproc
.LFE467:
	.size	kernelPrefetchAbort, .-kernelPrefetchAbort
	.align	2
	.global	kernelDataAbort
	.syntax unified
	.arm
	.fpu softvfp
	.type	kernelDataAbort, %function
kernelDataAbort:
.LFB468:
	.loc 11 3078 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL402:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	str	r6, [sp, #8]
	mov	r6, r0
	str	lr, [sp, #12]
.LBB6593:
.LBB6594:
	.loc 18 107 0
	.syntax divided
@ 107 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r4, c6, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6594:
.LBE6593:
.LBB6595:
.LBB6596:
	.loc 18 100 0
	.syntax divided
@ 100 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r5, c5, c2, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6596:
.LBE6595:
	.loc 11 3082 0
	movw	r0, #:lower16:.LC20
.LVL403:
	movt	r0, #:upper16:.LC20
	bl	kprintf
.LVL404:
	.loc 11 3083 0
	movw	r0, #:lower16:.LC18
	mov	r1, r6
	movt	r0, #:upper16:.LC18
	bl	kprintf
.LVL405:
	.loc 11 3084 0
	movw	r0, #:lower16:.LC21
	mov	r2, r5
	mov	r1, r4
	movt	r0, #:upper16:.LC21
	bl	kprintf
.LVL406:
	.loc 11 3086 0
	bl	halt
.LVL407:
	.cfi_endproc
.LFE468:
	.size	kernelDataAbort, .-kernelDataAbort
	.align	2
	.global	kernelUndefinedInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	kernelUndefinedInstruction, %function
kernelUndefinedInstruction:
.LFB469:
	.loc 11 3091 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL408:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB6597:
.LBB6598:
	.loc 18 100 0
	.syntax divided
@ 100 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r4, c5, c2, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6598:
.LBE6597:
	.loc 11 3094 0
	movw	r0, #:lower16:.LC22
.LVL409:
	movt	r0, #:upper16:.LC22
	bl	kprintf
.LVL410:
	.loc 11 3095 0
	movw	r0, #:lower16:.LC18
	mov	r1, r5
	movt	r0, #:upper16:.LC18
	bl	kprintf
.LVL411:
	.loc 11 3096 0
	movw	r0, #:lower16:.LC19
	mov	r1, r4
	movt	r0, #:upper16:.LC19
	bl	kprintf
.LVL412:
	.loc 11 3098 0
	bl	halt
.LVL413:
	.cfi_endproc
.LFE469:
	.size	kernelUndefinedInstruction, .-kernelUndefinedInstruction
	.section	.boot.text
	.align	2
	.global	fpsimd_init
	.syntax unified
	.arm
	.fpu softvfp
	.type	fpsimd_init, %function
fpsimd_init:
.LFB488:
	.file 31 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c"
	.loc 31 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 31 68 0
	.syntax divided
@ 68 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p15, 0,  r3,  c1,  c0, 2
@ 0 "" 2
.LVL414:
	.loc 31 69 0
	.arm
	.syntax unified
	orr	r3, r3, #15728640
.LVL415:
.LBB6599:
	.loc 31 71 0
	.syntax divided
@ 71 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mcr   p15, 0,  r3,  c1,  c0, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBE6599:
.LBB6600:
.LBB6601:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6601:
.LBE6600:
.LBB6602:
.LBB6603:
	.loc 31 34 0
	.syntax divided
@ 34 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
.LVL416:
	.loc 31 35 0
	.arm
	.syntax unified
	orr	r3, r3, #-2147483648
.LVL417:
.LBB6604:
	.loc 31 36 0
	.syntax divided
@ 36 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mcr   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6604:
	.loc 31 39 0
	.syntax divided
@ 39 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
.LVL418:
	.arm
	.syntax unified
.LBE6603:
.LBE6602:
	.loc 31 75 0
	cmp	r3, #0
	blt	.L471
.LBB6605:
.LBB6606:
	.loc 31 54 0
	.syntax divided
@ 54 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	.word 0xeef73a10 
mov r2, r3       

@ 0 "" 2
	.loc 31 59 0
	.arm
	.syntax unified
	and	r2, r2, #15
.LBE6606:
.LBE6605:
	.loc 31 81 0
	movw	r3, #:lower16:isFPUD32SupportedCached
.LBB6609:
.LBB6607:
	.loc 31 59 0
	sub	r2, r2, #2
.LBE6607:
.LBE6609:
	.loc 31 81 0
	movt	r3, #:upper16:isFPUD32SupportedCached
.LBB6610:
.LBB6608:
	.loc 31 59 0
	clz	r2, r2
	lsr	r2, r2, #5
.LBE6608:
.LBE6610:
	.loc 31 81 0
	str	r2, [r3]
.LBB6611:
.LBB6612:
	.file 32 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h"
	.loc 32 144 0
	.syntax divided
@ 144 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
.LVL419:
	.loc 32 145 0
	.arm
	.syntax unified
	bic	r3, r3, #1073741824
.LVL420:
.LBB6613:
	.loc 32 146 0
	.syntax divided
@ 146 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6613:
	.loc 32 148 0
	movw	r3, #:lower16:isFPUEnabledCached
.LVL421:
	mov	r2, #0
	movt	r3, #:upper16:isFPUEnabledCached
.LBE6612:
.LBE6611:
	.loc 31 85 0
	mov	r0, #1
.LBB6615:
.LBB6614:
	.loc 32 148 0
	str	r2, [r3]
.LBE6614:
.LBE6615:
	.loc 31 85 0
	bx	lr
.L471:
	.loc 31 77 0
	movw	r0, #:lower16:.LC23
	.loc 31 65 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 31 77 0
	movt	r0, #:upper16:.LC23
	.loc 31 65 0
	str	lr, [sp, #4]
	.loc 31 77 0
	bl	kprintf
.LVL422:
	.loc 31 86 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 31 78 0
	mov	r0, #0
	.loc 31 86 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE488:
	.size	fpsimd_init, .-fpsimd_init
	.align	2
	.global	fpsimd_HWCapTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	fpsimd_HWCapTest, %function
fpsimd_HWCapTest:
.LFB489:
	.loc 31 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 31 95 0
	.syntax divided
@ 95 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p15, 0,  r3,  c1,  c0, 2
@ 0 "" 2
.LVL423:
	.loc 31 96 0
	.arm
	.syntax unified
	orr	r3, r3, #15728640
.LVL424:
.LBB6616:
	.loc 31 98 0
	.syntax divided
@ 98 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mcr   p15, 0,  r3,  c1,  c0, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBE6616:
.LBB6617:
.LBB6618:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6618:
.LBE6617:
	.loc 31 103 0
	.syntax divided
@ 103 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	.word 0xeef00a10  
mov r3, r0        

@ 0 "" 2
.LVL425:
	.loc 31 107 0
	.arm
	.syntax unified
	ands	r4, r3, #8388608
	.loc 31 108 0
	movne	r0, #0
	.loc 31 107 0
	bne	.L472
.LBB6619:
.LBB6620:
	.loc 31 34 0
	.syntax divided
@ 34 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL426:
	.loc 31 35 0
	.arm
	.syntax unified
	orr	r2, r2, #-2147483648
.LVL427:
.LBB6621:
	.loc 31 36 0
	.syntax divided
@ 36 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6621:
	.loc 31 39 0
	.syntax divided
@ 39 "/home/sel4/work/work2/kernel/src/arch/arm/32/machine/fpu.c" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL428:
	.arm
	.syntax unified
.LBE6620:
.LBE6619:
	.loc 31 114 0
	cmp	r2, #0
	blt	.L480
.LVL429:
	.loc 31 120 0
	ubfx	r3, r3, #16, #7
.LVL430:
	.loc 31 122 0
	sub	r3, r3, #2
	cmp	r3, #2
	.loc 31 136 0
	movls	r0, #1
	.loc 31 122 0
	bhi	.L481
.L472:
	.loc 31 137 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L481:
	.cfi_restore_state
	.loc 31 129 0
	movw	r0, #:lower16:.LC24
	movt	r0, #:upper16:.LC24
	bl	kprintf
.LVL431:
	.loc 31 130 0
	mov	r0, r4
	.loc 31 137 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL432:
.L480:
	.cfi_restore_state
	.loc 31 116 0
	movw	r0, #:lower16:.LC23
	movt	r0, #:upper16:.LC23
	bl	kprintf
.LVL433:
	.loc 31 117 0
	mov	r0, r4
	b	.L472
	.cfi_endproc
.LFE489:
	.size	fpsimd_HWCapTest, .-fpsimd_HWCapTest
	.text
	.align	2
	.global	_fail
	.syntax unified
	.arm
	.fpu softvfp
	.type	_fail, %function
_fail:
.LFB651:
	.file 33 "/home/sel4/work/work2/kernel/src/assert.c"
	.loc 33 21 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL434:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 33 22 0
	str	r0, [sp]
	movw	r0, #:lower16:.LC25
.LVL435:
	movt	r0, #:upper16:.LC25
	bl	kprintf
.LVL436:
	.loc 33 29 0
	bl	halt
.LVL437:
	.cfi_endproc
.LFE651:
	.size	_fail, .-_fail
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	HAPFromVMRights.part.68, %function
HAPFromVMRights.part.68:
.LFB943:
	.loc 11 115 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL438:
	.loc 11 130 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC27
	.loc 11 115 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 130 0
	ldr	r3, .L486
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC27
	mov	r2, #130
	.loc 11 115 0
	str	lr, [sp, #4]
	.loc 11 130 0
	bl	_fail
.LVL439:
.L487:
	.align	2
.L486:
	.word	.LANCHOR3+52
	.cfi_endproc
.LFE943:
	.size	HAPFromVMRights.part.68, .-HAPFromVMRights.part.68
	.align	2
	.global	Arch_getObjectSize
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_getObjectSize, %function
Arch_getObjectSize:
.LFB504:
	.loc 13 359 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL440:
	.loc 13 360 0
	sub	r0, r0, #5
.LVL441:
	cmp	r0, #6
	ldrls	pc, [pc, r0, asl #2]
	b	.L489
.L491:
	.word	.L490
	.word	.L492
	.word	.L496
	.word	.L494
	.word	.L490
	.word	.L495
	.word	.L490
.L496:
	.loc 13 366 0
	mov	r0, #21
.LVL442:
	.loc 13 385 0
	bx	lr
.L492:
	.loc 13 364 0
	mov	r0, #16
	.loc 13 385 0
	bx	lr
.L494:
	.loc 13 368 0
	mov	r0, #25
	.loc 13 385 0
	bx	lr
.L495:
	.loc 13 372 0
	mov	r0, #14
	.loc 13 385 0
	bx	lr
.L490:
	.loc 13 362 0
	mov	r0, #12
	.loc 13 385 0
	bx	lr
.L489:
.LVL443:
.LBB6624:
.LBB6625:
	.loc 13 382 0
	movw	r1, #:lower16:.LC28
	movw	r0, #:lower16:.LC29
.LBE6625:
.LBE6624:
	.loc 13 359 0
	str	r4, [sp, #-8]!
.LBB6628:
.LBB6626:
	.loc 13 382 0
	ldr	r3, .L499
	movt	r1, #:upper16:.LC28
	movt	r0, #:upper16:.LC29
	movw	r2, #382
.LBE6626:
.LBE6628:
	.loc 13 359 0
	str	lr, [sp, #4]
.LBB6629:
.LBB6627:
	.loc 13 382 0
	bl	_fail
.LVL444:
.L500:
	.align	2
.L499:
	.word	.LANCHOR3+68
.LBE6627:
.LBE6629:
	.cfi_endproc
.LFE504:
	.size	Arch_getObjectSize, .-Arch_getObjectSize
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_handleFaultReply.part.70, %function
Arch_handleFaultReply.part.70:
.LFB945:
	.file 34 "/home/sel4/work/work2/kernel/src/arch/arm/api/faults.c"
	.loc 34 21 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL445:
	.loc 34 34 0
	movw	r1, #:lower16:.LC30
	movw	r0, #:lower16:.LC31
	ldr	r3, .L503
	.loc 34 21 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 34 34 0
	movt	r1, #:upper16:.LC30
	movt	r0, #:upper16:.LC31
	mov	r2, #34
	bl	_fail
.LVL446:
.L504:
	.align	2
.L503:
	.word	.LANCHOR3+88
	.cfi_endproc
.LFE945:
	.size	Arch_handleFaultReply.part.70, .-Arch_handleFaultReply.part.70
	.text
	.align	2
	.global	Arch_handleFaultReply
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_handleFaultReply, %function
Arch_handleFaultReply:
.LFB508:
	.loc 34 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL447:
	.loc 34 23 0
	sub	r2, r2, #5
.LVL448:
	cmp	r2, #2
	bhi	.L512
	.loc 34 36 0
	mov	r0, #1
.LVL449:
	bx	lr
.LVL450:
.L512:
	.loc 34 22 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	bl	Arch_handleFaultReply.part.70
.LVL451:
	.cfi_endproc
.LFE508:
	.size	Arch_handleFaultReply, .-Arch_handleFaultReply
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	writeVCPUReg, %function
writeVCPUReg:
.LFB632:
	.loc 25 646 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL452:
	.loc 25 647 0
	movw	r3, #:lower16:armHSCurVCPU
	.loc 25 646 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 647 0
	movt	r3, #:upper16:armHSCurVCPU
	ldr	r3, [r3]
	.loc 25 646 0
	str	lr, [sp, #4]
	.loc 25 647 0
	cmp	r3, r0
	bne	.L514
	.loc 25 648 0
	cmp	r1, #15
	ldrls	pc, [pc, r1, asl #2]
	b	.L515
.L517:
	.word	.L516
	.word	.L518
	.word	.L519
	.word	.L520
	.word	.L521
	.word	.L522
	.word	.L523
	.word	.L524
	.word	.L525
	.word	.L526
	.word	.L527
	.word	.L528
	.word	.L529
	.word	.L530
	.word	.L531
	.word	.L532
.L532:
.LVL453:
.LBB6630:
.LBB6631:
	.loc 25 324 0
	.syntax divided
@ 324 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r12_fiq, r2
@ 0 "" 2
.LVL454:
	.arm
	.syntax unified
.L513:
.LBE6631:
.LBE6630:
	.loc 25 758 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L516:
	.cfi_restore_state
	.loc 25 650 0
	movw	r3, #:lower16:armHSVCPUActive
	movt	r3, #:upper16:armHSVCPUActive
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L536
.LVL455:
.LBB6632:
.LBB6633:
	.loc 18 134 0
	.syntax divided
@ 134 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 0, r2, c1, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL456:
.L518:
.LBE6633:
.LBE6632:
.LBB6634:
.LBB6635:
	.loc 25 128 0
	.syntax divided
@ 128 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_svc, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL457:
.L519:
.LBE6635:
.LBE6634:
.LBB6636:
.LBB6637:
	.loc 25 142 0
	.syntax divided
@ 142 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_svc, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL458:
.L520:
.LBE6637:
.LBE6636:
.LBB6638:
.LBB6639:
	.loc 25 156 0
	.syntax divided
@ 156 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_abt, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL459:
.L521:
.LBE6639:
.LBE6638:
.LBB6640:
.LBB6641:
	.loc 25 170 0
	.syntax divided
@ 170 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_abt, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL460:
.L522:
.LBE6641:
.LBE6640:
.LBB6642:
.LBB6643:
	.loc 25 184 0
	.syntax divided
@ 184 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_und, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL461:
.L523:
.LBE6643:
.LBE6642:
.LBB6644:
.LBB6645:
	.loc 25 198 0
	.syntax divided
@ 198 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_und, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL462:
.L524:
.LBE6645:
.LBE6644:
.LBB6646:
.LBB6647:
	.loc 25 212 0
	.syntax divided
@ 212 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_irq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL463:
.L525:
.LBE6647:
.LBE6646:
.LBB6648:
.LBB6649:
	.loc 25 226 0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_irq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL464:
.L526:
.LBE6649:
.LBE6648:
.LBB6650:
.LBB6651:
	.loc 25 240 0
	.syntax divided
@ 240 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL465:
.L527:
.LBE6651:
.LBE6650:
.LBB6652:
.LBB6653:
	.loc 25 254 0
	.syntax divided
@ 254 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL466:
.L528:
.LBE6653:
.LBE6652:
.LBB6654:
.LBB6655:
	.loc 25 268 0
	.syntax divided
@ 268 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r8_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL467:
.L529:
.LBE6655:
.LBE6654:
.LBB6656:
.LBB6657:
	.loc 25 282 0
	.syntax divided
@ 282 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r9_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL468:
.L530:
.LBE6657:
.LBE6656:
.LBB6658:
.LBB6659:
	.loc 25 296 0
	.syntax divided
@ 296 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r10_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL469:
.L531:
.LBE6659:
.LBE6658:
.LBB6660:
.LBB6661:
	.loc 25 310 0
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r11_fiq, r2
@ 0 "" 2
	.arm
	.syntax unified
	b	.L513
.LVL470:
.L514:
.LBE6661:
.LBE6660:
	.loc 25 705 0
	cmp	r1, #15
	ldrls	pc, [pc, r1, asl #2]
	b	.L535
.L537:
	.word	.L536
	.word	.L538
	.word	.L539
	.word	.L540
	.word	.L541
	.word	.L542
	.word	.L543
	.word	.L544
	.word	.L545
	.word	.L546
	.word	.L547
	.word	.L548
	.word	.L549
	.word	.L550
	.word	.L551
	.word	.L552
.L515:
	.loc 25 702 0
	movw	r1, #:lower16:.LC32
.LVL471:
	movw	r0, #:lower16:.LC33
.LVL472:
	ldr	r3, .L554
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC33
	movw	r2, #702
.LVL473:
	bl	_fail
.LVL474:
.L536:
	.loc 25 707 0
	str	r2, [r0, #4]
	.loc 25 708 0
	b	.L513
.L552:
	.loc 25 752 0
	str	r2, [r0, #336]
	.loc 25 753 0
	b	.L513
.L551:
	.loc 25 749 0
	str	r2, [r0, #332]
	.loc 25 750 0
	b	.L513
.L550:
	.loc 25 746 0
	str	r2, [r0, #328]
	.loc 25 747 0
	b	.L513
.L549:
	.loc 25 743 0
	str	r2, [r0, #324]
	.loc 25 744 0
	b	.L513
.L548:
	.loc 25 740 0
	str	r2, [r0, #320]
	.loc 25 741 0
	b	.L513
.L547:
	.loc 25 737 0
	str	r2, [r0, #316]
	.loc 25 738 0
	b	.L513
.L546:
	.loc 25 734 0
	str	r2, [r0, #312]
	.loc 25 735 0
	b	.L513
.L545:
	.loc 25 731 0
	str	r2, [r0, #308]
	.loc 25 732 0
	b	.L513
.L544:
	.loc 25 728 0
	str	r2, [r0, #304]
	.loc 25 729 0
	b	.L513
.L543:
	.loc 25 725 0
	str	r2, [r0, #300]
	.loc 25 726 0
	b	.L513
.L542:
	.loc 25 722 0
	str	r2, [r0, #296]
	.loc 25 723 0
	b	.L513
.L541:
	.loc 25 719 0
	str	r2, [r0, #292]
	.loc 25 720 0
	b	.L513
.L540:
	.loc 25 716 0
	str	r2, [r0, #288]
	.loc 25 717 0
	b	.L513
.L539:
	.loc 25 713 0
	str	r2, [r0, #284]
	.loc 25 714 0
	b	.L513
.L538:
	.loc 25 710 0
	str	r2, [r0, #280]
	.loc 25 711 0
	b	.L513
.L535:
	.loc 25 755 0
	movw	r1, #:lower16:.LC32
.LVL475:
	movw	r0, #:lower16:.LC33
.LVL476:
	ldr	r3, .L554
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC33
	movw	r2, #755
.LVL477:
	bl	_fail
.LVL478:
.L555:
	.align	2
.L554:
	.word	.LANCHOR3+112
	.cfi_endproc
.LFE632:
	.size	writeVCPUReg, .-writeVCPUReg
	.align	2
	.global	invokeVCPUWriteReg
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeVCPUWriteReg, %function
invokeVCPUWriteReg:
.LFB641:
	.loc 25 946 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL479:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 25 947 0
	bl	writeVCPUReg
.LVL480:
	.loc 25 949 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE641:
	.size	invokeVCPUWriteReg, .-invokeVCPUWriteReg
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	completeSignal.part.271, %function
completeSignal.part.271:
.LFB1146:
	.file 35 "/home/sel4/work/work2/kernel/src/object/notification.c"
	.loc 35 207 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL481:
	.loc 35 216 0
	movw	r1, #:lower16:.LC34
	movw	r0, #:lower16:.LC35
	.loc 35 207 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 35 216 0
	ldr	r3, .L560
	movt	r1, #:upper16:.LC34
	movt	r0, #:upper16:.LC35
	mov	r2, #216
	.loc 35 207 0
	str	lr, [sp, #4]
	.loc 35 216 0
	bl	_fail
.LVL482:
.L561:
	.align	2
.L560:
	.word	.LANCHOR3+128
	.cfi_endproc
.LFE1146:
	.size	completeSignal.part.271, .-completeSignal.part.271
	.align	2
	.global	_assert_fail
	.syntax unified
	.arm
	.fpu softvfp
	.type	_assert_fail, %function
_assert_fail:
.LFB652:
	.loc 33 37 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL483:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 33 38 0
	str	r3, [sp]
	mov	r3, r2
.LVL484:
	mov	r2, r1
.LVL485:
	mov	r1, r0
.LVL486:
	movw	r0, #:lower16:.LC36
.LVL487:
	movt	r0, #:upper16:.LC36
	bl	kprintf
.LVL488:
	.loc 33 44 0
	bl	halt
.LVL489:
	.cfi_endproc
.LFE652:
	.size	_assert_fail, .-_assert_fail
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_Fault_CapFault_get_inReceivePhase.isra.74.part.75, %function
seL4_Fault_CapFault_get_inReceivePhase.isra.74.part.75:
.LFB950:
	.file 36 "./arch/object/structures_gen.h"
	.loc 36 2600 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2602 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC38
	ldr	r3, .L566
	.loc 36 2600 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2602 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC38
	movw	r2, #2603
	bl	_assert_fail
.LVL490:
.L567:
	.align	2
.L566:
	.word	.LANCHOR3+144
	.cfi_endproc
.LFE950:
	.size	seL4_Fault_CapFault_get_inReceivePhase.isra.74.part.75, .-seL4_Fault_CapFault_get_inReceivePhase.isra.74.part.75
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	setMRs_lookup_failure.part.81, %function
setMRs_lookup_failure.part.81:
.LFB956:
	.file 37 "/home/sel4/work/work2/kernel/src/api/faults.c"
	.loc 37 31 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL491:
.LBB6662:
.LBB6663:
	.loc 36 566 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC39
	ldr	r3, .L570
.LBE6663:
.LBE6662:
	.loc 37 31 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6665:
.LBB6664:
	.loc 36 566 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC39
	movw	r2, #567
	bl	_assert_fail
.LVL492:
.L571:
	.align	2
.L570:
	.word	.LANCHOR3+184
.LBE6664:
.LBE6665:
	.cfi_endproc
.LFE956:
	.size	setMRs_lookup_failure.part.81, .-setMRs_lookup_failure.part.81
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_Fault_UnknownSyscall_get_syscallNumber.part.83, %function
seL4_Fault_UnknownSyscall_get_syscallNumber.part.83:
.LFB958:
	.loc 36 2629 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2631 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC40
	ldr	r3, .L574
	.loc 36 2629 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2631 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC40
	movw	r2, #2632
	bl	_assert_fail
.LVL493:
.L575:
	.align	2
.L574:
	.word	.LANCHOR3+232
	.cfi_endproc
.LFE958:
	.size	seL4_Fault_UnknownSyscall_get_syscallNumber.part.83, .-seL4_Fault_UnknownSyscall_get_syscallNumber.part.83
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_Fault_UserException_get_number.part.84, %function
seL4_Fault_UserException_get_number.part.84:
.LFB959:
	.loc 36 2660 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2662 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC41
	ldr	r3, .L578
	.loc 36 2660 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2662 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC41
	movw	r2, #2663
	bl	_assert_fail
.LVL494:
.L579:
	.align	2
.L578:
	.word	.LANCHOR3+276
	.cfi_endproc
.LFE959:
	.size	seL4_Fault_UserException_get_number.part.84, .-seL4_Fault_UserException_get_number.part.84
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_thread_cap_get_capTCBPtr.isra.87.part.88, %function
cap_thread_cap_get_capTCBPtr.isra.87.part.88:
.LFB963:
	.loc 36 1467 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1469 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC42
	ldr	r3, .L582
	.loc 36 1467 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1469 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC42
	movw	r2, #1470
	bl	_assert_fail
.LVL495:
.L583:
	.align	2
.L582:
	.word	.LANCHOR3+312
	.cfi_endproc
.LFE963:
	.size	cap_thread_cap_get_capTCBPtr.isra.87.part.88, .-cap_thread_cap_get_capTCBPtr.isra.87.part.88
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_reply_cap_get_capReplyMaster.isra.90.part.91, %function
cap_reply_cap_get_capReplyMaster.isra.90.part.91:
.LFB966:
	.loc 36 1335 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1337 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC43
	ldr	r3, .L586
	.loc 36 1335 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1337 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC43
	movw	r2, #1338
	bl	_assert_fail
.LVL496:
.L587:
	.align	2
.L586:
	.word	.LANCHOR3+344
	.cfi_endproc
.LFE966:
	.size	cap_reply_cap_get_capReplyMaster.isra.90.part.91, .-cap_reply_cap_get_capReplyMaster.isra.90.part.91
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_reply_cap_get_capTCBPtr.isra.92.part.93, %function
cap_reply_cap_get_capTCBPtr.isra.92.part.93:
.LFB968:
	.loc 36 1321 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1323 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC43
	.loc 36 1321 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1323 0
	ldr	r3, .L590
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC43
	movw	r2, #1324
	.loc 36 1321 0
	str	lr, [sp, #4]
	.loc 36 1323 0
	bl	_assert_fail
.LVL497:
.L591:
	.align	2
.L590:
	.word	.LANCHOR3+380
	.cfi_endproc
.LFE968:
	.size	cap_reply_cap_get_capTCBPtr.isra.92.part.93, .-cap_reply_cap_get_capTCBPtr.isra.92.part.93
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_endpoint_cap_get_capCanReceive.part.94, %function
cap_endpoint_cap_get_capCanReceive.part.94:
.LFB969:
	.loc 36 1097 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1099 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC44
	.loc 36 1097 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1099 0
	ldr	r3, .L594
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC44
	movw	r2, #1100
	.loc 36 1097 0
	str	lr, [sp, #4]
	.loc 36 1099 0
	bl	_assert_fail
.LVL498:
.L595:
	.align	2
.L594:
	.word	.LANCHOR3+408
	.cfi_endproc
.LFE969:
	.size	cap_endpoint_cap_get_capCanReceive.part.94, .-cap_endpoint_cap_get_capCanReceive.part.94
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_notification_cap_get_capNtfnPtr.isra.95.part.96, %function
cap_notification_cap_get_capNtfnPtr.isra.95.part.96:
.LFB971:
	.loc 36 1275 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1277 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC45
	ldr	r3, .L598
	.loc 36 1275 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1277 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC45
	movw	r2, #1278
	bl	_assert_fail
.LVL499:
.L599:
	.align	2
.L598:
	.word	.LANCHOR3+444
	.cfi_endproc
.LFE971:
	.size	cap_notification_cap_get_capNtfnPtr.isra.95.part.96, .-cap_notification_cap_get_capNtfnPtr.isra.95.part.96
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookup_fault_missing_capability_new.part.98, %function
lookup_fault_missing_capability_new.part.98:
.LFB973:
	.loc 36 548 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL500:
	.loc 36 552 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC46
	ldr	r3, .L602
	.loc 36 548 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 552 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC46
	mov	r2, #552
	bl	_assert_fail
.LVL501:
.L603:
	.align	2
.L602:
	.word	.LANCHOR3+480
	.cfi_endproc
.LFE973:
	.size	lookup_fault_missing_capability_new.part.98, .-lookup_fault_missing_capability_new.part.98
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_cnode_cap_get_capCNodeGuardSize.part.99, %function
cap_cnode_cap_get_capCNodeGuardSize.part.99:
.LFB974:
	.loc 36 1371 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1373 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC47
	.loc 36 1371 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1373 0
	ldr	r3, .L606
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC47
	movw	r2, #1374
	.loc 36 1371 0
	str	lr, [sp, #4]
	.loc 36 1373 0
	bl	_assert_fail
.LVL502:
.L607:
	.align	2
.L606:
	.word	.LANCHOR3+516
	.cfi_endproc
.LFE974:
	.size	cap_cnode_cap_get_capCNodeGuardSize.part.99, .-cap_cnode_cap_get_capCNodeGuardSize.part.99
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_cnode_cap_get_capCNodeRadix.part.100, %function
cap_cnode_cap_get_capCNodeRadix.part.100:
.LFB975:
	.loc 36 1397 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1399 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC47
	ldr	r3, .L610
	.loc 36 1397 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1399 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC47
	movw	r2, #1400
	bl	_assert_fail
.LVL503:
.L611:
	.align	2
.L610:
	.word	.LANCHOR3+552
	.cfi_endproc
.LFE975:
	.size	cap_cnode_cap_get_capCNodeRadix.part.100, .-cap_cnode_cap_get_capCNodeRadix.part.100
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_cnode_cap_get_capCNodePtr.isra.102.part.103, %function
cap_cnode_cap_get_capCNodePtr.isra.102.part.103:
.LFB978:
	.loc 36 1437 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1439 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC47
	ldr	r3, .L614
	.loc 36 1437 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1439 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC47
	mov	r2, #1440
	bl	_assert_fail
.LVL504:
.L615:
	.align	2
.L614:
	.word	.LANCHOR3+584
	.cfi_endproc
.LFE978:
	.size	cap_cnode_cap_get_capCNodePtr.isra.102.part.103, .-cap_cnode_cap_get_capCNodePtr.isra.102.part.103
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_endpoint_cap_get_capCanSend.part.104, %function
cap_endpoint_cap_get_capCanSend.part.104:
.LFB979:
	.loc 36 1123 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1125 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC44
	.loc 36 1123 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1125 0
	ldr	r3, .L618
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC44
	movw	r2, #1126
	.loc 36 1123 0
	str	lr, [sp, #4]
	.loc 36 1125 0
	bl	_assert_fail
.LVL505:
.L619:
	.align	2
.L618:
	.word	.LANCHOR3+616
	.cfi_endproc
.LFE979:
	.size	cap_endpoint_cap_get_capCanSend.part.104, .-cap_endpoint_cap_get_capCanSend.part.104
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_endpoint_cap_get_capEPPtr.part.105, %function
cap_endpoint_cap_get_capEPPtr.part.105:
.LFB980:
	.loc 36 1057 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1059 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC44
	ldr	r3, .L622
	.loc 36 1057 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1059 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC44
	movw	r2, #1060
	bl	_assert_fail
.LVL506:
.L623:
	.align	2
.L622:
	.word	.LANCHOR3+648
	.cfi_endproc
.LFE980:
	.size	cap_endpoint_cap_get_capEPPtr.part.105, .-cap_endpoint_cap_get_capEPPtr.part.105
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107, %function
cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107:
.LFB982:
	.loc 36 2033 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2035 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC48
	.loc 36 2033 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2035 0
	ldr	r3, .L626
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC48
	movw	r2, #2036
	.loc 36 2033 0
	str	lr, [sp, #4]
	.loc 36 2035 0
	bl	_assert_fail
.LVL507:
.L627:
	.align	2
.L626:
	.word	.LANCHOR3+680
	.cfi_endproc
.LFE982:
	.size	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107, .-cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110, %function
pde_pde_invalid_get_stored_asid_valid.isra.109.part.110:
.LFB985:
	.loc 36 2361 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2363 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC49
	.loc 36 2361 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2363 0
	ldr	r3, .L630
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC49
	movw	r2, #2364
	.loc 36 2361 0
	str	lr, [sp, #4]
	.loc 36 2363 0
	bl	_assert_fail
.LVL508:
.L631:
	.align	2
.L630:
	.word	.LANCHOR3+720
	.cfi_endproc
.LFE985:
	.size	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110, .-pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_endpoint_cap_get_capEPBadge.isra.111.part.112, %function
cap_endpoint_cap_get_capEPBadge.isra.111.part.112:
.LFB987:
	.loc 36 1149 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1151 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC44
	ldr	r3, .L634
	.loc 36 1149 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1151 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC44
	mov	r2, #1152
	bl	_assert_fail
.LVL509:
.L635:
	.align	2
.L634:
	.word	.LANCHOR3+760
	.cfi_endproc
.LFE987:
	.size	cap_endpoint_cap_get_capEPBadge.isra.111.part.112, .-cap_endpoint_cap_get_capEPBadge.isra.111.part.112
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	mdb_node_new.part.116, %function
mdb_node_new.part.116:
.LFB991:
	.loc 36 249 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL510:
	.loc 36 253 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC50
	ldr	r3, .L638
	.loc 36 249 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 253 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC50
	mov	r2, #253
	bl	_assert_fail
.LVL511:
.L639:
	.align	2
.L638:
	.word	.LANCHOR3+792
	.cfi_endproc
.LFE991:
	.size	mdb_node_new.part.116, .-mdb_node_new.part.116
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pteS1_pteS1_small_new.part.117, %function
pteS1_pteS1_small_new.part.117:
.LFB992:
	.loc 36 696 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL512:
	.loc 36 700 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC51
	ldr	r3, .L642
	.loc 36 696 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 700 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC51
	mov	r2, #700
	bl	_assert_fail
.LVL513:
.L643:
	.align	2
.L642:
	.word	.LANCHOR3+808
	.cfi_endproc
.LFE992:
	.size	pteS1_pteS1_small_new.part.117, .-pteS1_pteS1_small_new.part.117
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pdeS1_pdeS1_coarse_new.part.119, %function
pdeS1_pdeS1_coarse_new.part.119:
.LFB994:
	.loc 36 2884 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL514:
	.loc 36 2888 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC52
	ldr	r3, .L646
	.loc 36 2884 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2888 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC52
	movw	r2, #2888
	bl	_assert_fail
.LVL515:
.L647:
	.align	2
.L646:
	.word	.LANCHOR3+832
	.cfi_endproc
.LFE994:
	.size	pdeS1_pdeS1_coarse_new.part.119, .-pdeS1_pdeS1_coarse_new.part.119
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	vm_attributes_new.part.120, %function
vm_attributes_new.part.120:
.LFB995:
	.loc 36 404 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL516:
	.loc 36 408 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC53
	ldr	r3, .L650
	.loc 36 404 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 408 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC53
	mov	r2, #408
	bl	_assert_fail
.LVL517:
.L651:
	.align	2
.L650:
	.word	.LANCHOR3+856
	.cfi_endproc
.LFE995:
	.size	vm_attributes_new.part.120, .-vm_attributes_new.part.120
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_directory_cap_new.part.121, %function
cap_page_directory_cap_new.part.121:
.LFB996:
	.loc 36 1986 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL518:
	.loc 36 1990 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC54
	ldr	r3, .L654
	.loc 36 1986 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1990 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC54
	movw	r2, #1990
	bl	_assert_fail
.LVL519:
.L655:
	.align	2
.L654:
	.word	.LANCHOR3+876
	.cfi_endproc
.LFE996:
	.size	cap_page_directory_cap_new.part.121, .-cap_page_directory_cap_new.part.121
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_untyped_cap_get_capPtr.isra.122.part.123, %function
cap_untyped_cap_get_capPtr.isra.122.part.123:
.LFB998:
	.loc 36 1019 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1021 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC55
	ldr	r3, .L658
	.loc 36 1019 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1021 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC55
	movw	r2, #1022
	bl	_assert_fail
.LVL520:
.L659:
	.align	2
.L658:
	.word	.LANCHOR3+904
	.cfi_endproc
.LFE998:
	.size	cap_untyped_cap_get_capPtr.isra.122.part.123, .-cap_untyped_cap_get_capPtr.isra.122.part.123
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_zombie_cap_get_capZombieType.isra.124.part.125, %function
cap_zombie_cap_get_capZombieType.isra.124.part.125:
.LFB1000:
	.loc 36 2175 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2177 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC56
	ldr	r3, .L662
	.loc 36 2175 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2177 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC56
	movw	r2, #2178
	bl	_assert_fail
.LVL521:
.L663:
	.align	2
.L662:
	.word	.LANCHOR3+932
	.cfi_endproc
.LFE1000:
	.size	cap_zombie_cap_get_capZombieType.isra.124.part.125, .-cap_zombie_cap_get_capZombieType.isra.124.part.125
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130, %function
cap_small_frame_cap_get_capFBasePtr.isra.129.part.130:
.LFB1005:
	.loc 36 1625 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1627 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L666
	.loc 36 1625 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1627 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1628
	bl	_assert_fail
.LVL522:
.L667:
	.align	2
.L666:
	.word	.LANCHOR3+968
	.cfi_endproc
.LFE1005:
	.size	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130, .-cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFBasePtr.isra.131.part.132, %function
cap_frame_cap_get_capFBasePtr.isra.131.part.132:
.LFB1007:
	.loc 36 1799 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1801 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L670
	.loc 36 1799 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1801 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1802
	bl	_assert_fail
.LVL523:
.L671:
	.align	2
.L670:
	.word	.LANCHOR3+1004
	.cfi_endproc
.LFE1007:
	.size	cap_frame_cap_get_capFBasePtr.isra.131.part.132, .-cap_frame_cap_get_capFBasePtr.isra.131.part.132
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFBasePtr.isra.133.part.134, %function
generic_frame_cap_get_capFBasePtr.isra.133.part.134:
.LFB1009:
	.file 38 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/object/structures.h"
	.loc 38 230 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 235 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L674
	.loc 38 230 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 235 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #236
	bl	_assert_fail
.LVL524:
.L675:
	.align	2
.L674:
	.word	.LANCHOR3+1036
	.cfi_endproc
.LFE1009:
	.size	generic_frame_cap_get_capFBasePtr.isra.133.part.134, .-generic_frame_cap_get_capFBasePtr.isra.133.part.134
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136, %function
cap_page_table_cap_get_capPTBasePtr.isra.135.part.136:
.LFB1011:
	.loc 36 1972 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1974 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC61
	ldr	r3, .L678
	.loc 36 1972 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1974 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC61
	movw	r2, #1975
	bl	_assert_fail
.LVL525:
.L679:
	.align	2
.L678:
	.word	.LANCHOR3+1072
	.cfi_endproc
.LFE1011:
	.size	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136, .-cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138, %function
cap_asid_pool_cap_get_capASIDPool.isra.137.part.138:
.LFB1013:
	.loc 36 1845 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1847 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC62
	ldr	r3, .L682
	.loc 36 1845 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1847 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC62
	movw	r2, #1848
	bl	_assert_fail
.LVL526:
.L683:
	.align	2
.L682:
	.word	.LANCHOR3+1108
	.cfi_endproc
.LFE1013:
	.size	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138, .-cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140, %function
cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140:
.LFB1015:
	.loc 36 2219 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2221 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC63
	ldr	r3, .L686
	.loc 36 2219 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2221 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC63
	movw	r2, #2222
	bl	_assert_fail
.LVL527:
.L687:
	.align	2
.L686:
	.word	.LANCHOR3+1144
	.cfi_endproc
.LFE1015:
	.size	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140, .-cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
	.section	.boot.text
	.align	2
	.global	write_it_asid_pool
	.syntax unified
	.arm
	.fpu softvfp
	.type	write_it_asid_pool, %function
write_it_asid_pool:
.LFB413:
	.loc 11 671 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 11 671 0
	add	ip, sp, #16
	stm	sp, {r2, r3}
	stmdb	ip, {r0, r1}
	ldr	r0, [sp, #8]
.LVL528:
	ldr	ip, [sp, #12]
.LVL529:
.LBB6746:
.LBB6747:
.LBB6748:
.LBB6749:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r2, r0
	.loc 36 904 0
	andne	r2, r0, #15
.LBE6749:
.LBE6748:
	.file 39 "/home/sel4/work/work2/kernel/include/object/structures.h"
	.loc 39 387 0
	sub	r3, r2, #2
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L691
.L693:
	.word	.L692
	.word	.L691
	.word	.L694
	.word	.L691
	.word	.L695
	.word	.L691
	.word	.L759
	.word	.L691
	.word	.L697
	.word	.L691
	.word	.L698
	.word	.L691
	.word	.L759
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L759
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L699
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L691
	.word	.L759
.L759:
.LBB6750:
.LBB6751:
	.loc 38 414 0
	mov	r3, #0
.L696:
	ldm	sp, {r2, ip}
.LVL530:
.LBE6751:
.LBE6750:
.LBE6747:
.LBE6746:
.LBB6816:
.LBB6817:
.LBB6818:
.LBB6819:
	.loc 36 903 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r0, r2
.LVL531:
	.loc 36 904 0
	andne	r0, r2, #15
.LBE6819:
.LBE6818:
	.loc 39 387 0
	sub	r1, r0, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L725
.L727:
	.word	.L726
	.word	.L725
	.word	.L728
	.word	.L725
	.word	.L729
	.word	.L725
	.word	.L763
	.word	.L725
	.word	.L731
	.word	.L725
	.word	.L732
	.word	.L725
	.word	.L763
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L763
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L733
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L725
	.word	.L763
.L763:
.LBB6820:
.LBB6821:
	.loc 38 414 0
	mov	r2, #0
.LVL532:
.L730:
.LBE6821:
.LBE6820:
.LBE6817:
.LBE6816:
	.loc 11 674 0
	movw	r1, #:lower16:armKSASIDTable
	.loc 11 673 0
	str	r2, [r3, #4]
	.loc 11 674 0
	movt	r1, #:upper16:armKSASIDTable
	str	r3, [r1]
	.loc 11 675 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL533:
.L729:
	.cfi_restore_state
.LBB6872:
.LBB6868:
.LBB6847:
.LBB6848:
	.loc 36 1277 0
	and	r1, r2, #15
	cmp	r1, #6
	bne	.L736
.LVL534:
.L768:
.LBE6848:
.LBE6847:
.LBB6849:
.LBB6842:
.LBB6822:
.LBB6823:
	.loc 36 1850 0
	bic	r2, r2, #15
.LVL535:
	b	.L730
.LVL536:
.L728:
.LBE6823:
.LBE6822:
.LBE6842:
.LBE6849:
.LBB6850:
.LBB6851:
	.loc 36 1059 0
	and	r2, r2, #15
.LVL537:
	cmp	r2, #4
	bne	.L735
	.loc 36 1062 0
	bic	r2, ip, #15
	b	.L730
.LVL538:
.L726:
.LBE6851:
.LBE6850:
.LBB6852:
.LBB6853:
	.loc 36 1021 0
	and	r1, r2, #15
	cmp	r1, #2
	beq	.L768
.LVL539:
.L734:
.LBE6853:
.LBE6852:
.LBE6868:
.LBE6872:
.LBB6873:
.LBB6812:
.LBB6780:
.LBB6781:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL540:
.L697:
.LBE6781:
.LBE6780:
.LBB6783:
.LBB6784:
	.loc 36 1439 0
	and	r3, r0, #15
	cmp	r3, #10
	.loc 36 1442 0
	biceq	r3, r0, #31
	.loc 36 1439 0
	beq	.L696
.LVL541:
.L737:
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL542:
.L698:
.LBE6784:
.LBE6783:
.LBB6785:
.LBB6786:
	.loc 36 1469 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L738
.L719:
.LBE6786:
.LBE6785:
.LBB6788:
.LBB6774:
.LBB6752:
.LBB6753:
	.loc 36 1977 0
	bic	r3, r0, #1020
	bic	r3, r3, #3
	b	.L696
.L699:
.LVL543:
.LBE6753:
.LBE6752:
.LBE6774:
.LBE6788:
.LBB6789:
.LBB6790:
.LBB6791:
.LBB6792:
.LBB6793:
.LBB6794:
	.loc 36 2177 0
	uxtb	r3, r0
	cmp	r3, #46
	bne	.L739
	.loc 36 2180 0
	lsr	r3, r0, #8
	and	r2, r3, #63
.LBE6794:
.LBE6793:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r3, #31
	beq	.L706
	.loc 39 106 0
	and	r3, r3, #31
	mvn	r2, #0
	add	r3, r3, #1
	lsl	r3, r2, r3
.L706:
.LVL544:
.LBE6792:
.LBE6791:
	.loc 39 120 0
	and	r3, r3, ip
	b	.L696
.LVL545:
.L692:
.LBE6790:
.LBE6789:
.LBB6800:
.LBB6782:
	.loc 36 1021 0
	and	r3, r0, #15
	cmp	r3, #2
	bne	.L734
.L721:
.LBE6782:
.LBE6800:
.LBB6801:
.LBB6775:
.LBB6755:
.LBB6756:
	.loc 36 1850 0
	bic	r3, r0, #15
	b	.L696
.L694:
.LVL546:
.LBE6756:
.LBE6755:
.LBE6775:
.LBE6801:
.LBB6802:
.LBB6803:
	.loc 36 1059 0
	and	r3, r0, #15
	cmp	r3, #4
	.loc 36 1062 0
	biceq	r3, ip, #15
	.loc 36 1059 0
	beq	.L696
.LVL547:
.L735:
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL548:
.L695:
.LBE6803:
.LBE6802:
.LBB6804:
.LBB6805:
	.loc 36 1277 0
	and	r3, r0, #15
	cmp	r3, #6
	beq	.L721
.LVL549:
.L736:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL550:
.L733:
.LBE6805:
.LBE6804:
.LBE6812:
.LBE6873:
.LBB6874:
.LBB6869:
.LBB6854:
.LBB6855:
.LBB6856:
.LBB6857:
.LBB6858:
.LBB6859:
	.loc 36 2177 0
	uxtb	r1, r2
	cmp	r1, #46
	bne	.L739
	.loc 36 2180 0
	lsr	r2, r2, #8
.LVL551:
	and	r1, r2, #63
.LBE6859:
.LBE6858:
	.loc 39 103 0
	cmp	r1, #32
	mvneq	r2, #31
	beq	.L740
	.loc 39 106 0
	and	r2, r2, #31
	mvn	r1, #0
	add	r2, r2, #1
	lsl	r2, r1, r2
.L740:
.LVL552:
.LBE6857:
.LBE6856:
	.loc 39 120 0
	and	r2, r2, ip
	b	.L730
.LVL553:
.L732:
.LBE6855:
.LBE6854:
.LBB6860:
.LBB6861:
	.loc 36 1469 0
	and	r1, r2, #15
	cmp	r1, #12
	bne	.L738
.LVL554:
.L769:
.LBE6861:
.LBE6860:
.LBB6862:
.LBB6843:
.LBB6825:
.LBB6826:
	.loc 36 1977 0
	bic	r2, r2, #1020
.LVL555:
	bic	r2, r2, #3
	b	.L730
.LVL556:
.L731:
.LBE6826:
.LBE6825:
.LBE6843:
.LBE6862:
.LBB6863:
.LBB6864:
	.loc 36 1439 0
	and	r1, r2, #15
	cmp	r1, #10
	bne	.L737
.LVL557:
	.loc 36 1442 0
	bic	r2, r2, #31
.LVL558:
	b	.L730
.LVL559:
.L725:
.LBE6864:
.LBE6863:
.LBB6865:
.LBB6844:
	.loc 38 398 0
	sub	r1, r0, #1
	cmp	r1, #14
	ldrls	pc, [pc, r1, asl #2]
	b	.L763
.L742:
	.word	.L741
	.word	.L763
	.word	.L741
	.word	.L763
	.word	.L743
	.word	.L763
	.word	.L744
	.word	.L763
	.word	.L745
	.word	.L763
	.word	.L763
	.word	.L763
	.word	.L763
	.word	.L763
	.word	.L746
.LVL560:
.L691:
.LBE6844:
.LBE6865:
.LBE6869:
.LBE6874:
.LBB6875:
.LBB6813:
.LBB6806:
.LBB6776:
	sub	r3, r2, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L759
.L708:
	.word	.L707
	.word	.L759
	.word	.L707
	.word	.L759
	.word	.L709
	.word	.L759
	.word	.L710
	.word	.L759
	.word	.L711
	.word	.L759
	.word	.L759
	.word	.L759
	.word	.L759
	.word	.L759
	.word	.L712
.L711:
.LVL561:
.LBB6758:
.LBB6759:
	.loc 36 2035 0
	and	r3, r0, #15
	cmp	r3, #9
	.loc 36 2038 0
	biceq	r3, r0, #16320
	biceq	r3, r3, #63
	.loc 36 2035 0
	beq	.L696
.LVL562:
.L754:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL563:
.L710:
.LBE6759:
.LBE6758:
.LBB6760:
.LBB6754:
	.loc 36 1974 0
	and	r3, r0, #15
	cmp	r3, #7
	beq	.L719
.LVL564:
.L753:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL565:
.L709:
.LBE6754:
.LBE6760:
.LBB6761:
.LBB6757:
	.loc 36 1847 0
	and	r3, r0, #15
	cmp	r3, #5
	beq	.L721
.LVL566:
.L755:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL567:
.L707:
.LBE6757:
.LBE6761:
.LBB6762:
.LBB6763:
	.loc 38 235 0
	mvn	r3, r2
	ands	r3, r3, #1
	bne	.L747
	.loc 38 238 0
	cmp	r2, #1
	beq	.L715
	cmp	r2, #3
	bne	.L696
.LVL568:
.LBB6764:
.LBB6765:
	.loc 36 1801 0
	and	r3, r0, #15
	cmp	r3, #3
	.loc 36 1804 0
	moveq	r3, #49152
	movteq	r3, 65535
	andeq	r3, r3, r0, lsl #10
	.loc 36 1801 0
	beq	.L696
.LVL569:
.L752:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL570:
.L745:
.LBE6765:
.LBE6764:
.LBE6763:
.LBE6762:
.LBE6776:
.LBE6806:
.LBE6813:
.LBE6875:
.LBB6876:
.LBB6870:
.LBB6866:
.LBB6845:
.LBB6828:
.LBB6829:
	.loc 36 2035 0
	and	r1, r2, #15
	cmp	r1, #9
	bne	.L754
.LVL571:
	.loc 36 2038 0
	bic	r2, r2, #16320
.LVL572:
	bic	r2, r2, #63
	b	.L730
.LVL573:
.L744:
.LBE6829:
.LBE6828:
.LBB6830:
.LBB6827:
	.loc 36 1974 0
	and	r1, r2, #15
	cmp	r1, #7
	beq	.L769
	b	.L753
.LVL574:
.L743:
.LBE6827:
.LBE6830:
.LBB6831:
.LBB6824:
	.loc 36 1847 0
	and	r1, r2, #15
	cmp	r1, #5
	beq	.L768
	b	.L755
.LVL575:
.L741:
.LBE6824:
.LBE6831:
.LBB6832:
.LBB6833:
	.loc 38 235 0
	mvn	r1, r0
	ands	r1, r1, #1
	bne	.L747
	.loc 38 238 0
	cmp	r0, #1
	beq	.L749
	cmp	r0, #3
	bne	.L763
.LVL576:
.LBB6834:
.LBB6835:
	.loc 36 1801 0
	and	r1, r2, #15
	cmp	r1, #3
	bne	.L752
.LVL577:
	.loc 36 1804 0
	mov	r1, #49152
	movt	r1, 65535
	and	r2, r1, r2, lsl #10
.LVL578:
	b	.L730
.LVL579:
.L712:
.LBE6835:
.LBE6834:
.LBE6833:
.LBE6832:
.LBE6845:
.LBE6866:
.LBE6870:
.LBE6876:
.LBB6877:
.LBB6814:
.LBB6807:
.LBB6777:
.LBB6770:
.LBB6771:
	.loc 36 2221 0
	uxtb	r3, r0
	cmp	r3, #15
	.loc 36 2224 0
	biceq	r3, r0, #255
	.loc 36 2221 0
	beq	.L696
.LVL580:
.L756:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL581:
.L746:
.LBE6771:
.LBE6770:
.LBE6777:
.LBE6807:
.LBE6814:
.LBE6877:
.LBB6878:
.LBB6871:
.LBB6867:
.LBB6846:
.LBB6839:
.LBB6840:
	uxtb	r1, r2
	cmp	r1, #15
	bne	.L756
.LVL582:
	.loc 36 2224 0
	bic	r2, r2, #255
.LVL583:
	b	.L730
.LVL584:
.L749:
.LBE6840:
.LBE6839:
.LBB6841:
.LBB6838:
.LBB6836:
.LBB6837:
	.loc 36 1627 0
	and	r1, r2, #15
	cmp	r1, #1
	bne	.L751
.LVL585:
	.loc 36 1630 0
	mov	r1, #61440
	movt	r1, 65535
	and	r2, r1, r2, lsl #8
.LVL586:
	b	.L730
.LVL587:
.L715:
.LBE6837:
.LBE6836:
.LBE6838:
.LBE6841:
.LBE6846:
.LBE6867:
.LBE6871:
.LBE6878:
.LBB6879:
.LBB6815:
.LBB6808:
.LBB6778:
.LBB6772:
.LBB6768:
.LBB6766:
.LBB6767:
	.loc 36 1627 0
	and	r3, r0, #15
	cmp	r3, #1
	.loc 36 1630 0
	moveq	r3, #61440
	movteq	r3, 65535
	andeq	r3, r3, r0, lsl #8
	.loc 36 1627 0
	beq	.L696
.LVL588:
.L751:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL589:
.L739:
.LBE6767:
.LBE6766:
.LBE6768:
.LBE6772:
.LBE6778:
.LBE6808:
.LBB6809:
.LBB6799:
.LBB6798:
.LBB6797:
.LBB6796:
.LBB6795:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL590:
.L738:
.LBE6795:
.LBE6796:
.LBE6797:
.LBE6798:
.LBE6799:
.LBE6809:
.LBB6810:
.LBB6787:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL591:
.L747:
.LBE6787:
.LBE6810:
.LBB6811:
.LBB6779:
.LBB6773:
.LBB6769:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL592:
.LBE6769:
.LBE6773:
.LBE6779:
.LBE6811:
.LBE6815:
.LBE6879:
	.cfi_endproc
.LFE413:
	.size	write_it_asid_pool, .-write_it_asid_pool
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_table_cap_new.part.142, %function
cap_page_table_cap_new.part.142:
.LFB1017:
	.loc 36 1859 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL593:
	.loc 36 1863 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC64
	ldr	r3, .L772
	.loc 36 1859 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1863 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC64
	movw	r2, #1863
	bl	_assert_fail
.LVL594:
.L773:
	.align	2
.L772:
	.word	.LANCHOR3+1172
	.cfi_endproc
.LFE1017:
	.size	cap_page_table_cap_new.part.142, .-cap_page_table_cap_new.part.142
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_table_cap_get_capPTIsMapped.part.144, %function
cap_page_table_cap_get_capPTIsMapped.part.144:
.LFB1019:
	.loc 36 1881 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1883 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC61
	ldr	r3, .L776
	.loc 36 1881 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1883 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC61
	movw	r2, #1884
	bl	_assert_fail
.LVL595:
.L777:
	.align	2
.L776:
	.word	.LANCHOR3+1196
	.cfi_endproc
.LFE1019:
	.size	cap_page_table_cap_get_capPTIsMapped.part.144, .-cap_page_table_cap_get_capPTIsMapped.part.144
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_coarse_new.part.145, %function
pde_pde_coarse_new.part.145:
.LFB1020:
	.loc 36 2485 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL596:
	.loc 36 2489 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC65
	ldr	r3, .L780
	.loc 36 2485 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2489 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC65
	movw	r2, #2489
	bl	_assert_fail
.LVL597:
.L781:
	.align	2
.L780:
	.word	.LANCHOR3+1236
	.cfi_endproc
.LFE1020:
	.size	pde_pde_coarse_new.part.145, .-pde_pde_coarse_new.part.145
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_new.part.148, %function
cap_frame_cap_new.part.148:
.LFB1023:
	.loc 36 1639 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL598:
	.loc 36 1643 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC66
	ldr	r3, .L784
	.loc 36 1639 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1643 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC66
	movw	r2, #1643
	bl	_assert_fail
.LVL599:
.L785:
	.align	2
.L784:
	.word	.LANCHOR3+1256
	.cfi_endproc
.LFE1023:
	.size	cap_frame_cap_new.part.148, .-cap_frame_cap_new.part.148
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_new.part.149, %function
cap_small_frame_cap_new.part.149:
.LFB1024:
	.loc 36 1481 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL600:
	.loc 36 1485 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC67
	ldr	r3, .L788
	.loc 36 1481 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1485 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC67
	movw	r2, #1485
	bl	_assert_fail
.LVL601:
.L789:
	.align	2
.L788:
	.word	.LANCHOR3+1276
	.cfi_endproc
.LFE1024:
	.size	cap_small_frame_cap_new.part.149, .-cap_small_frame_cap_new.part.149
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_get_capFMappedAddress.part.151, %function
cap_small_frame_cap_get_capFMappedAddress.part.151:
.LFB1026:
	.loc 36 1559 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1561 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L792
	.loc 36 1559 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1561 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1562
	bl	_assert_fail
.LVL602:
.L793:
	.align	2
.L792:
	.word	.LANCHOR3+1300
	.cfi_endproc
.LFE1026:
	.size	cap_small_frame_cap_get_capFMappedAddress.part.151, .-cap_small_frame_cap_get_capFMappedAddress.part.151
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFMappedAddress.part.152, %function
cap_frame_cap_get_capFMappedAddress.part.152:
.LFB1027:
	.loc 36 1733 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1735 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L796
	.loc 36 1733 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1735 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1736
	bl	_assert_fail
.LVL603:
.L797:
	.align	2
.L796:
	.word	.LANCHOR3+1344
	.cfi_endproc
.LFE1027:
	.size	cap_frame_cap_get_capFMappedAddress.part.152, .-cap_frame_cap_get_capFMappedAddress.part.152
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFMappedAddress.part.153, %function
generic_frame_cap_get_capFMappedAddress.part.153:
.LFB1028:
	.loc 38 278 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 283 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L800
	.loc 38 278 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 283 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #284
	bl	_assert_fail
.LVL604:
.L801:
	.align	2
.L800:
	.word	.LANCHOR3+1380
	.cfi_endproc
.LFE1028:
	.size	generic_frame_cap_get_capFMappedAddress.part.153, .-generic_frame_cap_get_capFMappedAddress.part.153
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_get_capFMappedASID.part.155, %function
cap_small_frame_cap_get_capFMappedASID.part.155:
.LFB1030:
	.loc 38 142 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6880:
.LBB6881:
	.loc 36 1601 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L804
.LBE6881:
.LBE6880:
	.loc 38 142 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6883:
.LBB6882:
	.loc 36 1601 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1602
	bl	_assert_fail
.LVL605:
.L805:
	.align	2
.L804:
	.word	.LANCHOR3+1420
.LBE6882:
.LBE6883:
	.cfi_endproc
.LFE1030:
	.size	cap_small_frame_cap_get_capFMappedASID.part.155, .-cap_small_frame_cap_get_capFMappedASID.part.155
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFMappedASID.part.157, %function
cap_frame_cap_get_capFMappedASID.part.157:
.LFB1032:
	.loc 38 158 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6884:
.LBB6885:
	.loc 36 1775 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L808
.LBE6885:
.LBE6884:
	.loc 38 158 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6887:
.LBB6886:
	.loc 36 1775 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	mov	r2, #1776
	bl	_assert_fail
.LVL606:
.L809:
	.align	2
.L808:
	.word	.LANCHOR3+1464
.LBE6886:
.LBE6887:
	.cfi_endproc
.LFE1032:
	.size	cap_frame_cap_get_capFMappedASID.part.157, .-cap_frame_cap_get_capFMappedASID.part.157
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFMappedASID.part.158, %function
generic_frame_cap_get_capFMappedASID.part.158:
.LFB1033:
	.loc 38 165 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 171 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L812
	.loc 38 165 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 171 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #172
	bl	_assert_fail
.LVL607:
.L813:
	.align	2
.L812:
	.word	.LANCHOR3+1504
	.cfi_endproc
.LFE1033:
	.size	generic_frame_cap_get_capFMappedASID.part.158, .-generic_frame_cap_get_capFMappedASID.part.158
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_coarse_ptr_get_address.isra.159.part.160, %function
pde_pde_coarse_ptr_get_address.isra.159.part.160:
.LFB1035:
	.loc 36 2515 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2517 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC68
	ldr	r3, .L816
	.loc 36 2515 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2517 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC68
	movw	r2, #2518
	bl	_assert_fail
.LVL608:
.L817:
	.align	2
.L816:
	.word	.LANCHOR3+1544
	.cfi_endproc
.LFE1035:
	.size	pde_pde_coarse_ptr_get_address.isra.159.part.160, .-pde_pde_coarse_ptr_get_address.isra.159.part.160
	.text
	.align	2
	.global	lookupPTSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupPTSlot, %function
lookupPTSlot:
.LFB418:
	.loc 11 777 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL609:
.LBB6910:
.LBB6911:
	.loc 11 771 0
	lsr	r3, r2, #21
	ldr	r3, [r1, r3, lsl #3]
.LVL610:
.LBE6911:
.LBE6910:
.LBB6912:
.LBB6913:
	.loc 36 2325 0
	and	r1, r3, #3
.LVL611:
.LBE6913:
.LBE6912:
	.loc 11 783 0
	cmp	r1, #3
	bne	.L821
.LVL612:
.LBB6914:
.LBB6915:
.LBB6916:
	.loc 36 2520 0
	bic	r3, r3, #4080
.LVL613:
.LBE6916:
.LBE6915:
	.loc 11 794 0
	ubfx	r2, r2, #12, #9
.LVL614:
.LBB6918:
.LBB6917:
	.loc 36 2520 0
	bic	r3, r3, #15
.LBE6917:
.LBE6918:
	.loc 11 799 0
	mov	r1, #0
.LBB6919:
.LBB6920:
	.loc 19 23 0
	add	r3, r3, #-2147483648
.LBE6920:
.LBE6919:
	.loc 11 795 0
	add	r3, r3, r2, lsl #3
	.loc 11 799 0
	stm	r0, {r1, r3}
.LVL615:
.LBE6914:
	.loc 11 801 0
	bx	lr
.LVL616:
.L821:
.LBB6921:
.LBB6922:
	.loc 11 784 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r2, #0
.LVL617:
	movt	r3, #:upper16:current_lookup_fault
	mov	ip, #85
	.loc 11 788 0
	mov	r1, #2
	.loc 11 784 0
	str	ip, [r3]
	.loc 11 788 0
	stm	r0, {r1, r2}
	.loc 11 784 0
	str	r2, [r3, #4]
.LVL618:
.LBE6922:
.LBE6921:
	.loc 11 801 0
	bx	lr
	.cfi_endproc
.LFE418:
	.size	lookupPTSlot, .-lookupPTSlot
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pte_pte_small_new.part.162, %function
pte_pte_small_new.part.162:
.LFB1037:
	.loc 36 765 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL619:
	.loc 36 769 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC51
	ldr	r3, .L824
	.loc 36 765 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 769 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC51
	movw	r2, #769
	bl	_assert_fail
.LVL620:
.L825:
	.align	2
.L824:
	.word	.LANCHOR3+1576
	.cfi_endproc
.LFE1037:
	.size	pte_pte_small_new.part.162, .-pte_pte_small_new.part.162
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_get_capFIsDevice.isra.164.part.165, %function
cap_small_frame_cap_get_capFIsDevice.isra.164.part.165:
.LFB1040:
	.loc 36 1585 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1587 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L828
	.loc 36 1585 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1587 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1588
	bl	_assert_fail
.LVL621:
.L829:
	.align	2
.L828:
	.word	.LANCHOR3+1596
	.cfi_endproc
.LFE1040:
	.size	cap_small_frame_cap_get_capFIsDevice.isra.164.part.165, .-cap_small_frame_cap_get_capFIsDevice.isra.164.part.165
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFIsDevice.isra.166.part.167, %function
cap_frame_cap_get_capFIsDevice.isra.166.part.167:
.LFB1042:
	.loc 36 1759 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1761 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L832
	.loc 36 1759 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1761 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1762
	bl	_assert_fail
.LVL622:
.L833:
	.align	2
.L832:
	.word	.LANCHOR3+1636
	.cfi_endproc
.LFE1042:
	.size	cap_frame_cap_get_capFIsDevice.isra.166.part.167, .-cap_frame_cap_get_capFIsDevice.isra.166.part.167
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFIsDevice.isra.168.part.169, %function
generic_frame_cap_get_capFIsDevice.isra.168.part.169:
.LFB1044:
	.loc 38 294 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 299 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L836
	.loc 38 294 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 299 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #300
	bl	_assert_fail
.LVL623:
.L837:
	.align	2
.L836:
	.word	.LANCHOR3+1668
	.cfi_endproc
.LFE1044:
	.size	generic_frame_cap_get_capFIsDevice.isra.168.part.169, .-generic_frame_cap_get_capFIsDevice.isra.168.part.169
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_small_frame_cap_get_capFVMRights.part.170, %function
cap_small_frame_cap_get_capFVMRights.part.170:
.LFB1045:
	.loc 36 1533 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1535 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L840
	.loc 36 1533 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1535 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	mov	r2, #1536
	bl	_assert_fail
.LVL624:
.L841:
	.align	2
.L840:
	.word	.LANCHOR3+1704
	.cfi_endproc
.LFE1045:
	.size	cap_small_frame_cap_get_capFVMRights.part.170, .-cap_small_frame_cap_get_capFVMRights.part.170
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFVMRights.part.171, %function
cap_frame_cap_get_capFVMRights.part.171:
.LFB1046:
	.loc 36 1707 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1709 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L844
	.loc 36 1707 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1709 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1710
	bl	_assert_fail
.LVL625:
.L845:
	.align	2
.L844:
	.word	.LANCHOR3+1744
	.cfi_endproc
.LFE1046:
	.size	cap_frame_cap_get_capFVMRights.part.171, .-cap_frame_cap_get_capFVMRights.part.171
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFVMRights.part.172, %function
generic_frame_cap_get_capFVMRights.part.172:
.LFB1047:
	.loc 38 209 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 214 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L848
	.loc 38 209 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 214 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #215
	bl	_assert_fail
.LVL626:
.L849:
	.align	2
.L848:
	.word	.LANCHOR3+1776
	.cfi_endproc
.LFE1047:
	.size	generic_frame_cap_get_capFVMRights.part.172, .-generic_frame_cap_get_capFVMRights.part.172
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_frame_cap_get_capFSize.part.173, %function
cap_frame_cap_get_capFSize.part.173:
.LFB1048:
	.loc 36 1667 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1669 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L852
	.loc 36 1667 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1669 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1670
	bl	_assert_fail
.LVL627:
.L853:
	.align	2
.L852:
	.word	.LANCHOR3+1812
	.cfi_endproc
.LFE1048:
	.size	cap_frame_cap_get_capFSize.part.173, .-cap_frame_cap_get_capFSize.part.173
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	generic_frame_cap_get_capFSize.part.174, %function
generic_frame_cap_get_capFSize.part.174:
.LFB1049:
	.loc 38 251 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 256 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L856
	.loc 38 251 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 256 0
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	movw	r2, #257
	bl	_assert_fail
.LVL628:
.L857:
	.align	2
.L856:
	.word	.LANCHOR3+1840
	.cfi_endproc
.LFE1049:
	.size	generic_frame_cap_get_capFSize.part.174, .-generic_frame_cap_get_capFSize.part.174
	.text
	.align	2
	.global	lookupIPCBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupIPCBuffer, %function
lookupIPCBuffer:
.LFB415:
	.loc 11 711 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL629:
	.loc 11 717 0
	bic	ip, r1, #1020
	.loc 11 711 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 716 0
	ldr	r4, [r1, #500]
.LVL630:
	.loc 11 717 0
	bic	ip, ip, #3
	ldr	r1, [ip, #64]
.LVL631:
	ldr	ip, [ip, #68]
.LVL632:
	.loc 11 711 0
	str	lr, [sp, #4]
.LBB6960:
.LBB6961:
	.loc 36 903 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	lr, r1
.LVL633:
	.loc 36 904 0
	andne	lr, r1, #15
.LBE6961:
.LBE6960:
	.loc 11 719 0
	bic	r3, lr, #2
	cmp	r3, #1
	bne	.L884
.LBB6962:
.LBB6963:
	.loc 38 302 0
	cmp	lr, #1
	mov	r3, r0
.LVL634:
.LBB6964:
.LBB6965:
	.loc 36 1587 0
	and	r2, r1, #15
.LBE6965:
.LBE6964:
	.loc 38 302 0
	beq	.L900
.LVL635:
.LBB6968:
.LBB6969:
	.loc 36 1761 0
	cmp	r2, #3
	bne	.L901
.LVL636:
	.loc 36 1764 0
	ubfx	r0, r1, #29, #1
.LVL637:
.LBE6969:
.LBE6968:
.LBE6963:
.LBE6962:
	.loc 11 723 0
	cmp	r0, #0
	bne	.L884
.LVL638:
.LBB6976:
.LBB6977:
	.loc 38 217 0
	cmp	lr, #3
	bne	.L858
.LVL639:
.LBB6978:
.LBB6979:
	.loc 36 1712 0
	ubfx	r2, ip, #18, #2
.LVL640:
.LBE6979:
.LBE6978:
.LBE6977:
.LBE6976:
	.loc 11 728 0
	cmp	r2, #3
	bne	.L902
.L869:
.LVL641:
.LBB6983:
.LBB6984:
.LBB6985:
.LBB6986:
.LBB6987:
	.loc 36 1672 0
	lsr	ip, ip, #30
.LVL642:
.LBE6987:
.LBE6986:
.LBE6985:
.LBE6984:
.LBB6988:
.LBB6989:
.LBB6990:
.LBB6991:
	.loc 36 1804 0
	mov	r0, #49152
	movt	r0, 65535
.LBE6991:
.LBE6990:
.LBE6989:
.LBE6988:
.LBB6998:
.LBB6999:
	.file 40 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/hardware.h"
	.loc 40 148 0
	cmp	ip, #2
.LBE6999:
.LBE6998:
.LBB7002:
.LBB6996:
.LBB6993:
.LBB6992:
	.loc 36 1804 0
	and	r1, r0, r1, lsl #10
.LVL643:
.LBE6992:
.LBE6993:
.LBE6996:
.LBE7002:
.LBB7003:
.LBB7000:
	.loc 40 148 0
	beq	.L879
	cmp	ip, #3
	mvneq	r3, #-33554432
.LVL644:
	beq	.L875
	movw	r2, #65535
	cmp	ip, #1
	movw	r3, #4095
	moveq	r3, r2
.LVL645:
.L875:
.LBE7000:
.LBE7003:
	.loc 11 735 0
	and	r0, r4, r3
	add	r0, r0, r1
.LVL646:
.L858:
.LBE6983:
	.loc 11 739 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL647:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL648:
.L900:
	.cfi_restore_state
.LBB7006:
.LBB6974:
.LBB6971:
.LBB6966:
	.loc 36 1587 0
	cmp	r2, #1
	bne	.L903
.LVL649:
.LBE6966:
.LBE6971:
.LBE6974:
.LBE7006:
	.loc 11 723 0
	cmp	r1, #0
	blt	.L884
.LVL650:
.LBB7007:
.LBB6982:
.LBB6980:
.LBB6981:
	.loc 36 1538 0
	ubfx	ip, ip, #20, #2
.LVL651:
.LBE6981:
.LBE6980:
.LBE6982:
.LBE7007:
	.loc 11 728 0
	cmp	ip, #3
	bne	.L904
.L874:
.LVL652:
.LBB7008:
.LBB7004:
.LBB6997:
.LBB6994:
.LBB6995:
	.loc 36 1630 0
	mov	r0, #61440
.LVL653:
	movw	r3, #4095
.LVL654:
	movt	r0, 65535
	and	r1, r0, r1, lsl #8
.LVL655:
	b	.L875
.LVL656:
.L904:
.LBE6995:
.LBE6994:
.LBE6997:
.LBE7004:
.LBE7008:
	.loc 11 728 0
	cmp	r3, #0
	cmpeq	ip, #2
	beq	.L874
.LVL657:
.L884:
	.loc 11 739 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL658:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 11 721 0
	mov	r0, #0
	.loc 11 739 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL659:
.L879:
	.cfi_restore_state
.LBB7009:
.LBB7005:
.LBB7001:
	movw	r3, #65535
.LVL660:
	movt	r3, 31
	b	.L875
.LVL661:
.L902:
.LBE7001:
.LBE7005:
.LBE7009:
	.loc 11 728 0
	cmp	r2, #2
	cmpeq	r3, #0
	beq	.L869
	b	.L884
.LVL662:
.L901:
.LBB7010:
.LBB6975:
.LBB6972:
.LBB6970:
	bl	cap_frame_cap_get_capFIsDevice.isra.166.part.167
.LVL663:
.L903:
.LBE6970:
.LBE6972:
.LBB6973:
.LBB6967:
	bl	cap_small_frame_cap_get_capFIsDevice.isra.164.part.165
.LVL664:
.LBE6967:
.LBE6973:
.LBE6975:
.LBE7010:
	.cfi_endproc
.LFE415:
	.size	lookupIPCBuffer, .-lookupIPCBuffer
	.align	2
	.global	handleFaultReply
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleFaultReply, %function
handleFaultReply:
.LFB347:
	.loc 37 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL665:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB7069:
.LBB7070:
	.loc 10 36 0
	ldr	r5, [r1, #4]
.LBE7070:
.LBE7069:
	.loc 37 120 0
	mov	r4, r0
.LVL666:
.LBB7071:
.LBB7072:
	.loc 36 2546 0
	ldr	r0, [r0, #464]
.LVL667:
.LBE7072:
.LBE7071:
	.loc 37 120 0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
.LBB7074:
.LBB7075:
.LBB7076:
.LBB7077:
	.loc 30 113 0
	and	r3, r5, #127
.LBE7077:
.LBE7076:
.LBE7075:
.LBE7074:
	.loc 37 120 0
	str	lr, [sp, #32]
.LBB7080:
.LBB7081:
	.loc 30 62 0
	lsr	r5, r5, #12
.LVL668:
.LBE7081:
.LBE7080:
.LBB7082:
.LBB7078:
	.file 41 "/home/sel4/work/work2/kernel/include/api/types.h"
	.loc 41 89 0
	cmp	r3, #120
.LBE7078:
.LBE7082:
.LBB7083:
.LBB7073:
	.loc 36 2546 0
	and	r0, r0, #7
.LBE7073:
.LBE7083:
	.loc 37 120 0
	sub	sp, sp, #4
	.cfi_def_cfa_offset 40
.LBB7084:
.LBB7079:
	.loc 41 89 0
	bls	.L906
.LVL669:
.LBE7079:
.LBE7084:
	.loc 37 127 0
	cmp	r0, #2
	beq	.L908
	cmp	r0, #3
	bne	.L953
	mov	r3, #120
.LVL670:
.L909:
	.loc 37 136 0
	cmp	r3, #3
	movcc	r0, r3
	movcs	r0, #3
.LVL671:
.LBB7085:
.LBB7086:
	.loc 37 84 0
	cmp	r0, #0
	beq	.L923
	ldr	lr, .L955
	mov	r7, #0
.LBB7087:
	.loc 37 85 0
	mov	ip, #17
.LBB7088:
.LBB7089:
	.loc 10 36 0
	ldr	r2, [r1, #8]
	mov	r3, r7
	mov	r9, #1
.LBE7089:
.LBE7088:
.LBE7087:
.LBB7108:
.LBB7109:
	.file 42 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/kernel/thread.h"
	.loc 42 48 0
	ldr	r8, [r4, #440]
.LVL672:
	movt	r7, 34959
.LBE7109:
.LBE7108:
.LBB7110:
	.loc 37 86 0
	add	r6, lr, #44
.LVL673:
.L929:
.LBE7110:
	.loc 37 84 0
	add	r3, r3, #1
.LBB7111:
.LBB7092:
.LBB7093:
	.loc 10 30 0
	str	r2, [r4, ip, lsl #2]
.LVL674:
.LBE7093:
.LBE7092:
.LBE7111:
	.loc 37 84 0
	cmp	r0, r3
	beq	.L923
.L926:
.LBB7112:
	.loc 37 85 0
	ldr	ip, [lr], #4
.LVL675:
.LBB7095:
.LBB7090:
	.loc 10 36 0
	ldr	r2, [r6, r3, lsl #2]
.LBE7090:
.LBE7095:
.LBB7096:
.LBB7097:
	.loc 42 17 0
	cmp	ip, #16
.LBE7097:
.LBE7096:
.LBB7104:
.LBB7091:
	.loc 10 36 0
	ldr	r2, [r1, r2, lsl #2]
.LVL676:
.LBE7091:
.LBE7104:
.LBB7105:
.LBB7102:
	.loc 42 17 0
	bne	.L929
.LVL677:
.LBB7098:
.LBB7099:
	.loc 42 20 0
	cmp	r8, #0
	beq	.L925
	.loc 42 21 0
	and	r10, r2, #31
	ands	r10, r7, r9, lsl r10
	bne	.L929
.L925:
	.loc 42 38 0
	and	r2, r2, #-134217728
.LVL678:
.LBE7099:
.LBE7098:
.LBE7102:
.LBE7105:
.LBE7112:
	.loc 37 84 0
	add	r3, r3, #1
.LVL679:
.LBB7113:
.LBB7106:
.LBB7103:
.LBB7101:
.LBB7100:
	.loc 42 38 0
	orr	r2, r2, #80
.LVL680:
.LBE7100:
.LBE7101:
.LBE7103:
.LBE7106:
.LBE7113:
	.loc 37 84 0
	cmp	r0, r3
.LBB7114:
.LBB7107:
.LBB7094:
	.loc 10 30 0
	str	r2, [r4, ip, lsl #2]
.LVL681:
.LBE7094:
.LBE7107:
.LBE7114:
	.loc 37 84 0
	bne	.L926
.LVL682:
.L923:
.LBE7086:
.LBE7085:
	.loc 37 137 0
	clz	r0, r5
	lsr	r0, r0, #5
	b	.L905
.LVL683:
.L906:
	.loc 37 127 0
	cmp	r0, #2
	beq	.L911
	cmp	r0, #3
	beq	.L909
.LVL684:
.L953:
	cmp	r0, #1
	beq	.L905
.LVL685:
.LBB7115:
.LBB7116:
	.loc 34 23 0
	sub	r0, r0, #5
	cmp	r0, #2
.LBE7116:
.LBE7115:
	.loc 37 187 0
	movls	r0, #1
.LBB7119:
.LBB7117:
	.loc 34 23 0
	bhi	.L954
.LVL686:
.L905:
.LBE7117:
.LBE7119:
	.loc 37 189 0
	add	sp, sp, #4
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL687:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL688:
.L908:
	.cfi_restore_state
.LBB7120:
.LBB7121:
.LBB7122:
.LBB7123:
	.loc 42 48 0
	ldr	r6, [r4, #440]
.LVL689:
.LBE7123:
.LBE7122:
	.loc 37 84 0
	mov	r7, #4
.LBE7121:
.LBE7120:
	.loc 37 132 0
	mov	r8, #12
.LVL690:
.L912:
	ldr	ip, .L955+4
	mov	r9, #0
	mov	r10, #1
.LBB7153:
.LBB7150:
.LBB7125:
.LBB7126:
.LBB7127:
	.loc 10 36 0
	ldr	r3, [r1, #8]
.LVL691:
.LBE7127:
.LBE7126:
	.loc 37 85 0
	mov	r0, r9
	movt	r9, 34959
	add	r2, ip, #4
	add	lr, ip, #100
	add	ip, ip, r7, lsl #2
.LVL692:
.L928:
.LBE7125:
	.loc 37 84 0
	cmp	r2, ip
.LBB7138:
.LBB7129:
.LBB7130:
	.loc 10 30 0
	str	r3, [r4, r0, lsl #2]
.LVL693:
.LBE7130:
.LBE7129:
.LBE7138:
	.loc 37 84 0
	beq	.L913
.LBB7139:
	.loc 37 85 0
	ldr	r0, [r2], #4
.LVL694:
	.loc 37 86 0
	ldr	r3, [lr], #4
.LVL695:
.LBB7131:
.LBB7132:
	.loc 42 17 0
	cmp	r0, #16
.LBE7132:
.LBE7131:
.LBB7136:
.LBB7128:
	.loc 10 36 0
	ldr	r3, [r1, r3, lsl #2]
.LVL696:
.LBE7128:
.LBE7136:
.LBB7137:
.LBB7135:
	.loc 42 17 0
	bne	.L928
.LVL697:
.LBB7133:
.LBB7134:
	.loc 42 20 0
	cmp	r6, #0
	beq	.L915
	.loc 42 21 0
	and	fp, r3, #31
	ands	fp, r9, r10, lsl fp
	bne	.L928
.L915:
	.loc 42 38 0
	and	r3, r3, #-134217728
.LVL698:
	orr	r3, r3, #80
	b	.L928
.LVL699:
.L911:
.LBE7134:
.LBE7133:
.LBE7135:
.LBE7137:
.LBE7139:
.LBE7150:
.LBE7153:
	.loc 37 132 0
	cmp	r3, #12
.LBB7154:
.LBB7151:
.LBB7140:
.LBB7124:
	.loc 42 48 0
	ldr	r6, [r4, #440]
.LBE7124:
.LBE7140:
.LBE7151:
.LBE7154:
	.loc 37 132 0
	movcc	r8, r3
	movcs	r8, #12
.LVL700:
.LBB7155:
.LBB7152:
	.loc 37 84 0
	cmp	r3, #4
	movcc	r7, r3
	movcs	r7, #4
	cmp	r7, #0
	bne	.L912
.LVL701:
.L913:
	.loc 37 90 0
	cmp	r7, r8
	bcs	.L923
.LBB7141:
	.loc 37 91 0
	mov	r0, #0
	bl	lookupIPCBuffer
.LVL702:
	.loc 37 92 0
	cmp	r0, #0
	beq	.L923
	ldr	r3, .L955+8
	lsl	r1, r7, #2
	mov	ip, #0
	add	r8, r0, r8, lsl #2
.LVL703:
	movt	ip, 34959
	add	r0, r0, r1
.LVL704:
	mov	r7, #1
	add	r1, r1, r3
	b	.L921
.LVL705:
.L919:
	.loc 37 93 0
	cmp	r0, r8
.LBB7142:
.LBB7143:
.LBB7144:
	.loc 10 30 0
	str	r3, [r4, r2, lsl #2]
.LVL706:
.LBE7144:
.LBE7143:
.LBE7142:
	.loc 37 93 0
	beq	.L923
.LVL707:
.L921:
.LBB7149:
	.loc 37 94 0
	ldr	r2, [r1, #4]!
.LVL708:
	.loc 37 95 0
	ldr	r3, [r0, #4]!
.LVL709:
.LBB7145:
.LBB7146:
	.loc 42 17 0
	cmp	r2, #16
	bne	.L919
.LVL710:
.LBB7147:
.LBB7148:
	.loc 42 20 0
	cmp	r6, #0
	beq	.L920
	.loc 42 21 0
	and	lr, r3, #31
	ands	lr, ip, r7, lsl lr
	bne	.L919
.L920:
	.loc 42 38 0
	and	r3, r3, #-134217728
.LVL711:
	orr	r3, r3, #80
	b	.L919
.LVL712:
.L954:
.LBE7148:
.LBE7147:
.LBE7146:
.LBE7145:
.LBE7149:
.LBE7141:
.LBE7152:
.LBE7155:
.LBB7156:
.LBB7118:
	bl	Arch_handleFaultReply.part.70
.LVL713:
.L956:
	.align	2
.L955:
	.word	.LANCHOR3+1924
	.word	.LANCHOR3+1872
	.word	.LANCHOR3+1868
.LBE7118:
.LBE7156:
	.cfi_endproc
.LFE347:
	.size	handleFaultReply, .-handleFaultReply
	.align	2
	.global	Arch_sameRegionAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_sameRegionAs, %function
Arch_sameRegionAs:
.LFB502:
	.loc 13 258 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 13 258 0
	add	ip, sp, #16
	stm	sp, {r2, r3}
	stmdb	ip, {r0, r1}
	ldr	r1, [sp, #8]
.LVL714:
	mov	r0, r2
.LBB7224:
.LBB7225:
	.loc 36 903 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r2, r1
	.loc 36 904 0
	andne	r2, r1, #15
.LBE7225:
.LBE7224:
	.loc 13 259 0
	sub	r3, r2, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L1033
.L962:
	.word	.L961
	.word	.L1033
	.word	.L961
	.word	.L1033
	.word	.L963
	.word	.L1033
	.word	.L964
	.word	.L1033
	.word	.L965
	.word	.L1033
	.word	.L966
	.word	.L1033
	.word	.L1033
	.word	.L1033
	.word	.L967
.L967:
.LVL715:
.LBB7226:
.LBB7227:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7227:
.LBE7226:
	.loc 13 302 0
	cmp	r3, #15
	beq	.L1051
.L1033:
	.loc 13 326 0
	mov	r0, #0
.L957:
	.loc 13 327 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L961:
	.cfi_restore_state
.LVL716:
.LBB7228:
.LBB7229:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7229:
.LBE7228:
	.loc 13 262 0
	bic	ip, r3, #2
	cmp	ip, #1
	bne	.L1033
.LVL717:
.LBB7230:
.LBB7231:
.LBB7232:
	.loc 38 235 0
	mvn	ip, r2
	ands	ip, ip, #1
	bne	.L1052
	.loc 38 238 0
	cmp	r2, #1
	beq	.L972
	cmp	r2, #3
	bne	.L1053
.LVL718:
.LBB7233:
.LBB7234:
	.loc 36 1801 0
	and	r4, r1, #15
	cmp	r4, #3
	bne	.L984
	.loc 36 1804 0
	mov	lr, #49152
.LBE7234:
.LBE7233:
.LBE7232:
.LBE7231:
.LBB7252:
.LBB7253:
	.loc 38 238 0
	cmp	r3, #1
.LBE7253:
.LBE7252:
.LBB7271:
.LBB7245:
.LBB7237:
.LBB7235:
	.loc 36 1804 0
	movt	lr, 65535
	and	lr, lr, r1, lsl #10
.LVL719:
.LBE7235:
.LBE7237:
.LBE7245:
.LBE7271:
.LBB7272:
.LBB7262:
	.loc 38 238 0
	beq	.L976
	cmp	r3, #3
	ldrne	r2, [sp, #12]
	beq	.L977
.L986:
.LBE7262:
.LBE7272:
.LBB7273:
.LBB7274:
.LBB7275:
.LBB7276:
	.loc 36 1672 0
	lsr	r2, r2, #30
.LBE7276:
.LBE7275:
.LBE7274:
.LBE7273:
.LBB7285:
.LBB7286:
	.loc 40 148 0
	cmp	r2, #2
	moveq	r2, #2097152
	beq	.L975
	cmp	r2, #3
	moveq	r2, #33554432
	beq	.L975
	cmp	r2, #1
	moveq	r2, #65536
	movne	r2, #4096
.L975:
.LBE7286:
.LBE7285:
.LBB7287:
.LBB7288:
	.loc 38 259 0
	cmp	r3, #3
.LBE7288:
.LBE7287:
	.loc 13 267 0
	sub	r3, lr, #1
	ldr	r1, [sp, #4]
	add	r2, r3, r2
.LVL720:
.LBB7293:
.LBB7291:
	.loc 38 259 0
	bne	.L1043
	and	r4, r0, #15
.LVL721:
.LBB7289:
.LBB7290:
	.loc 36 1669 0
	cmp	r4, #3
	bne	.L992
.LVL722:
.L1044:
	.loc 36 1672 0
	lsr	r3, r1, #30
.LBE7290:
.LBE7289:
.LBE7291:
.LBE7293:
.LBB7294:
.LBB7295:
	.loc 40 148 0
	cmp	r3, #2
	moveq	r0, #2097152
	beq	.L990
	cmp	r3, #3
	moveq	r0, #33554432
	beq	.L990
	cmp	r3, #1
	moveq	r0, #65536
	movne	r0, #4096
.LVL723:
.L990:
.LBE7295:
.LBE7294:
	.loc 13 268 0
	sub	r3, ip, #1
	add	r3, r3, r0
.LVL724:
	.loc 13 269 0
	cmp	r2, r3
	cmpcs	r3, ip
	movcs	r3, #1
.LVL725:
	movcc	r3, #0
	cmp	ip, lr
	movcc	r0, #0
	andcs	r0, r3, #1
.LVL726:
	b	.L957
.LVL727:
.L963:
.LBE7230:
.LBB7317:
.LBB7318:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7318:
.LBE7317:
	.loc 13 294 0
	cmp	r3, #5
	bne	.L1033
.LVL728:
.LBB7319:
.LBB7320:
	.loc 36 1847 0
	and	r3, r1, #15
	cmp	r3, #5
	bne	.L1009
.LBE7320:
.LBE7319:
.LBB7323:
.LBB7324:
	and	r3, r0, #15
.LBE7324:
.LBE7323:
.LBB7326:
.LBB7321:
	.loc 36 1850 0
	bic	r2, r1, #15
.LVL729:
.LBE7321:
.LBE7326:
.LBB7327:
.LBB7325:
	.loc 36 1847 0
	cmp	r3, #5
	bne	.L1009
	.loc 36 1850 0
	bic	r1, r0, #15
.LBE7325:
.LBE7327:
	.loc 13 295 0
	sub	r0, r1, r2
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L957
.L964:
.LVL730:
.LBB7328:
.LBB7329:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7329:
.LBE7328:
	.loc 13 274 0
	cmp	r3, #7
	bne	.L1033
.LVL731:
.LBB7330:
.LBB7331:
	.loc 36 1974 0
	and	r3, r1, #15
	cmp	r3, #7
	bne	.L999
.LBE7331:
.LBE7330:
.LBB7335:
.LBB7336:
	and	r2, r0, #15
.LBE7336:
.LBE7335:
.LBB7339:
.LBB7332:
	.loc 36 1977 0
	mov	r3, #64512
.LBE7332:
.LBE7339:
.LBB7340:
.LBB7337:
	.loc 36 1974 0
	cmp	r2, #7
.LBE7337:
.LBE7340:
.LBB7341:
.LBB7333:
	.loc 36 1977 0
	movt	r3, 65535
	and	r2, r1, r3
.LVL732:
.LBE7333:
.LBE7341:
.LBB7342:
.LBB7338:
	.loc 36 1974 0
	beq	.L1046
.L999:
.LBE7338:
.LBE7342:
.LBB7343:
.LBB7334:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL733:
.L965:
.LBE7334:
.LBE7343:
.LBB7344:
.LBB7345:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7345:
.LBE7344:
	.loc 13 281 0
	cmp	r3, #9
	bne	.L1033
.LVL734:
.LBB7346:
.LBB7347:
	.loc 36 2035 0
	and	r3, r1, #15
	cmp	r3, #9
	bne	.L1003
.LBE7347:
.LBE7346:
.LBB7351:
.LBB7352:
	and	r2, r0, #15
.LBE7352:
.LBE7351:
.LBB7355:
.LBB7348:
	.loc 36 2038 0
	mov	r3, #49152
.LBE7348:
.LBE7355:
.LBB7356:
.LBB7353:
	.loc 36 2035 0
	cmp	r2, #9
.LBE7353:
.LBE7356:
.LBB7357:
.LBB7349:
	.loc 36 2038 0
	movt	r3, 65535
	and	r2, r1, r3
.LVL735:
.LBE7349:
.LBE7357:
.LBB7358:
.LBB7354:
	.loc 36 2035 0
	bne	.L1003
.L1046:
	.loc 36 2038 0
	and	r1, r0, r3
.LBE7354:
.LBE7358:
	.loc 13 282 0
	sub	r0, r1, r2
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L957
.L966:
.LVL736:
.LBB7359:
.LBB7360:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r1, r0
	.loc 36 904 0
	andne	r1, r0, #15
.LBE7360:
.LBE7359:
	.loc 13 288 0
	sub	r0, r1, #11
	clz	r0, r0
	lsr	r0, r0, #5
	.loc 13 327 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L1051:
	.cfi_restore_state
.LVL737:
.LBB7361:
.LBB7362:
	.loc 36 2221 0
	uxtb	r3, r1
	cmp	r3, #15
	bne	.L1013
.LBE7362:
.LBE7361:
.LBB7365:
.LBB7366:
	uxtb	r3, r0
.LBE7366:
.LBE7365:
.LBB7368:
.LBB7363:
	.loc 36 2224 0
	bic	r1, r1, #255
.LVL738:
.LBE7363:
.LBE7368:
.LBB7369:
.LBB7367:
	.loc 36 2221 0
	cmp	r3, #15
	bne	.L1013
	.loc 36 2224 0
	bic	r0, r0, #255
.LBE7367:
.LBE7369:
	.loc 13 303 0
	sub	r0, r0, r1
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L957
.L972:
.LVL739:
.LBB7370:
.LBB7296:
.LBB7246:
.LBB7238:
.LBB7239:
	.loc 36 1627 0
	and	r4, r1, #15
	cmp	r4, #1
	bne	.L981
	.loc 36 1630 0
	mov	lr, #61440
.LBE7239:
.LBE7238:
.LBE7246:
.LBE7296:
.LBB7297:
.LBB7263:
	.loc 38 238 0
	cmp	r3, #1
.LBE7263:
.LBE7297:
.LBB7298:
.LBB7247:
.LBB7242:
.LBB7240:
	.loc 36 1630 0
	movt	lr, 65535
	and	lr, lr, r1, lsl #8
.LBE7240:
.LBE7242:
.LBE7247:
.LBE7298:
.LBB7299:
.LBB7264:
	.loc 38 238 0
	beq	.L976
	cmp	r3, #3
	bne	.L1054
.L977:
.LBB7254:
.LBB7255:
	.loc 36 1801 0
	and	r4, r0, #15
	cmp	r4, #3
	bne	.L984
.LBE7255:
.LBE7254:
.LBE7264:
.LBE7299:
.LBB7300:
.LBB7279:
	.loc 38 259 0
	cmp	r2, #3
.LBE7279:
.LBE7300:
.LBB7301:
.LBB7265:
.LBB7257:
.LBB7256:
	.loc 36 1804 0
	mov	ip, #49152
	ldr	r2, [sp, #12]
	movt	ip, 65535
	and	ip, ip, r0, lsl #10
.LVL740:
.LBE7256:
.LBE7257:
.LBE7265:
.LBE7301:
.LBB7302:
.LBB7280:
	.loc 38 259 0
	beq	.L1024
.LBE7280:
.LBE7302:
	.loc 13 267 0
	add	r2, lr, #4080
.LVL741:
	ldr	r1, [sp, #4]
	add	r2, r2, #15
.LVL742:
	b	.L1044
.LVL743:
.L1021:
.LBB7303:
.LBB7248:
	.loc 38 246 0
	mov	lr, ip
.L976:
.LBE7248:
.LBE7303:
.LBB7304:
.LBB7266:
.LBB7258:
.LBB7259:
	.loc 36 1627 0
	and	r4, r0, #15
	cmp	r4, #1
	bne	.L981
.LBE7259:
.LBE7258:
.LBE7266:
.LBE7304:
.LBB7305:
.LBB7281:
	.loc 38 259 0
	cmp	r2, #3
.LBE7281:
.LBE7305:
.LBB7306:
.LBB7267:
.LBB7261:
.LBB7260:
	.loc 36 1630 0
	mov	ip, #61440
	ldr	r2, [sp, #12]
	movt	ip, 65535
	and	ip, ip, r0, lsl #8
.LVL744:
.LBE7260:
.LBE7261:
.LBE7267:
.LBE7306:
.LBB7307:
.LBB7282:
	.loc 38 259 0
	beq	.L1024
.LBE7282:
.LBE7307:
	.loc 13 267 0
	add	r2, lr, #4080
.LVL745:
	add	r2, r2, #15
.LVL746:
	mov	r0, #4096
	b	.L990
.LVL747:
.L1024:
	and	r4, r1, #15
.LVL748:
.LBB7308:
.LBB7283:
.LBB7278:
.LBB7277:
	.loc 36 1669 0
	cmp	r4, #3
	beq	.L986
.LVL749:
.L992:
	bl	cap_frame_cap_get_capFSize.part.173
.LVL750:
.L1053:
.LBE7277:
.LBE7278:
.LBE7283:
.LBE7308:
.LBB7309:
.LBB7268:
	.loc 38 238 0
	cmp	r3, #1
	beq	.L1021
	cmp	r3, #3
.LBE7268:
.LBE7309:
.LBB7310:
.LBB7249:
	.loc 38 246 0
	moveq	lr, ip
.LBE7249:
.LBE7310:
.LBB7311:
.LBB7269:
	.loc 38 238 0
	beq	.L977
.LVL751:
.LBE7269:
.LBE7311:
.LBB7312:
.LBB7250:
	.loc 38 246 0
	mov	lr, ip
.LBE7250:
.LBE7312:
.LBB7313:
.LBB7284:
	.loc 38 259 0
	mov	r2, #4096
	b	.L975
.LVL752:
.L1043:
.LBE7284:
.LBE7313:
.LBB7314:
.LBB7292:
	mov	r0, #4096
	b	.L990
.LVL753:
.L1054:
.LBE7292:
.LBE7314:
.LBB7315:
.LBB7270:
	.loc 38 238 0
	mov	r2, #4096
	b	.L975
.L1013:
.LBE7270:
.LBE7315:
.LBE7370:
.LBB7371:
.LBB7364:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL754:
.L1003:
.LBE7364:
.LBE7371:
.LBB7372:
.LBB7350:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL755:
.L984:
.LBE7350:
.LBE7372:
.LBB7373:
.LBB7316:
.LBB7251:
.LBB7243:
.LBB7236:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL756:
.L981:
.LBE7236:
.LBE7243:
.LBB7244:
.LBB7241:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL757:
.L1052:
.LBE7241:
.LBE7244:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL758:
.L1009:
.LBE7251:
.LBE7316:
.LBE7373:
.LBB7374:
.LBB7322:
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL759:
.LBE7322:
.LBE7374:
	.cfi_endproc
.LFE502:
	.size	Arch_sameRegionAs, .-Arch_sameRegionAs
	.align	2
	.global	Arch_sameObjectAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_sameObjectAs, %function
Arch_sameObjectAs:
.LFB503:
	.loc 13 331 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 13 331 0
	add	ip, sp, #8
	mov	lr, sp
	stm	sp, {r2, r3}
	mov	r3, r2
.LBB7375:
.LBB7376:
	.loc 36 903 0
	and	r2, r0, #14
	cmp	r2, #14
.LBE7376:
.LBE7375:
	.loc 13 331 0
	stm	ip, {r0, r1}
	mov	r1, r0
.LVL760:
.LBB7378:
.LBB7377:
	.loc 36 905 0
	uxtbeq	r2, r0
	.loc 36 904 0
	andne	r2, r0, #15
.LBE7377:
.LBE7378:
	.loc 13 332 0
	cmp	r2, #1
	beq	.L1079
	.loc 13 342 0
	cmp	r2, #3
	beq	.L1080
.L1066:
	.loc 13 354 0
	ldm	lr, {r2, r3}
.LVL761:
	ldm	ip, {r0, r1}
	.loc 13 355 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL762:
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL763:
	.loc 13 354 0
	b	Arch_sameRegionAs
.LVL764:
.L1080:
	.cfi_restore_state
.LBB7379:
.LBB7380:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL765:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE7380:
.LBE7379:
	.loc 13 343 0
	cmp	r2, #3
	beq	.L1081
	.loc 13 350 0
	cmp	r2, #1
	bne	.L1066
.L1077:
	.loc 13 339 0
	mov	r0, #0
.LVL766:
.L1055:
	.loc 13 355 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL767:
	@ sp needed
	ldr	pc, [sp], #4
.LVL768:
.L1079:
	.cfi_restore_state
.LBB7381:
.LBB7382:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL769:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE7382:
.LBE7381:
	.loc 13 333 0
	cmp	r2, #1
	beq	.L1082
	.loc 13 338 0
	cmp	r2, #3
	bne	.L1066
	b	.L1077
.L1081:
.LVL770:
.LBB7383:
.LBB7384:
	.loc 36 1801 0
	and	r2, r0, #15
	cmp	r2, #3
	bne	.L1071
.LBE7384:
.LBE7383:
.LBB7388:
.LBB7389:
	and	r0, r3, #15
.LBE7389:
.LBE7388:
.LBB7392:
.LBB7385:
	.loc 36 1804 0
	mov	r2, #49152
.LBE7385:
.LBE7392:
.LBB7393:
.LBB7390:
	.loc 36 1801 0
	cmp	r0, #3
.LBE7390:
.LBE7393:
.LBB7394:
.LBB7386:
	.loc 36 1804 0
	movt	r2, 65535
	and	r0, r2, r1, lsl #10
.LVL771:
.LBE7386:
.LBE7394:
.LBB7395:
.LBB7391:
	.loc 36 1801 0
	bne	.L1071
.LVL772:
	.loc 36 1804 0
	and	r2, r2, r3, lsl #10
.LBE7391:
.LBE7395:
	.loc 13 347 0
	cmp	r2, r0
	bne	.L1077
.LVL773:
.LBB7396:
.LBB7397:
	.loc 36 1672 0
	ldr	r0, [sp, #4]
.LBE7397:
.LBE7396:
.LBB7398:
.LBB7399:
	ldr	r2, [sp, #12]
	lsr	r2, r2, #30
.LBE7399:
.LBE7398:
	.loc 13 345 0
	cmp	r2, r0, lsr #30
	bne	.L1077
	mvn	r3, r3, lsr #29
.LVL774:
	eor	r1, r3, r1, lsr #29
	and	r0, r1, #1
	b	.L1055
.LVL775:
.L1082:
.LBB7400:
.LBB7401:
	.loc 36 1627 0
	and	r2, r0, #15
	cmp	r2, #1
	bne	.L1063
.LBE7401:
.LBE7400:
.LBB7405:
.LBB7406:
	and	r0, r3, #15
.LBE7406:
.LBE7405:
.LBB7409:
.LBB7402:
	.loc 36 1630 0
	mov	r2, #61440
.LBE7402:
.LBE7409:
.LBB7410:
.LBB7407:
	.loc 36 1627 0
	cmp	r0, #1
.LBE7407:
.LBE7410:
.LBB7411:
.LBB7403:
	.loc 36 1630 0
	movt	r2, 65535
	and	r0, r2, r1, lsl #8
.LVL776:
.LBE7403:
.LBE7411:
.LBB7412:
.LBB7408:
	.loc 36 1627 0
	bne	.L1063
.LVL777:
	.loc 36 1630 0
	and	r2, r2, r3, lsl #8
.LBE7408:
.LBE7412:
	.loc 13 335 0
	cmp	r2, r0
	bne	.L1077
	mvn	r3, r3
.LVL778:
	lsr	r3, r3, #31
	cmp	r3, r1, lsr #31
	movne	r0, #1
	moveq	r0, #0
	b	.L1055
.LVL779:
.L1071:
.LBB7413:
.LBB7387:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL780:
.L1063:
.LBE7387:
.LBE7413:
.LBB7414:
.LBB7404:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL781:
.LBE7404:
.LBE7414:
	.cfi_endproc
.LFE503:
	.size	Arch_sameObjectAs, .-Arch_sameObjectAs
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176, %function
cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176:
.LFB1051:
	.loc 36 2047 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2049 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC48
	ldr	r3, .L1085
	.loc 36 2047 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2049 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC48
	movw	r2, #2050
	bl	_assert_fail
.LVL782:
.L1086:
	.align	2
.L1085:
	.word	.LANCHOR3+1984
	.cfi_endproc
.LFE1051:
	.size	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176, .-cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
	.text
	.align	2
	.global	isValidVTableRoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	isValidVTableRoot, %function
isValidVTableRoot:
.LFB423:
	.loc 11 1075 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 11 1075 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r0, [sp]
.LVL783:
.LBB7415:
.LBB7416:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r0
	.loc 36 904 0
	andne	r3, r0, #15
.LBE7416:
.LBE7415:
	.loc 11 1076 0
	cmp	r3, #9
	movne	r0, #0
	beq	.L1094
.L1087:
	.loc 11 1078 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1094:
	.cfi_restore_state
.LVL784:
.LBB7417:
.LBB7418:
	.loc 36 2049 0 discriminator 1
	and	r3, r0, #15
	cmp	r3, #9
.LBE7418:
.LBE7417:
	.loc 11 1076 0 discriminator 1
	ubfxeq	r0, r0, #4, #1
.LBB7420:
.LBB7419:
	.loc 36 2049 0 discriminator 1
	beq	.L1087
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL785:
.LBE7419:
.LBE7420:
	.cfi_endproc
.LFE423:
	.size	isValidVTableRoot, .-isValidVTableRoot
	.align	2
	.global	pageTableMapped
	.syntax unified
	.arm
	.fpu softvfp
	.type	pageTableMapped, %function
pageTableMapped:
.LFB427:
	.loc 11 1148 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL786:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r1
	.loc 11 1153 0
	mov	r1, r0
.LVL787:
	.loc 11 1148 0
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 11 1148 0
	mov	r5, r2
	.loc 11 1153 0
	mov	r0, sp
.LVL788:
	bl	findPDForASID
.LVL789:
	.loc 11 1154 0
	ldr	r1, [sp]
	.loc 11 1153 0
	ldr	r0, [sp, #4]
.LVL790:
	.loc 11 1154 0
	cmp	r1, #0
	bne	.L1097
.LVL791:
	.loc 11 1158 0
	lsr	r4, r4, #21
.LVL792:
	.loc 11 1159 0
	ldr	r3, [r0, r4, lsl #3]
.LVL793:
.LBB7429:
.LBB7430:
	.loc 36 2320 0
	and	r2, r3, #3
.LBE7430:
.LBE7429:
	.loc 11 1161 0
	cmp	r2, #3
	bne	.L1098
.LBB7431:
.LBB7432:
	.loc 36 2506 0
	bic	r3, r3, #4080
.LVL794:
	bic	r3, r3, #15
.LBE7432:
.LBE7431:
.LBB7433:
.LBB7434:
	.loc 19 23 0
	add	r3, r3, #-2147483648
.LBE7434:
.LBE7433:
	.loc 11 1155 0
	cmp	r5, r3
	movne	r0, #0
.LVL795:
.L1095:
	.loc 11 1167 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL796:
.L1097:
	.cfi_restore_state
	.loc 11 1155 0
	mov	r0, #0
.LVL797:
	b	.L1095
.LVL798:
.L1098:
	mov	r0, r1
.LVL799:
	b	.L1095
	.cfi_endproc
.LFE427:
	.size	pageTableMapped, .-pageTableMapped
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	invalidateASID, %function
invalidateASID:
.LFB428:
	.loc 11 1171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL800:
	.loc 11 1175 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	r2, r0, #10
	.loc 11 1171 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1175 0
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, lsl #2]
.LVL801:
	.loc 11 1171 0
	str	lr, [sp, #4]
	.loc 11 1176 0
	cmp	r3, #0
	beq	.L1105
	.loc 11 1178 0
	ubfx	r0, r0, #0, #10
.LVL802:
	ldr	r3, [r3, r0, lsl #2]
.LVL803:
	.loc 11 1179 0
	cmp	r3, #0
	beq	.L1106
.LVL804:
	.loc 11 1181 0
	add	r3, r3, #12288
.LVL805:
	mov	r2, #0
.LVL806:
	.loc 11 1182 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 11 1181 0
	str	r2, [r3, #4032]
	str	r2, [r3, #4036]
	.loc 11 1182 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL807:
.L1105:
	.cfi_restore_state
.LBB7439:
.LBB7440:
	.loc 11 1176 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC69
.LVL808:
	ldr	r3, .L1107
.LVL809:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC69
	movw	r2, #1176
.LVL810:
	bl	_assert_fail
.LVL811:
.L1106:
.LBE7440:
.LBE7439:
	.loc 11 1179 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC70
	ldr	r3, .L1107
.LVL812:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC70
	movw	r2, #1179
.LVL813:
	bl	_assert_fail
.LVL814:
.L1108:
	.align	2
.L1107:
	.word	.LANCHOR3+2028
	.cfi_endproc
.LFE428:
	.size	invalidateASID, .-invalidateASID
	.align	2
	.global	findFreeHWASID
	.syntax unified
	.arm
	.fpu softvfp
	.type	findFreeHWASID, %function
findFreeHWASID:
.LFB431:
	.loc 11 1220 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL815:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movw	r4, #:lower16:armKSHWASIDTable
	.loc 11 1225 0
	mov	r3, #0
	.loc 11 1220 0
	str	r6, [sp, #8]
	movw	r6, #:lower16:armKSNextASID
	movt	r4, #:upper16:armKSHWASIDTable
	movt	r6, #:upper16:armKSNextASID
	str	lr, [sp, #12]
	ldrb	r5, [r6]	@ zero_extendqisi2
	b	.L1111
.LVL816:
.L1118:
	.loc 11 1225 0
	cmp	r3, #256
	beq	.L1117
.LVL817:
.L1111:
	add	r0, r5, r3
	add	r3, r3, #1
.LVL818:
	uxtb	r0, r0
.LVL819:
	.loc 11 1229 0
	ldr	r2, [r4, r0, lsl #2]
	cmp	r2, #0
	bne	.L1118
.LVL820:
.L1110:
	.loc 11 1247 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL821:
.L1117:
	.cfi_restore_state
.LBB7453:
.LBB7454:
	.loc 11 1237 0
	ldr	r0, [r4, r5, lsl #2]
.LVL822:
	bl	invalidateASID
.LVL823:
.LBB7455:
.LBB7456:
.LBB7457:
.LBB7458:
.LBB7459:
.LBB7460:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7460:
.LBE7459:
	.loc 17 226 0
	mov	r2, #0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7461:
.LBB7462:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7462:
.LBE7461:
.LBB7463:
.LBB7464:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7464:
.LBE7463:
.LBE7458:
.LBE7457:
.LBE7456:
.LBE7455:
	.loc 11 1244 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r0, r5
	.loc 11 1241 0
	str	r2, [r4, r5, lsl #2]
	.loc 11 1244 0
	add	r3, r3, #1
	strb	r3, [r6]
	b	.L1110
.LBE7454:
.LBE7453:
	.cfi_endproc
.LFE431:
	.size	findFreeHWASID, .-findFreeHWASID
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadHWASID, %function
loadHWASID:
.LFB429:
	.loc 11 1186 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL824:
	.loc 11 1190 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	r2, r1, #10
	.loc 11 1186 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1190 0
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, lsl #2]
.LVL825:
	.loc 11 1186 0
	str	lr, [sp, #4]
	.loc 11 1191 0
	cmp	r3, #0
	beq	.L1123
	.loc 11 1193 0
	ubfx	r1, r1, #0, #10
.LVL826:
	ldr	r3, [r3, r1, lsl #2]
.LVL827:
	.loc 11 1194 0
	cmp	r3, #0
	beq	.L1124
	.loc 11 1196 0
	add	r3, r3, #16320
.LVL828:
	.loc 11 1197 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 11 1196 0
	ldrd	r2, [r3]
.LVL829:
	strd	r2, [r0]
	.loc 11 1197 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL830:
.L1123:
	.cfi_restore_state
.LBB7467:
.LBB7468:
	.loc 11 1191 0
	movw	r1, #:lower16:.LC26
.LVL831:
	movw	r0, #:lower16:.LC69
.LVL832:
	ldr	r3, .L1125
.LVL833:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC69
	movw	r2, #1191
.LVL834:
	bl	_assert_fail
.LVL835:
.L1124:
.LBE7468:
.LBE7467:
	.loc 11 1194 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC70
.LVL836:
	ldr	r3, .L1125
.LVL837:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC70
	movw	r2, #1194
.LVL838:
	bl	_assert_fail
.LVL839:
.L1126:
	.align	2
.L1125:
	.word	.LANCHOR3+2044
	.cfi_endproc
.LFE429:
	.size	loadHWASID, .-loadHWASID
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	invalidateASIDEntry, %function
invalidateASIDEntry:
.LFB433:
	.loc 11 1268 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL840:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1271 0
	mov	r1, r0
	.loc 11 1268 0
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 11 1271 0
	mov	r0, sp
.LVL841:
	bl	loadHWASID
.LVL842:
	ldr	r3, [sp]
.LVL843:
.LBB7469:
.LBB7470:
	.loc 36 2363 0
	ands	r1, r3, #3
	bne	.L1134
.LVL844:
.LBE7470:
.LBE7469:
	.loc 11 1272 0
	tst	r3, #8388608
	beq	.L1129
.LBB7472:
.LBB7473:
	.loc 36 2352 0
	lsr	r3, r3, #24
.LVL845:
.LBE7473:
.LBE7472:
	.loc 11 1273 0
	movw	r2, #:lower16:armKSHWASIDTable
	movt	r2, #:upper16:armKSHWASIDTable
	str	r1, [r2, r3, lsl #2]
.L1129:
	.loc 11 1276 0
	mov	r0, r4
	.loc 11 1277 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL846:
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL847:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 11 1276 0
	b	invalidateASID
.LVL848:
.L1134:
	.cfi_restore_state
.LBB7474:
.LBB7471:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL849:
.LBE7471:
.LBE7474:
	.cfi_endproc
.LFE433:
	.size	invalidateASIDEntry, .-invalidateASIDEntry
	.align	2
	.global	flushSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	flushSpace, %function
flushSpace:
.LFB442:
	.loc 11 1625 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL850:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1628 0
	mov	r1, r0
	.loc 11 1625 0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 11 1628 0
	mov	r0, sp
.LVL851:
	bl	loadHWASID
.LVL852:
	ldr	r4, [sp]
.LVL853:
.LBB7505:
.LBB7506:
.LBB7507:
.LBB7508:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7508:
.LBE7507:
	.loc 16 173 0
	bl	clean_D_PoU
.LVL854:
.LBB7509:
.LBB7510:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7510:
.LBE7509:
.LBB7511:
.LBB7512:
	.loc 17 330 0
	mov	r3, #0
	.syntax divided
@ 330 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7513:
.LBB7514:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7514:
.LBE7513:
.LBE7512:
.LBE7511:
.LBB7515:
.LBB7516:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL855:
	.arm
	.syntax unified
.LBE7516:
.LBE7515:
.LBE7506:
.LBE7505:
.LBB7517:
.LBB7518:
	.loc 36 2363 0
	ands	r3, r4, #3
	bne	.L1143
.LVL856:
.LBE7518:
.LBE7517:
	.loc 11 1637 0
	tst	r4, #8388608
	beq	.L1135
.LVL857:
.LBB7520:
.LBB7521:
.LBB7522:
.LBB7523:
.LBB7524:
.LBB7525:
.LBB7526:
.LBB7527:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7527:
.LBE7526:
	.loc 17 226 0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7528:
.LBB7529:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7529:
.LBE7528:
.LBB7530:
.LBB7531:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL858:
	.arm
	.syntax unified
.L1135:
.LBE7531:
.LBE7530:
.LBE7525:
.LBE7524:
.LBE7523:
.LBE7522:
.LBE7521:
.LBE7520:
	.loc 11 1643 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL859:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL860:
.L1143:
	.cfi_restore_state
.LBB7532:
.LBB7519:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL861:
.LBE7519:
.LBE7532:
	.cfi_endproc
.LFE442:
	.size	flushSpace, .-flushSpace
	.align	2
	.global	invalidateTLBByASID
	.syntax unified
	.arm
	.fpu softvfp
	.type	invalidateTLBByASID, %function
invalidateTLBByASID:
.LFB443:
	.loc 11 1647 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL862:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 11 1650 0
	mov	r1, r0
	mov	r0, sp
.LVL863:
	bl	loadHWASID
.LVL864:
	ldr	r3, [sp]
.LVL865:
.LBB7551:
.LBB7552:
	.loc 36 2363 0
	ands	r2, r3, #3
	bne	.L1152
.LVL866:
.LBE7552:
.LBE7551:
	.loc 11 1654 0
	tst	r3, #8388608
	beq	.L1144
.LVL867:
.LBB7554:
.LBB7555:
.LBB7556:
.LBB7557:
.LBB7558:
.LBB7559:
.LBB7560:
.LBB7561:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7561:
.LBE7560:
	.loc 17 226 0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7562:
.LBB7563:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7563:
.LBE7562:
.LBB7564:
.LBB7565:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL868:
	.arm
	.syntax unified
.L1144:
.LBE7565:
.LBE7564:
.LBE7559:
.LBE7558:
.LBE7557:
.LBE7556:
.LBE7555:
.LBE7554:
	.loc 11 1660 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL869:
.L1152:
	.cfi_restore_state
.LBB7566:
.LBB7553:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL870:
.LBE7553:
.LBE7566:
	.cfi_endproc
.LFE443:
	.size	invalidateTLBByASID, .-invalidateTLBByASID
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_Fault_VMFault_new.part.187, %function
seL4_Fault_VMFault_new.part.187:
.LFB1062:
	.loc 36 2688 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL871:
	.loc 36 2692 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC71
	ldr	r3, .L1155
	.loc 36 2688 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2692 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC71
	movw	r2, #2692
	bl	_assert_fail
.LVL872:
.L1156:
	.align	2
.L1155:
	.word	.LANCHOR3+2056
	.cfi_endproc
.LFE1062:
	.size	seL4_Fault_VMFault_new.part.187, .-seL4_Fault_VMFault_new.part.187
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pte_pte_small_ptr_get_contiguous_hint.part.189, %function
pte_pte_small_ptr_get_contiguous_hint.part.189:
.LFB1064:
	.loc 36 807 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL873:
	.loc 36 809 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC72
	ldr	r3, .L1159
	.loc 36 807 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 809 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC72
	movw	r2, #810
	bl	_assert_fail
.LVL874:
.L1160:
	.align	2
.L1159:
	.word	.LANCHOR3+2080
	.cfi_endproc
.LFE1064:
	.size	pte_pte_small_ptr_get_contiguous_hint.part.189, .-pte_pte_small_ptr_get_contiguous_hint.part.189
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_section_ptr_get_contiguous_hint.part.192, %function
pde_pde_section_ptr_get_contiguous_hint.part.192:
.LFB1067:
	.loc 36 2417 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL875:
	.loc 36 2419 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC73
	ldr	r3, .L1163
	.loc 36 2417 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2419 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC73
	movw	r2, #2420
	bl	_assert_fail
.LVL876:
.L1164:
	.align	2
.L1163:
	.word	.LANCHOR3+2120
	.cfi_endproc
.LFE1067:
	.size	pde_pde_section_ptr_get_contiguous_hint.part.192, .-pde_pde_section_ptr_get_contiguous_hint.part.192
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pte_pte_small_get_address.isra.197.part.198, %function
pte_pte_small_get_address.isra.197.part.198:
.LFB1073:
	.loc 36 821 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 823 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC74
	ldr	r3, .L1167
	.loc 36 821 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 823 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC74
	mov	r2, #824
	bl	_assert_fail
.LVL877:
.L1168:
	.align	2
.L1167:
	.word	.LANCHOR3+2160
	.cfi_endproc
.LFE1073:
	.size	pte_pte_small_get_address.isra.197.part.198, .-pte_pte_small_get_address.isra.197.part.198
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pte_pte_small_set_address.part.199, %function
pte_pte_small_set_address.part.199:
.LFB1074:
	.loc 36 835 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL878:
	.loc 36 836 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC74
	ldr	r3, .L1171
	.loc 36 835 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 836 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC74
	movw	r2, #837
	bl	_assert_fail
.LVL879:
.L1172:
	.align	2
.L1171:
	.word	.LANCHOR3+2188
	.cfi_endproc
.LFE1074:
	.size	pte_pte_small_set_address.part.199, .-pte_pte_small_set_address.part.199
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_section_get_address.isra.200.part.201, %function
pde_pde_section_get_address.isra.200.part.201:
.LFB1076:
	.loc 36 2431 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2433 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC75
	ldr	r3, .L1175
	.loc 36 2431 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2433 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC75
	movw	r2, #2434
	bl	_assert_fail
.LVL880:
.L1176:
	.align	2
.L1175:
	.word	.LANCHOR3+2216
	.cfi_endproc
.LFE1076:
	.size	pde_pde_section_get_address.isra.200.part.201, .-pde_pde_section_get_address.isra.200.part.201
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_section_set_address.part.202, %function
pde_pde_section_set_address.part.202:
.LFB1077:
	.loc 36 2445 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL881:
	.loc 36 2446 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC75
	ldr	r3, .L1179
	.loc 36 2445 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2446 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC75
	movw	r2, #2447
	bl	_assert_fail
.LVL882:
.L1180:
	.align	2
.L1179:
	.word	.LANCHOR3+2244
	.cfi_endproc
.LFE1077:
	.size	pde_pde_section_set_address.part.202, .-pde_pde_section_set_address.part.202
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pde_pde_section_new.part.203, %function
pde_pde_section_new.part.203:
.LFB1078:
	.loc 36 2375 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL883:
	.loc 36 2379 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC51
	ldr	r3, .L1183
	.loc 36 2375 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2379 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC51
	movw	r2, #2379
	bl	_assert_fail
.LVL884:
.L1184:
	.align	2
.L1183:
	.word	.LANCHOR3+2272
	.cfi_endproc
.LFE1078:
	.size	pde_pde_section_new.part.203, .-pde_pde_section_new.part.203
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_MessageInfo_new.part.205, %function
seL4_MessageInfo_new.part.205:
.LFB1080:
	.loc 30 41 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL885:
	.loc 30 45 0
	movw	r1, #:lower16:.LC76
	movw	r0, #:lower16:.LC77
	ldr	r3, .L1187
	.loc 30 41 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 30 45 0
	movt	r1, #:upper16:.LC76
	movt	r0, #:upper16:.LC77
	mov	r2, #45
	bl	_assert_fail
.LVL886:
.L1188:
	.align	2
.L1187:
	.word	.LANCHOR3+2292
	.cfi_endproc
.LFE1080:
	.size	seL4_MessageInfo_new.part.205, .-seL4_MessageInfo_new.part.205
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	getSyscallArg.part.206, %function
getSyscallArg.part.206:
.LFB1081:
	.file 43 "/home/sel4/work/work2/kernel/include/api/syscall.h"
	.loc 43 28 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL887:
	.loc 43 34 0
	movw	r1, #:lower16:.LC78
	movw	r0, #:lower16:.LC79
	ldr	r3, .L1191
	.loc 43 28 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 43 34 0
	movt	r1, #:upper16:.LC78
	movt	r0, #:upper16:.LC79
	mov	r2, #34
	bl	_assert_fail
.LVL888:
.L1192:
	.align	2
.L1191:
	.word	.LANCHOR3+2316
	.cfi_endproc
.LFE1081:
	.size	getSyscallArg.part.206, .-getSyscallArg.part.206
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_untyped_cap_get_capBlockSize.part.207, %function
cap_untyped_cap_get_capBlockSize.part.207:
.LFB1082:
	.loc 36 1005 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1007 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC55
	ldr	r3, .L1195
	.loc 36 1005 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1007 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC55
	mov	r2, #1008
	bl	_assert_fail
.LVL889:
.L1196:
	.align	2
.L1195:
	.word	.LANCHOR3+2332
	.cfi_endproc
.LFE1082:
	.size	cap_untyped_cap_get_capBlockSize.part.207, .-cap_untyped_cap_get_capBlockSize.part.207
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_asid_pool_cap_new.part.210, %function
cap_asid_pool_cap_new.part.210:
.LFB1085:
	.loc 36 1813 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL890:
	.loc 36 1817 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC80
	ldr	r3, .L1199
	.loc 36 1813 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1817 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC80
	movw	r2, #1817
	bl	_assert_fail
.LVL891:
.L1200:
	.align	2
.L1199:
	.word	.LANCHOR3+2368
	.cfi_endproc
.LFE1085:
	.size	cap_asid_pool_cap_new.part.210, .-cap_asid_pool_cap_new.part.210
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_asid_pool_cap_get_capASIDBase.part.211, %function
cap_asid_pool_cap_get_capASIDBase.part.211:
.LFB1086:
	.loc 36 1831 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1833 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC62
	ldr	r3, .L1203
	.loc 36 1831 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1833 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC62
	movw	r2, #1834
	bl	_assert_fail
.LVL892:
.L1204:
	.align	2
.L1203:
	.word	.LANCHOR3+2392
	.cfi_endproc
.LFE1086:
	.size	cap_asid_pool_cap_get_capASIDBase.part.211, .-cap_asid_pool_cap_get_capASIDBase.part.211
	.text
	.align	2
	.global	Arch_maskCapRights
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_maskCapRights, %function
Arch_maskCapRights:
.LFB500:
	.loc 13 129 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL893:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 13 129 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	ldm	sp, {r4, r6}
.LVL894:
.LBB7579:
.LBB7580:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r4
.LVL895:
	.loc 36 904 0
	andne	r3, r4, #15
.LBE7580:
.LBE7579:
	.loc 13 130 0
	cmp	r3, #1
	beq	.L1216
	.loc 13 138 0
	cmp	r3, #3
	beq	.L1217
	.loc 13 147 0
	stm	r0, {r4, r6}
.LVL896:
.L1205:
	.loc 13 149 0
	mov	r0, r5
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL897:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL898:
.L1216:
	.cfi_restore_state
.LBB7581:
.LBB7582:
.LBB7583:
	.loc 36 1535 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L1218
.LBE7583:
.LBE7582:
	.loc 13 135 0
	ubfx	r0, r6, #20, #2
.LVL899:
	bl	maskVMRights
.LVL900:
.LBB7585:
.LBB7586:
	.loc 36 1551 0
	movw	r3, #4092
	tst	r0, r3
	bne	.L1219
.LVL901:
	.loc 36 1554 0
	lsl	r0, r0, #20
.LVL902:
	.loc 36 1553 0
	bic	r6, r6, #3145728
.LVL903:
	.loc 36 1554 0
	and	r0, r0, #3145728
	orr	r6, r0, r6
.LVL904:
	.loc 36 1555 0
	stm	r5, {r4, r6}
	b	.L1205
.LVL905:
.L1217:
.LBE7586:
.LBE7585:
.LBE7581:
.LBB7590:
.LBB7591:
.LBB7592:
	.loc 36 1709 0
	and	r3, r4, #15
	cmp	r3, #3
	bne	.L1220
.LBE7592:
.LBE7591:
	.loc 13 143 0
	ubfx	r0, r6, #18, #2
.LVL906:
	bl	maskVMRights
.LVL907:
.LBB7594:
.LBB7595:
	.loc 36 1725 0
	movw	r3, #16380
	tst	r0, r3
	bne	.L1221
.LVL908:
	.loc 36 1728 0
	lsl	r0, r0, #18
.LVL909:
	.loc 36 1727 0
	bic	r6, r6, #786432
.LVL910:
	.loc 36 1728 0
	and	r0, r0, #786432
	orr	r6, r0, r6
.LVL911:
	.loc 36 1729 0
	stm	r5, {r4, r6}
	b	.L1205
.LVL912:
.L1218:
.LBE7595:
.LBE7594:
.LBE7590:
.LBB7599:
.LBB7588:
.LBB7584:
	bl	cap_small_frame_cap_get_capFVMRights.part.170
.LVL913:
.L1219:
.LBE7584:
.LBE7588:
.LBB7589:
.LBB7587:
	.loc 36 1551 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC81
.LVL914:
	ldr	r3, .L1222
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC81
	movw	r2, #1551
	bl	_assert_fail
.LVL915:
.L1220:
.LBE7587:
.LBE7589:
.LBE7599:
.LBB7600:
.LBB7597:
.LBB7593:
	bl	cap_frame_cap_get_capFVMRights.part.171
.LVL916:
.L1221:
.LBE7593:
.LBE7597:
.LBB7598:
.LBB7596:
	.loc 36 1725 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC82
.LVL917:
	ldr	r3, .L1222+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC82
	movw	r2, #1725
	bl	_assert_fail
.LVL918:
.L1223:
	.align	2
.L1222:
	.word	.LANCHOR3+2428
	.word	.LANCHOR3+2468
.LBE7596:
.LBE7598:
.LBE7600:
	.cfi_endproc
.LFE500:
	.size	Arch_maskCapRights, .-Arch_maskCapRights
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	seL4_Fault_VMFault_get_instructionFault.isra.216.part.217, %function
seL4_Fault_VMFault_get_instructionFault.isra.216.part.217:
.LFB1092:
	.loc 36 2735 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2737 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC83
	ldr	r3, .L1226
	.loc 36 2735 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2737 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC83
	movw	r2, #2738
	bl	_assert_fail
.LVL919:
.L1227:
	.align	2
.L1226:
	.word	.LANCHOR3+2500
	.cfi_endproc
.LFE1092:
	.size	seL4_Fault_VMFault_get_instructionFault.isra.216.part.217, .-seL4_Fault_VMFault_get_instructionFault.isra.216.part.217
	.text
	.align	2
	.global	Arch_setMRs_fault
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_setMRs_fault, %function
Arch_setMRs_fault:
.LFB509:
	.loc 34 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL920:
	.loc 34 41 0
	cmp	r3, #6
	.loc 34 40 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 34 41 0
	beq	.L1230
	cmp	r3, #7
	beq	.L1231
	cmp	r3, #5
	beq	.L1242
	.loc 34 72 0
	movw	r1, #:lower16:.LC30
.LVL921:
	movw	r0, #:lower16:.LC31
.LVL922:
	ldr	r3, .L1247
.LVL923:
	movt	r1, #:upper16:.LC30
	movt	r0, #:upper16:.LC31
	mov	r2, #72
.LVL924:
	bl	_fail
.LVL925:
.L1242:
.LBB7646:
.LBB7647:
.LBB7648:
.LBB7649:
	.loc 10 36 0
	ldr	r2, [r0, #68]
.LVL926:
.LBE7649:
.LBE7648:
.LBE7647:
.LBB7650:
.LBB7651:
	.loc 18 90 0
	.syntax divided
@ 90 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr  p15, 0, r2, c7, c8, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7652:
.LBB7653:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7653:
.LBE7652:
	.loc 18 92 0
	.syntax divided
@ 92 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrrc p15, 0, r3, ip, c7
@ 0 "" 2
.LVL927:
	.arm
	.syntax unified
.LBE7651:
.LBE7650:
	.loc 34 46 0
	bic	r3, r3, #4080
.LVL928:
	ubfx	r2, r2, #0, #12
	bic	r3, r3, #15
	orr	r3, r3, r2
.LBB7654:
.LBB7655:
.LBB7656:
	.loc 10 30 0
	str	r3, [r1, #8]
.LVL929:
.LBE7656:
.LBE7655:
.LBE7654:
.LBE7646:
.LBB7657:
.LBB7658:
	.loc 36 2709 0
	ldr	r3, [r0, #464]
	ldr	r2, [r0, #468]
.LVL930:
	and	r3, r3, #7
	cmp	r3, #5
	bne	.L1243
.LVL931:
.LBE7658:
.LBE7657:
.LBB7662:
.LBB7663:
.LBB7664:
	.loc 10 30 0
	str	r2, [r1, #12]
.LVL932:
	ldr	r3, [r0, #464]
.LVL933:
.LBE7664:
.LBE7663:
.LBE7662:
.LBB7665:
.LBB7666:
	.loc 36 2737 0
	and	r2, r3, #7
.LVL934:
	cmp	r2, #5
	bne	.L1244
.LVL935:
	.loc 36 2740 0
	ubfx	r3, r3, #3, #1
.LBE7666:
.LBE7665:
.LBB7668:
.LBB7669:
.LBB7670:
	.loc 10 30 0
	str	r3, [r1, #16]
.LVL936:
	ldr	r3, [r0, #464]
.LVL937:
.LBE7670:
.LBE7669:
.LBE7668:
.LBB7671:
.LBB7672:
	.loc 36 2723 0
	and	r2, r3, #7
	cmp	r2, #5
	.loc 36 2726 0
	lsreq	r3, r3, #6
.LBE7672:
.LBE7671:
	.loc 34 55 0
	moveq	r0, #4
.LVL938:
.LBB7677:
.LBB7678:
.LBB7679:
	.loc 10 30 0
	streq	r3, [r1, #20]
.LVL939:
.LBE7679:
.LBE7678:
.LBE7677:
.LBB7680:
.LBB7675:
	.loc 36 2723 0
	bne	.L1245
.LVL940:
.L1228:
.LBE7675:
.LBE7680:
	.loc 34 74 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL941:
.L1231:
	.cfi_restore_state
.LBB7681:
.LBB7682:
	.loc 36 2812 0
	ldr	r3, [r0, #464]
.LVL942:
	ldr	r2, [r0, #468]
.LVL943:
	and	r3, r3, #7
	cmp	r3, #7
.LBE7682:
.LBE7681:
	.loc 34 68 0
	moveq	r0, #1
.LVL944:
.LBB7684:
.LBB7685:
.LBB7686:
	.loc 10 30 0
	streq	r2, [r1, #8]
.LVL945:
.LBE7686:
.LBE7685:
.LBE7684:
.LBB7687:
.LBB7683:
	.loc 36 2812 0
	beq	.L1228
	movw	r1, #:lower16:.LC37
.LVL946:
	movw	r0, #:lower16:.LC85
	ldr	r3, .L1247+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC85
	movw	r2, #2813
.LVL947:
	bl	_assert_fail
.LVL948:
.L1230:
.LBE7683:
.LBE7687:
.LBB7688:
.LBB7689:
	.loc 36 2783 0
	ldr	r3, [r0, #464]
.LVL949:
	ldr	r2, [r0, #468]
.LVL950:
	and	r3, r3, #7
	cmp	r3, #6
	bne	.L1246
.LBE7689:
.LBE7688:
	.loc 34 61 0
	tst	r2, #33554432
	beq	.L1238
.LVL951:
.LBB7691:
.LBB7692:
	.loc 36 2772 0
	lsr	r2, r2, #26
.LVL952:
.LBE7692:
.LBE7691:
	.loc 34 74 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 34 62 0
	mov	r0, #1
.LVL953:
.LBB7693:
.LBB7694:
.LBB7695:
	.loc 10 30 0
	str	r2, [r1, #8]
.LVL954:
.LBE7695:
.LBE7694:
.LBE7693:
	.loc 34 74 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL955:
.L1238:
	.cfi_restore_state
.LBB7696:
.LBB7697:
.LBB7698:
	.loc 10 30 0
	mvn	r3, #0
.LBE7698:
.LBE7697:
.LBE7696:
	.loc 34 74 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 34 65 0
	mov	r0, #1
.LVL956:
.LBB7701:
.LBB7700:
.LBB7699:
	.loc 10 30 0
	str	r3, [r1, #8]
.LVL957:
.LBE7699:
.LBE7700:
.LBE7701:
	.loc 34 74 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL958:
.L1243:
	.cfi_restore_state
.LBB7702:
.LBB7661:
.LBB7659:
.LBB7660:
	.loc 36 2709 0
	movw	r1, #:lower16:.LC37
.LVL959:
	movw	r0, #:lower16:.LC83
.LVL960:
	ldr	r3, .L1247+8
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC83
	movw	r2, #2710
.LVL961:
	bl	_assert_fail
.LVL962:
.L1244:
.LBE7660:
.LBE7659:
.LBE7661:
.LBE7702:
.LBB7703:
.LBB7667:
	bl	seL4_Fault_VMFault_get_instructionFault.isra.216.part.217
.LVL963:
.L1245:
.LBE7667:
.LBE7703:
.LBB7704:
.LBB7676:
.LBB7673:
.LBB7674:
	.loc 36 2723 0
	movw	r1, #:lower16:.LC37
.LVL964:
	movw	r0, #:lower16:.LC83
	ldr	r3, .L1247+12
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC83
	movw	r2, #2724
	bl	_assert_fail
.LVL965:
.L1246:
.LBE7674:
.LBE7673:
.LBE7676:
.LBE7704:
.LBB7705:
.LBB7690:
	.loc 36 2783 0
	movw	r1, #:lower16:.LC37
.LVL966:
	movw	r0, #:lower16:.LC84
.LVL967:
	ldr	r3, .L1247+16
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC84
	mov	r2, #2784
.LVL968:
	bl	_assert_fail
.LVL969:
.L1248:
	.align	2
.L1247:
	.word	.LANCHOR3+2672
	.word	.LANCHOR3+2640
	.word	.LANCHOR3+2540
	.word	.LANCHOR3+2572
	.word	.LANCHOR3+2600
.LBE7690:
.LBE7705:
	.cfi_endproc
.LFE509:
	.size	Arch_setMRs_fault, .-Arch_setMRs_fault
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	readBcrCp, %function
readBcrCp:
.LFB551:
	.loc 21 299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL970:
	sub	r3, r0, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L1250
.L1252:
	.word	.L1251
	.word	.L1253
	.word	.L1254
	.word	.L1255
	.word	.L1256
	.word	.L1257
	.word	.L1258
	.word	.L1259
	.word	.L1260
	.word	.L1261
	.word	.L1262
	.word	.L1263
	.word	.L1264
	.word	.L1265
	.word	.L1266
.L1266:
	.loc 21 310 0
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c15, 5
@ 0 "" 2
.LVL971:
	.arm
	.syntax unified
.L1249:
	.loc 21 299 0
	bx	lr
.LVL972:
.L1251:
	.loc 21 299 0 is_stmt 0 discriminator 1
	.syntax divided
@ 299 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c1, 5
@ 0 "" 2
.LVL973:
	.loc 21 300 0 is_stmt 1 discriminator 1
	.arm
	.syntax unified
	b	.L1249
.LVL974:
.L1253:
	.loc 21 300 0 is_stmt 0
	.syntax divided
@ 300 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c2, 5
@ 0 "" 2
.LVL975:
	.loc 21 301 0 is_stmt 1
	.arm
	.syntax unified
	b	.L1249
.LVL976:
.L1254:
	.syntax divided
@ 301 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c3, 5
@ 0 "" 2
.LVL977:
	.arm
	.syntax unified
	b	.L1249
.LVL978:
.L1255:
	.syntax divided
@ 301 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c4, 5
@ 0 "" 2
.LVL979:
	.loc 21 302 0
	.arm
	.syntax unified
	b	.L1249
.LVL980:
.L1256:
	.syntax divided
@ 302 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c5, 5
@ 0 "" 2
.LVL981:
	.loc 21 303 0
	.arm
	.syntax unified
	b	.L1249
.LVL982:
.L1257:
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c6, 5
@ 0 "" 2
.LVL983:
	.loc 21 304 0
	.arm
	.syntax unified
	b	.L1249
.LVL984:
.L1258:
	.syntax divided
@ 304 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c7, 5
@ 0 "" 2
.LVL985:
	.arm
	.syntax unified
	b	.L1249
.LVL986:
.L1259:
	.loc 21 305 0
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c8, 5
@ 0 "" 2
.LVL987:
	.arm
	.syntax unified
	b	.L1249
.LVL988:
.L1260:
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c9, 5
@ 0 "" 2
.LVL989:
	.loc 21 306 0
	.arm
	.syntax unified
	b	.L1249
.LVL990:
.L1261:
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c10, 5
@ 0 "" 2
.LVL991:
	.loc 21 307 0
	.arm
	.syntax unified
	b	.L1249
.LVL992:
.L1262:
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c11, 5
@ 0 "" 2
.LVL993:
	.arm
	.syntax unified
	b	.L1249
.LVL994:
.L1263:
	.loc 21 308 0
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c12, 5
@ 0 "" 2
.LVL995:
	.arm
	.syntax unified
	b	.L1249
.LVL996:
.L1264:
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c13, 5
@ 0 "" 2
.LVL997:
	.loc 21 309 0
	.arm
	.syntax unified
	b	.L1249
.LVL998:
.L1265:
	.syntax divided
@ 309 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c14, 5
@ 0 "" 2
.LVL999:
	.loc 21 310 0
	.arm
	.syntax unified
	b	.L1249
.LVL1000:
.L1250:
	.loc 21 311 0
	cmp	r0, #0
	bne	.L1272
	.loc 21 312 0
	.syntax divided
@ 312 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c0, 5
@ 0 "" 2
.LVL1001:
	.arm
	.syntax unified
	b	.L1249
.LVL1002:
.L1272:
	.loc 21 311 0 discriminator 1
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC87
.LVL1003:
	.loc 21 299 0 discriminator 1
	str	r4, [sp, #-8]!
	.loc 21 311 0 discriminator 1
	ldr	r3, .L1273
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	movw	r2, #299
	.loc 21 299 0 discriminator 1
	str	lr, [sp, #4]
	.loc 21 311 0 discriminator 1
	bl	_assert_fail
.LVL1004:
.L1274:
	.align	2
.L1273:
	.word	.LANCHOR3+2692
	.cfi_endproc
.LFE551:
	.size	readBcrCp, .-readBcrCp
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	writeBcrCp, %function
writeBcrCp:
.LFB555:
	.loc 21 303 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1005:
	sub	r3, r0, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L1276
.L1278:
	.word	.L1277
	.word	.L1279
	.word	.L1280
	.word	.L1281
	.word	.L1282
	.word	.L1283
	.word	.L1284
	.word	.L1285
	.word	.L1286
	.word	.L1287
	.word	.L1288
	.word	.L1289
	.word	.L1290
	.word	.L1291
	.word	.L1292
.L1292:
.LVL1006:
.LBB7706:
	.loc 21 317 0
	.syntax divided
@ 317 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c15, 5
@ 0 "" 2
.LVL1007:
	.arm
	.syntax unified
.L1275:
	bx	lr
.L1277:
.LVL1008:
.LBE7706:
.LBB7707:
	.loc 21 303 0 discriminator 1
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c1, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7707:
	.loc 21 304 0 discriminator 1
	b	.L1275
.LVL1009:
.L1279:
.LBB7708:
	.loc 21 304 0 is_stmt 0
	.syntax divided
@ 304 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c2, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7708:
	.loc 21 305 0 is_stmt 1
	b	.L1275
.LVL1010:
.L1280:
.LBB7709:
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c3, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7709:
	.loc 21 306 0
	b	.L1275
.LVL1011:
.L1281:
.LBB7710:
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c4, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7710:
	.loc 21 307 0
	b	.L1275
.LVL1012:
.L1282:
.LBB7711:
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c5, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7711:
	.loc 21 308 0
	b	.L1275
.LVL1013:
.L1283:
.LBB7712:
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c6, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7712:
	.loc 21 309 0
	b	.L1275
.LVL1014:
.L1284:
.LBB7713:
	.syntax divided
@ 309 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c7, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7713:
	.loc 21 310 0
	b	.L1275
.LVL1015:
.L1285:
.LBB7714:
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c8, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7714:
	.loc 21 311 0
	b	.L1275
.LVL1016:
.L1286:
.LBB7715:
	.syntax divided
@ 311 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c9, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7715:
	.loc 21 312 0
	b	.L1275
.LVL1017:
.L1287:
.LBB7716:
	.syntax divided
@ 312 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c10, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7716:
	.loc 21 313 0
	b	.L1275
.LVL1018:
.L1288:
.LBB7717:
	.syntax divided
@ 313 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c11, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7717:
	.loc 21 314 0
	b	.L1275
.LVL1019:
.L1289:
.LBB7718:
	.syntax divided
@ 314 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c12, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7718:
	.loc 21 315 0
	b	.L1275
.LVL1020:
.L1290:
.LBB7719:
	.syntax divided
@ 315 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c13, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7719:
	.loc 21 316 0
	b	.L1275
.LVL1021:
.L1291:
.LBB7720:
	.syntax divided
@ 316 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c14, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7720:
	.loc 21 317 0
	b	.L1275
.LVL1022:
.L1276:
	.loc 21 318 0
	cmp	r0, #0
	bne	.L1298
.LVL1023:
.LBB7721:
	.loc 21 319 0
	.syntax divided
@ 319 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c0, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE7721:
	.loc 21 320 0
	b	.L1275
.LVL1024:
.L1298:
	.loc 21 318 0 discriminator 1
	movw	r1, #:lower16:.LC86
.LVL1025:
	movw	r0, #:lower16:.LC87
.LVL1026:
	.loc 21 303 0 discriminator 1
	str	r4, [sp, #-8]!
	.loc 21 318 0 discriminator 1
	ldr	r3, .L1299
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	movw	r2, #303
	.loc 21 303 0 discriminator 1
	str	lr, [sp, #4]
	.loc 21 318 0 discriminator 1
	bl	_assert_fail
.LVL1027:
.L1300:
	.align	2
.L1299:
	.word	.LANCHOR3+2704
	.cfi_endproc
.LFE555:
	.size	writeBcrCp, .-writeBcrCp
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	readWcrCp, %function
readWcrCp:
.LFB553:
	.loc 21 301 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1028:
	sub	r3, r0, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L1302
.L1304:
	.word	.L1303
	.word	.L1305
	.word	.L1306
	.word	.L1307
	.word	.L1308
	.word	.L1309
	.word	.L1310
	.word	.L1311
	.word	.L1312
	.word	.L1313
	.word	.L1314
	.word	.L1315
	.word	.L1316
	.word	.L1317
	.word	.L1318
.L1318:
	.loc 21 312 0
	.syntax divided
@ 312 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c15, 7
@ 0 "" 2
.LVL1029:
	.arm
	.syntax unified
.L1301:
	.loc 21 301 0
	bx	lr
.LVL1030:
.L1303:
	.loc 21 301 0 is_stmt 0 discriminator 1
	.syntax divided
@ 301 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c1, 7
@ 0 "" 2
.LVL1031:
	.loc 21 302 0 is_stmt 1 discriminator 1
	.arm
	.syntax unified
	b	.L1301
.LVL1032:
.L1305:
	.loc 21 302 0 is_stmt 0
	.syntax divided
@ 302 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c2, 7
@ 0 "" 2
.LVL1033:
	.loc 21 303 0 is_stmt 1
	.arm
	.syntax unified
	b	.L1301
.LVL1034:
.L1306:
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c3, 7
@ 0 "" 2
.LVL1035:
	.arm
	.syntax unified
	b	.L1301
.LVL1036:
.L1307:
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c4, 7
@ 0 "" 2
.LVL1037:
	.loc 21 304 0
	.arm
	.syntax unified
	b	.L1301
.LVL1038:
.L1308:
	.syntax divided
@ 304 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c5, 7
@ 0 "" 2
.LVL1039:
	.loc 21 305 0
	.arm
	.syntax unified
	b	.L1301
.LVL1040:
.L1309:
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c6, 7
@ 0 "" 2
.LVL1041:
	.loc 21 306 0
	.arm
	.syntax unified
	b	.L1301
.LVL1042:
.L1310:
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c7, 7
@ 0 "" 2
.LVL1043:
	.arm
	.syntax unified
	b	.L1301
.LVL1044:
.L1311:
	.loc 21 307 0
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c8, 7
@ 0 "" 2
.LVL1045:
	.arm
	.syntax unified
	b	.L1301
.LVL1046:
.L1312:
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c9, 7
@ 0 "" 2
.LVL1047:
	.loc 21 308 0
	.arm
	.syntax unified
	b	.L1301
.LVL1048:
.L1313:
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c10, 7
@ 0 "" 2
.LVL1049:
	.loc 21 309 0
	.arm
	.syntax unified
	b	.L1301
.LVL1050:
.L1314:
	.syntax divided
@ 309 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c11, 7
@ 0 "" 2
.LVL1051:
	.arm
	.syntax unified
	b	.L1301
.LVL1052:
.L1315:
	.loc 21 310 0
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c12, 7
@ 0 "" 2
.LVL1053:
	.arm
	.syntax unified
	b	.L1301
.LVL1054:
.L1316:
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c13, 7
@ 0 "" 2
.LVL1055:
	.loc 21 311 0
	.arm
	.syntax unified
	b	.L1301
.LVL1056:
.L1317:
	.syntax divided
@ 311 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c14, 7
@ 0 "" 2
.LVL1057:
	.loc 21 312 0
	.arm
	.syntax unified
	b	.L1301
.LVL1058:
.L1302:
	.loc 21 313 0
	cmp	r0, #0
	bne	.L1324
	.loc 21 314 0
	.syntax divided
@ 314 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r0, c0, c0, 7
@ 0 "" 2
.LVL1059:
	.arm
	.syntax unified
	b	.L1301
.LVL1060:
.L1324:
	.loc 21 313 0 discriminator 1
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC87
.LVL1061:
	.loc 21 301 0 discriminator 1
	str	r4, [sp, #-8]!
	.loc 21 313 0 discriminator 1
	ldr	r3, .L1325
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	movw	r2, #301
	.loc 21 301 0 discriminator 1
	str	lr, [sp, #4]
	.loc 21 313 0 discriminator 1
	bl	_assert_fail
.LVL1062:
.L1326:
	.align	2
.L1325:
	.word	.LANCHOR3+2716
	.cfi_endproc
.LFE553:
	.size	readWcrCp, .-readWcrCp
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	writeWcrCp, %function
writeWcrCp:
.LFB557:
	.loc 21 305 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1063:
	sub	r3, r0, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L1328
.L1330:
	.word	.L1329
	.word	.L1331
	.word	.L1332
	.word	.L1333
	.word	.L1334
	.word	.L1335
	.word	.L1336
	.word	.L1337
	.word	.L1338
	.word	.L1339
	.word	.L1340
	.word	.L1341
	.word	.L1342
	.word	.L1343
	.word	.L1344
.L1344:
.LVL1064:
.LBB7722:
	.loc 21 319 0
	.syntax divided
@ 319 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c15, 7
@ 0 "" 2
.LVL1065:
	.arm
	.syntax unified
.L1327:
	bx	lr
.L1329:
.LVL1066:
.LBE7722:
.LBB7723:
	.loc 21 305 0 discriminator 1
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c1, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7723:
	.loc 21 306 0 discriminator 1
	b	.L1327
.LVL1067:
.L1331:
.LBB7724:
	.loc 21 306 0 is_stmt 0
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c2, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7724:
	.loc 21 307 0 is_stmt 1
	b	.L1327
.LVL1068:
.L1332:
.LBB7725:
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c3, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7725:
	.loc 21 308 0
	b	.L1327
.LVL1069:
.L1333:
.LBB7726:
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c4, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7726:
	.loc 21 309 0
	b	.L1327
.LVL1070:
.L1334:
.LBB7727:
	.syntax divided
@ 309 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c5, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7727:
	.loc 21 310 0
	b	.L1327
.LVL1071:
.L1335:
.LBB7728:
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c6, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7728:
	.loc 21 311 0
	b	.L1327
.LVL1072:
.L1336:
.LBB7729:
	.syntax divided
@ 311 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c7, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7729:
	.loc 21 312 0
	b	.L1327
.LVL1073:
.L1337:
.LBB7730:
	.syntax divided
@ 312 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c8, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7730:
	.loc 21 313 0
	b	.L1327
.LVL1074:
.L1338:
.LBB7731:
	.syntax divided
@ 313 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c9, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7731:
	.loc 21 314 0
	b	.L1327
.LVL1075:
.L1339:
.LBB7732:
	.syntax divided
@ 314 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c10, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7732:
	.loc 21 315 0
	b	.L1327
.LVL1076:
.L1340:
.LBB7733:
	.syntax divided
@ 315 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c11, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7733:
	.loc 21 316 0
	b	.L1327
.LVL1077:
.L1341:
.LBB7734:
	.syntax divided
@ 316 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c12, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7734:
	.loc 21 317 0
	b	.L1327
.LVL1078:
.L1342:
.LBB7735:
	.syntax divided
@ 317 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c13, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7735:
	.loc 21 318 0
	b	.L1327
.LVL1079:
.L1343:
.LBB7736:
	.syntax divided
@ 318 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c14, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7736:
	.loc 21 319 0
	b	.L1327
.LVL1080:
.L1328:
	.loc 21 320 0
	cmp	r0, #0
	bne	.L1350
.LVL1081:
.LBB7737:
	.loc 21 321 0
	.syntax divided
@ 321 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r1, c0, c0, 7
@ 0 "" 2
	.arm
	.syntax unified
.LBE7737:
	.loc 21 322 0
	b	.L1327
.LVL1082:
.L1350:
	.loc 21 320 0 discriminator 1
	movw	r1, #:lower16:.LC86
.LVL1083:
	movw	r0, #:lower16:.LC87
.LVL1084:
	.loc 21 305 0 discriminator 1
	str	r4, [sp, #-8]!
	.loc 21 320 0 discriminator 1
	ldr	r3, .L1351
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	movw	r2, #305
	.loc 21 305 0 discriminator 1
	str	lr, [sp, #4]
	.loc 21 320 0 discriminator 1
	bl	_assert_fail
.LVL1085:
.L1352:
	.align	2
.L1351:
	.word	.LANCHOR3+2728
	.cfi_endproc
.LFE557:
	.size	writeWcrCp, .-writeWcrCp
	.align	2
	.global	loadAllDisabledBreakpointState
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadAllDisabledBreakpointState, %function
loadAllDisabledBreakpointState:
.LFB568:
	.loc 21 1208 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1086:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 21 1221 0
	mov	r4, #0
	.loc 21 1208 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LVL1087:
.L1354:
	.loc 21 1222 0 discriminator 3
	uxth	r5, r4
	.loc 21 1221 0 discriminator 3
	add	r4, r4, #1
.LVL1088:
	.loc 21 1222 0 discriminator 3
	mov	r0, r5
	bl	readBcrCp
.LVL1089:
	bic	r1, r0, #1
	mov	r0, r5
	bl	writeBcrCp
.LVL1090:
	.loc 21 1221 0 discriminator 3
	cmp	r4, #6
	bne	.L1354
	mov	r4, #0
.LVL1091:
.L1355:
	.loc 21 1225 0 discriminator 3
	uxth	r5, r4
	.loc 21 1224 0 discriminator 3
	add	r4, r4, #1
.LVL1092:
	.loc 21 1225 0 discriminator 3
	mov	r0, r5
	bl	readWcrCp
.LVL1093:
	bic	r1, r0, #1
	mov	r0, r5
	bl	writeWcrCp
.LVL1094:
	.loc 21 1224 0 discriminator 3
	cmp	r4, #4
	bne	.L1355
	.loc 21 1227 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1095:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE568:
	.size	loadAllDisabledBreakpointState, .-loadAllDisabledBreakpointState
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_disable, %function
vcpu_disable:
.LFB628:
	.loc 25 437 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1096:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB7738:
.LBB7739:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7739:
.LBE7738:
	.loc 25 441 0
	cmp	r0, #0
	beq	.L1360
.LBB7740:
.LBB7741:
	.loc 25 330 0
	movw	r3, #24831
	movt	r3, 65520
	ldr	r3, [r3, #-255]
.LBE7741:
.LBE7740:
.LBB7742:
.LBB7743:
	.loc 18 128 0
	.syntax divided
@ 128 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 0, r2, c1, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE7743:
.LBE7742:
	.loc 25 445 0
	str	r2, [r0, #4]
	.loc 25 444 0
	str	r3, [r0, #12]
.LBB7744:
.LBB7745:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.L1360:
.LVL1097:
.LBE7745:
.LBE7744:
.LBB7746:
.LBB7747:
	.loc 25 336 0
	movw	r3, #24831
	mov	r2, #0
	movt	r3, 65520
	str	r2, [r3, #-255]
.LVL1098:
.LBE7747:
.LBE7746:
.LBB7748:
.LBB7749:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1099:
	.arm
	.syntax unified
.LBE7749:
.LBE7748:
.LBB7750:
.LBB7751:
	.loc 18 134 0
	movw	r3, #6268
	movt	r3, 197
	.syntax divided
@ 134 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 0, r3, c1, c0, 0
@ 0 "" 2
.LVL1100:
	.arm
	.syntax unified
.LBE7751:
.LBE7750:
.LBB7752:
.LBB7753:
.LBB7754:
.LBB7755:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7755:
.LBE7754:
	.loc 18 61 0
	movw	r3, #28731
	movt	r3, 4072
	.syntax divided
@ 61 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r3, c1, c1, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7756:
.LBB7757:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1101:
	.arm
	.syntax unified
.LBE7757:
.LBE7756:
.LBE7753:
.LBE7752:
	.loc 25 462 0
	bl	loadAllDisabledBreakpointState
.LVL1102:
.LBB7758:
.LBB7759:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7759:
.LBE7758:
	.loc 25 471 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE628:
	.size	vcpu_disable, .-vcpu_disable
	.align	2
	.global	dissociateVCPUTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	dissociateVCPUTCB, %function
dissociateVCPUTCB:
.LFB640:
	.loc 25 927 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1103:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 25 928 0
	ldr	r4, [r1, #440]
	.loc 25 927 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 25 928 0
	cmp	r4, r0
	bne	.L1366
	.loc 25 928 0 is_stmt 0 discriminator 1
	ldr	r3, [r4]
	cmp	r1, r3
	bne	.L1366
	.loc 25 931 0 is_stmt 1
	movw	r5, #:lower16:armHSCurVCPU
	movt	r5, #:upper16:armHSCurVCPU
	ldr	r3, [r5]
	cmp	r4, r3
	beq	.L1374
.LVL1104:
.L1368:
.LBB7784:
.LBB7785:
.LBB7786:
	.loc 42 38 0
	ldr	r3, [r1, #64]
.LBE7786:
.LBE7785:
.LBE7784:
	.loc 25 934 0
	mov	r2, #0
	str	r2, [r1, #440]
	.loc 25 935 0
	str	r2, [r4]
.LVL1105:
.LBB7791:
.LBB7789:
.LBB7787:
	.loc 42 38 0
	and	r3, r3, #-134217728
.LBE7787:
.LBE7789:
.LBE7791:
.LBB7792:
.LBB7793:
	.loc 21 1281 0
	str	r2, [r1, #156]
.LVL1106:
.LBE7793:
.LBE7792:
.LBB7794:
.LBB7790:
.LBB7788:
	.loc 42 38 0
	orr	r3, r3, #80
.LBE7788:
.LBE7790:
.LBE7794:
.LBB7795:
.LBB7796:
	.loc 10 30 0
	str	r3, [r1, #64]
.LVL1107:
.LBE7796:
.LBE7795:
	.loc 25 942 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1108:
.L1374:
	.cfi_restore_state
.LBB7797:
.LBB7798:
	.loc 25 897 0
	movw	r6, #:lower16:armHSVCPUActive
	movt	r6, #:upper16:armHSVCPUActive
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L1375
.LVL1109:
.L1369:
	.loc 25 901 0
	mov	r3, #0
	str	r3, [r5]
	b	.L1368
.LVL1110:
.L1375:
	.loc 25 898 0
	mov	r0, #0
.LVL1111:
	str	r1, [sp, #4]
	bl	vcpu_disable
.LVL1112:
	.loc 25 899 0
	mov	r3, #0
	ldr	r1, [sp, #4]
	str	r3, [r6]
	b	.L1369
.LVL1113:
.L1366:
.LBE7798:
.LBE7797:
.LBB7799:
.LBB7800:
	.loc 25 929 0
	movw	r1, #:lower16:.LC32
.LVL1114:
	movw	r0, #:lower16:.LC88
.LVL1115:
	ldr	r3, .L1376
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC88
	movw	r2, #929
	bl	_fail
.LVL1116:
.L1377:
	.align	2
.L1376:
	.word	.LANCHOR3+2740
.LBE7800:
.LBE7799:
	.cfi_endproc
.LFE640:
	.size	dissociateVCPUTCB, .-dissociateVCPUTCB
	.align	2
	.global	Arch_prepareThreadDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_prepareThreadDelete, %function
Arch_prepareThreadDelete:
.LFB507:
	.loc 13 574 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1117:
	.loc 13 576 0
	ldr	r3, [r0, #440]
	cmp	r3, #0
	beq	.L1378
	.loc 13 577 0
	mov	r1, r0
	mov	r0, r3
.LVL1118:
	b	dissociateVCPUTCB
.LVL1119:
.L1378:
	.loc 13 582 0
	bx	lr
	.cfi_endproc
.LFE507:
	.size	Arch_prepareThreadDelete, .-Arch_prepareThreadDelete
	.align	2
	.global	vcpu_finalise
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_finalise, %function
vcpu_finalise:
.LFB638:
	.loc 25 906 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1120:
	.loc 25 907 0
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.L1380
	.loc 25 908 0
	b	dissociateVCPUTCB
.LVL1121:
.L1380:
	.loc 25 910 0
	bx	lr
	.cfi_endproc
.LFE638:
	.size	vcpu_finalise, .-vcpu_finalise
	.align	2
	.global	associateVCPUTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	associateVCPUTCB, %function
associateVCPUTCB:
.LFB639:
	.loc 25 914 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1122:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 25 915 0
	ldr	r0, [r1, #440]
.LVL1123:
	.loc 25 914 0
	mov	r5, r1
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 25 915 0
	cmp	r0, #0
	beq	.L1383
	.loc 25 916 0
	bl	dissociateVCPUTCB
.LVL1124:
.L1383:
	.loc 25 918 0
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L1384
	.loc 25 919 0
	mov	r0, r4
	bl	dissociateVCPUTCB
.LVL1125:
.L1384:
	.loc 25 923 0
	ldr	r6, [sp, #8]
	.cfi_restore 6
	.loc 25 921 0
	str	r4, [r5, #440]
	.loc 25 922 0
	str	r5, [r4]
	.loc 25 923 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1126:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE639:
	.size	associateVCPUTCB, .-associateVCPUTCB
	.align	2
	.global	invokeVCPUSetTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeVCPUSetTCB, %function
invokeVCPUSetTCB:
.LFB649:
	.loc 25 1142 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1127:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 25 1143 0
	bl	associateVCPUTCB
.LVL1128:
	.loc 25 1146 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE649:
	.size	invokeVCPUSetTCB, .-invokeVCPUSetTCB
	.align	2
	.global	saveAllBreakpointState
	.syntax unified
	.arm
	.fpu softvfp
	.type	saveAllBreakpointState, %function
saveAllBreakpointState:
.LFB569:
	.loc 21 1249 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1129:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	.loc 21 1252 0
	subs	r7, r0, #0
	.loc 21 1249 0
	str	r8, [sp, #16]
	movne	r4, r7
	.loc 21 1252 0
	movne	r6, #1
	.loc 21 1249 0
	str	lr, [sp, #20]
	.loc 21 1252 0
	movne	r5, #0
	beq	.L1408
.LVL1130:
.L1396:
	.loc 21 1255 0 discriminator 3
	uxth	r0, r5
.LVL1131:
.LBB7819:
.LBB7820:
	.loc 21 300 0 discriminator 3
	sub	r3, r0, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L1397
.L1399:
	.word	.L1398
	.word	.L1400
	.word	.L1401
	.word	.L1402
	.word	.L1403
.L1403:
	.loc 21 303 0
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c5, 4
@ 0 "" 2
.LVL1132:
	.arm
	.syntax unified
.L1404:
.LBE7820:
.LBE7819:
.LBB7824:
.LBB7825:
	.loc 21 350 0
	str	r3, [r4, #80]
.LVL1133:
.LBE7825:
.LBE7824:
	.loc 21 1256 0
	bl	readBcrCp
.LVL1134:
	.loc 21 1254 0
	cmp	r6, #6
.LBB7827:
.LBB7828:
	.loc 21 343 0
	str	r0, [r4, #76]
.LVL1135:
.LBE7828:
.LBE7827:
	.loc 21 1254 0
	beq	.L1409
.LVL1136:
.L1406:
	add	r5, r5, #1
	add	r6, r6, #1
	add	r4, r4, #8
	b	.L1396
.LVL1137:
.L1402:
.LBB7830:
.LBB7821:
	.loc 21 302 0
	.syntax divided
@ 302 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c4, 4
@ 0 "" 2
.LVL1138:
	.arm
	.syntax unified
	b	.L1404
.LVL1139:
.L1401:
	.syntax divided
@ 302 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c3, 4
@ 0 "" 2
.LVL1140:
	.arm
	.syntax unified
	b	.L1404
.LVL1141:
.L1400:
	.loc 21 301 0
	.syntax divided
@ 301 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c2, 4
@ 0 "" 2
.LVL1142:
	.arm
	.syntax unified
	b	.L1404
.LVL1143:
.L1398:
	.loc 21 300 0
	.syntax divided
@ 300 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c1, 4
@ 0 "" 2
.LVL1144:
	.arm
	.syntax unified
	b	.L1404
.LVL1145:
.L1409:
.LBE7821:
.LBE7830:
.LBB7831:
.LBB7832:
.LBB7833:
.LBB7834:
	.loc 21 315 0
	.syntax divided
@ 315 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c0, 6
@ 0 "" 2
.LVL1146:
	.arm
	.syntax unified
.LBE7834:
.LBE7833:
	.loc 21 1261 0
	mov	r0, #0
.LBB7838:
.LBB7839:
	.loc 21 364 0
	str	r3, [r7, #128]
.LVL1147:
.LBE7839:
.LBE7838:
	.loc 21 1261 0
	bl	readWcrCp
.LVL1148:
.LBB7843:
.LBB7844:
	.loc 21 357 0
	str	r0, [r7, #124]
.LVL1149:
.LBE7844:
.LBE7843:
.LBB7848:
.LBB7835:
	.loc 21 302 0
	.syntax divided
@ 302 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c1, 6
@ 0 "" 2
.LVL1150:
	.arm
	.syntax unified
.LBE7835:
.LBE7848:
	.loc 21 1261 0
	mov	r0, #1
.LBB7849:
.LBB7840:
	.loc 21 364 0
	str	r3, [r7, #136]
.LVL1151:
.LBE7840:
.LBE7849:
	.loc 21 1261 0
	bl	readWcrCp
.LVL1152:
.LBB7850:
.LBB7845:
	.loc 21 357 0
	str	r0, [r7, #132]
.LVL1153:
.LBE7845:
.LBE7850:
.LBB7851:
.LBB7836:
	.loc 21 303 0
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c2, 6
@ 0 "" 2
.LVL1154:
	.arm
	.syntax unified
.LBE7836:
.LBE7851:
	.loc 21 1261 0
	mov	r0, #2
.LBB7852:
.LBB7841:
	.loc 21 364 0
	str	r3, [r7, #144]
.LVL1155:
.LBE7841:
.LBE7852:
	.loc 21 1261 0
	bl	readWcrCp
.LVL1156:
.LBB7853:
.LBB7846:
	.loc 21 357 0
	str	r0, [r7, #140]
.LVL1157:
.LBE7846:
.LBE7853:
.LBB7854:
.LBB7837:
	.loc 21 304 0
	.syntax divided
@ 304 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c3, 6
@ 0 "" 2
.LVL1158:
	.arm
	.syntax unified
.LBE7837:
.LBE7854:
	.loc 21 1261 0
	mov	r0, #3
.LBB7855:
.LBB7842:
	.loc 21 364 0
	str	r3, [r7, #152]
.LVL1159:
.LBE7842:
.LBE7855:
	.loc 21 1261 0
	bl	readWcrCp
.LVL1160:
.LBE7832:
.LBE7831:
	.loc 21 1263 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LBB7858:
.LBB7857:
.LBB7856:
.LBB7847:
	.loc 21 357 0
	str	r0, [r7, #148]
.LVL1161:
.LBE7847:
.LBE7856:
.LBE7857:
.LBE7858:
	.loc 21 1263 0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL1162:
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1163:
.L1397:
.LBB7859:
.LBB7822:
	.loc 21 312 0
	cmp	r5, #0
	bne	.L1410
	.loc 21 313 0
	.syntax divided
@ 313 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mrc  p14, 0, r3, c0, c0, 4
@ 0 "" 2
.LVL1164:
	.arm
	.syntax unified
.LBE7822:
.LBE7859:
.LBB7860:
.LBB7826:
	.loc 21 350 0
	str	r3, [r4, #80]
.LVL1165:
.LBE7826:
.LBE7860:
	.loc 21 1256 0
	bl	readBcrCp
.LVL1166:
.LBB7861:
.LBB7829:
	.loc 21 343 0
	str	r0, [r4, #76]
.LVL1167:
	b	.L1406
.LVL1168:
.L1408:
	.cfi_restore_state
.LBE7829:
.LBE7861:
	.loc 21 1252 0 discriminator 1
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC89
.LVL1169:
	ldr	r3, .L1411
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC89
	movw	r2, #1252
	bl	_assert_fail
.LVL1170:
.L1410:
.LBB7862:
.LBB7823:
	.loc 21 312 0
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC87
.LVL1171:
	ldr	r3, .L1411+4
.LVL1172:
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	mov	r2, #300
	bl	_assert_fail
.LVL1173:
.L1412:
	.align	2
.L1411:
	.word	.LANCHOR3+2760
	.word	.LANCHOR3+2784
.LBE7823:
.LBE7862:
	.cfi_endproc
.LFE569:
	.size	saveAllBreakpointState, .-saveAllBreakpointState
	.align	2
	.global	restore_user_debug_context
	.syntax unified
	.arm
	.fpu softvfp
	.type	restore_user_debug_context, %function
restore_user_debug_context:
.LFB573:
	.loc 21 1321 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1174:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	.loc 21 1322 0
	subs	r7, r0, #0
	.loc 21 1321 0
	str	r8, [sp, #16]
	str	lr, [sp, #20]
	.loc 21 1322 0
	beq	.L1441
	.loc 21 1324 0
	ldr	r3, [r7, #156]
	cmp	r3, #0
	beq	.L1415
	mov	r6, r7
	mov	r5, r7
	mov	r4, #0
.LVL1175:
.L1416:
.LBB7911:
.LBB7912:
	.loc 21 1293 0
	lsr	r3, r3, r4
	tst	r3, #1
	beq	.L1417
	.loc 21 1294 0
	uxth	r0, r4
.LVL1176:
.LBB7913:
.LBB7914:
	.loc 21 322 0
	ldr	r2, [r5, #80]
.LVL1177:
.LBE7914:
.LBE7913:
.LBB7915:
.LBB7916:
	.loc 21 304 0
	sub	r3, r0, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L1418
.L1420:
	.word	.L1419
	.word	.L1421
	.word	.L1422
	.word	.L1423
	.word	.L1424
.LVL1178:
.L1417:
.LBE7916:
.LBE7915:
	.loc 21 1300 0
	uxth	r8, r4
	mov	r0, r8
	bl	readBcrCp
.LVL1179:
	bic	r1, r0, #1
	mov	r0, r8
	bl	writeBcrCp
.LVL1180:
.L1427:
	.loc 21 1292 0
	add	r4, r4, #1
.LVL1181:
	add	r5, r5, #8
	cmp	r4, #6
	beq	.L1437
	ldr	r3, [r7, #156]
	b	.L1416
.L1437:
	mov	r4, #0
.LVL1182:
.L1428:
	.loc 21 1305 0
	ldr	r3, [r7, #156]
	add	r2, r4, #6
	lsr	r3, r3, r2
	tst	r3, #1
	beq	.L1429
	.loc 21 1307 0
	uxth	r0, r4
.LVL1183:
.LBB7926:
.LBB7927:
	.loc 21 336 0
	ldr	r3, [r6, #128]
.LVL1184:
.LBE7927:
.LBE7926:
.LBB7928:
.LBB7929:
	.loc 21 306 0
	cmp	r0, #2
	beq	.L1431
	cmp	r0, #3
	beq	.L1432
	cmp	r0, #1
	beq	.L1442
	.loc 21 321 0
	cmp	r4, #0
	bne	.L1443
.LVL1185:
.LBB7930:
	.loc 21 322 0
	.syntax divided
@ 322 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r3, c0, c0, 6
@ 0 "" 2
.LVL1186:
	.arm
	.syntax unified
.L1434:
.LBE7930:
.LBE7929:
.LBE7928:
	.loc 21 1308 0
	ldr	r1, [r6, #124]
	.loc 21 1304 0
	add	r4, r4, #1
.LVL1187:
	add	r6, r6, #8
	.loc 21 1308 0
	bl	writeWcrCp
.LVL1188:
	.loc 21 1304 0
	cmp	r4, #4
	bne	.L1428
.L1444:
.LBE7912:
.LBE7911:
	.loc 21 1337 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL1189:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1190:
.L1429:
	.cfi_restore_state
.LBB7944:
.LBB7941:
	.loc 21 1310 0
	uxth	r5, r4
	.loc 21 1304 0
	add	r4, r4, #1
.LVL1191:
	add	r6, r6, #8
	.loc 21 1310 0
	mov	r0, r5
	bl	readWcrCp
.LVL1192:
	bic	r1, r0, #1
	mov	r0, r5
	bl	writeWcrCp
.LVL1193:
	.loc 21 1304 0
	cmp	r4, #4
	bne	.L1428
	b	.L1444
.LVL1194:
.L1415:
.LBE7941:
.LBE7944:
	.loc 21 1337 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	ldr	lr, [sp, #20]
	.cfi_restore 14
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	.loc 21 1325 0
	b	loadAllDisabledBreakpointState
.LVL1195:
.L1424:
	.cfi_restore_state
.LBB7945:
.LBB7942:
.LBB7936:
.LBB7923:
.LBB7917:
	.loc 21 308 0
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c5, 4
@ 0 "" 2
.LVL1196:
	.arm
	.syntax unified
.L1425:
.LBE7917:
.LBE7923:
.LBE7936:
	.loc 21 1295 0
	ldr	r1, [r5, #76]
	bl	writeBcrCp
.LVL1197:
	b	.L1427
.LVL1198:
.L1419:
.LBB7937:
.LBB7924:
.LBB7918:
	.loc 21 304 0
	.syntax divided
@ 304 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c1, 4
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1425
.LVL1199:
.L1421:
.LBE7918:
.LBB7919:
	.loc 21 305 0
	.syntax divided
@ 305 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c2, 4
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1425
.LVL1200:
.L1422:
.LBE7919:
.LBB7920:
	.loc 21 306 0
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c3, 4
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1425
.LVL1201:
.L1423:
.LBE7920:
.LBB7921:
	.loc 21 307 0
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c4, 4
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1425
.LVL1202:
.L1418:
.LBE7921:
	.loc 21 319 0
	cmp	r4, #0
	bne	.L1445
.LVL1203:
.LBB7922:
	.loc 21 320 0
	.syntax divided
@ 320 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r2, c0, c0, 4
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1425
.LVL1204:
.L1431:
.LBE7922:
.LBE7924:
.LBE7937:
.LBB7938:
.LBB7934:
.LBB7931:
	.loc 21 307 0
	.syntax divided
@ 307 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r3, c0, c2, 6
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1434
.LVL1205:
.L1432:
.LBE7931:
.LBB7932:
	.loc 21 308 0
	.syntax divided
@ 308 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r3, c0, c3, 6
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1434
.LVL1206:
.L1442:
.LBE7932:
.LBB7933:
	.loc 21 306 0
	.syntax divided
@ 306 "/home/sel4/work/work2/kernel/src/arch/arm/machine/debug.c" 1
	mcr  p14, 0, r3, c0, c1, 6
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1434
.LVL1207:
.L1441:
.LBE7933:
.LBE7934:
.LBE7938:
.LBE7942:
.LBE7945:
.LBB7946:
.LBB7947:
	.loc 21 1322 0
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC90
.LVL1208:
	ldr	r3, .L1446
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC90
	movw	r2, #1322
	bl	_assert_fail
.LVL1209:
.L1445:
.LBE7947:
.LBE7946:
.LBB7948:
.LBB7943:
.LBB7939:
.LBB7925:
	.loc 21 319 0
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC87
.LVL1210:
	ldr	r3, .L1446+4
.LVL1211:
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	mov	r2, #304
.LVL1212:
	bl	_assert_fail
.LVL1213:
.L1443:
.LBE7925:
.LBE7939:
.LBB7940:
.LBB7935:
	.loc 21 321 0
	movw	r1, #:lower16:.LC86
	movw	r0, #:lower16:.LC87
.LVL1214:
	ldr	r3, .L1446+8
.LVL1215:
	movt	r1, #:upper16:.LC86
	movt	r0, #:upper16:.LC87
	movw	r2, #306
	bl	_assert_fail
.LVL1216:
.L1447:
	.align	2
.L1446:
	.word	.LANCHOR3+2796
	.word	.LANCHOR3+2824
	.word	.LANCHOR3+2836
.LBE7935:
.LBE7940:
.LBE7943:
.LBE7948:
	.cfi_endproc
.LFE573:
	.size	restore_user_debug_context, .-restore_user_debug_context
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_enable, %function
vcpu_enable:
.LFB627:
	.loc 25 403 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1217:
.LBB7949:
.LBB7950:
	.loc 18 134 0
	ldr	r3, [r0, #4]
	.syntax divided
@ 134 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 0, r3, c1, c0, 0
@ 0 "" 2
.LVL1218:
	.arm
	.syntax unified
.LBE7950:
.LBE7949:
.LBB7951:
.LBB7952:
.LBB7953:
.LBB7954:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7954:
.LBE7953:
	.loc 18 61 0
	movw	r3, #28729
	movt	r3, 8
	.syntax divided
@ 61 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr p15, 4, r3, c1, c1, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB7955:
.LBB7956:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1219:
	.arm
	.syntax unified
.LBE7956:
.LBE7955:
.LBE7952:
.LBE7951:
.LBB7957:
.LBB7958:
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7958:
.LBE7957:
	.loc 25 409 0
	ldr	r2, [r0, #12]
.LVL1220:
.LBB7959:
.LBB7960:
	.loc 25 336 0
	movw	r3, #24831
	movt	r3, 65520
.LBE7960:
.LBE7959:
	.loc 25 425 0
	ldr	r0, [r0]
.LVL1221:
.LBB7962:
.LBB7961:
	.loc 25 336 0
	str	r2, [r3, #-255]
.LVL1222:
.LBE7961:
.LBE7962:
	.loc 25 425 0
	b	restore_user_debug_context
.LVL1223:
	.cfi_endproc
.LFE627:
	.size	vcpu_enable, .-vcpu_enable
	.align	2
	.global	vcpu_restore
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_restore, %function
vcpu_restore:
.LFB633:
	.loc 25 762 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1224:
	.loc 25 763 0
	cmp	r0, #0
	.loc 25 762 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 25 763 0
	beq	.L1456
.LVL1225:
.LBB7963:
.LBB7964:
	.loc 25 336 0
	movw	lr, #24831
	mov	r3, #0
	movt	lr, 65520
	str	r3, [lr, #-255]
.LVL1226:
.LBE7964:
.LBE7963:
.LBB7965:
.LBB7966:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE7966:
.LBE7965:
	.loc 25 771 0
	ldr	r1, [r0, #16]
.LVL1227:
	.loc 25 773 0
	movw	r2, #:lower16:.LANCHOR4
	movt	r2, #:upper16:.LANCHOR4
.LBB7967:
.LBB7968:
	.loc 25 348 0
	str	r1, [lr, #-247]
.LVL1228:
.LBE7968:
.LBE7967:
	.loc 25 772 0
	ldr	r1, [r0, #20]
.LVL1229:
.LBB7969:
.LBB7970:
	.loc 25 360 0
	str	r1, [lr, #-15]
.LVL1230:
.LBE7970:
.LBE7969:
	.loc 25 773 0
	ldr	r4, [r2]
.LVL1231:
	.loc 25 774 0
	cmp	r4, r3
	addne	r1, r0, #20
	beq	.L1453
.LVL1232:
.L1452:
.LBB7971:
.LBB7972:
	.loc 25 398 0 discriminator 3
	add	r2, r3, #64
	ldr	ip, [r1, #4]!
.LVL1233:
.LBE7972:
.LBE7971:
	.loc 25 774 0 discriminator 3
	add	r3, r3, #1
.LVL1234:
.LBB7975:
.LBB7973:
	.loc 25 398 0 discriminator 3
	add	r2, lr, r2, lsl #2
.LBE7973:
.LBE7975:
	.loc 25 774 0 discriminator 3
	cmp	r4, r3
.LBB7976:
.LBB7974:
	.loc 25 398 0 discriminator 3
	str	ip, [r2, #-255]
.LVL1235:
.LBE7974:
.LBE7976:
	.loc 25 774 0 discriminator 3
	bne	.L1452
.LVL1236:
.L1453:
.LBB7977:
.LBB7978:
	.loc 25 128 0
	ldr	r3, [r0, #280]
	.syntax divided
@ 128 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_svc, r3
@ 0 "" 2
.LVL1237:
	.arm
	.syntax unified
.LBE7978:
.LBE7977:
.LBB7979:
.LBB7980:
	.loc 25 142 0
	ldr	r3, [r0, #284]
	.syntax divided
@ 142 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_svc, r3
@ 0 "" 2
.LVL1238:
	.arm
	.syntax unified
.LBE7980:
.LBE7979:
.LBB7981:
.LBB7982:
	.loc 25 156 0
	ldr	r3, [r0, #288]
	.syntax divided
@ 156 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_abt, r3
@ 0 "" 2
.LVL1239:
	.arm
	.syntax unified
.LBE7982:
.LBE7981:
.LBB7983:
.LBB7984:
	.loc 25 170 0
	ldr	r3, [r0, #292]
	.syntax divided
@ 170 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_abt, r3
@ 0 "" 2
.LVL1240:
	.arm
	.syntax unified
.LBE7984:
.LBE7983:
.LBB7985:
.LBB7986:
	.loc 25 184 0
	ldr	r3, [r0, #296]
	.syntax divided
@ 184 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_und, r3
@ 0 "" 2
.LVL1241:
	.arm
	.syntax unified
.LBE7986:
.LBE7985:
.LBB7987:
.LBB7988:
	.loc 25 198 0
	ldr	r3, [r0, #300]
	.syntax divided
@ 198 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_und, r3
@ 0 "" 2
.LVL1242:
	.arm
	.syntax unified
.LBE7988:
.LBE7987:
.LBB7989:
.LBB7990:
	.loc 25 212 0
	ldr	r3, [r0, #304]
	.syntax divided
@ 212 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_irq, r3
@ 0 "" 2
.LVL1243:
	.arm
	.syntax unified
.LBE7990:
.LBE7989:
.LBB7991:
.LBB7992:
	.loc 25 226 0
	ldr	r3, [r0, #308]
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_irq, r3
@ 0 "" 2
.LVL1244:
	.arm
	.syntax unified
.LBE7992:
.LBE7991:
.LBB7993:
.LBB7994:
	.loc 25 240 0
	ldr	r3, [r0, #312]
	.syntax divided
@ 240 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr lr_fiq, r3
@ 0 "" 2
.LVL1245:
	.arm
	.syntax unified
.LBE7994:
.LBE7993:
.LBB7995:
.LBB7996:
	.loc 25 254 0
	ldr	r3, [r0, #316]
	.syntax divided
@ 254 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr sp_fiq, r3
@ 0 "" 2
.LVL1246:
	.arm
	.syntax unified
.LBE7996:
.LBE7995:
.LBB7997:
.LBB7998:
	.loc 25 268 0
	ldr	r3, [r0, #320]
	.syntax divided
@ 268 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r8_fiq, r3
@ 0 "" 2
.LVL1247:
	.arm
	.syntax unified
.LBE7998:
.LBE7997:
.LBB7999:
.LBB8000:
	.loc 25 282 0
	ldr	r3, [r0, #324]
	.syntax divided
@ 282 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r9_fiq, r3
@ 0 "" 2
.LVL1248:
	.arm
	.syntax unified
.LBE8000:
.LBE7999:
.LBB8001:
.LBB8002:
	.loc 25 296 0
	ldr	r3, [r0, #328]
	.syntax divided
@ 296 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r10_fiq, r3
@ 0 "" 2
.LVL1249:
	.arm
	.syntax unified
.LBE8002:
.LBE8001:
.LBB8003:
.LBB8004:
	.loc 25 310 0
	ldr	r3, [r0, #332]
	.syntax divided
@ 310 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r11_fiq, r3
@ 0 "" 2
.LVL1250:
	.arm
	.syntax unified
.LBE8004:
.LBE8003:
.LBB8005:
.LBB8006:
	.loc 25 324 0
	ldr	r3, [r0, #336]
	.syntax divided
@ 324 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	msr r12_fiq, r3
@ 0 "" 2
.LVL1251:
	.arm
	.syntax unified
.LBE8006:
.LBE8005:
.LBB8007:
.LBB8008:
	.loc 17 387 0
	ldr	r3, [r0, #8]
	.syntax divided
@ 387 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c1, c0, 1
@ 0 "" 2
.LVL1252:
	.arm
	.syntax unified
.LBE8008:
.LBE8007:
	.loc 25 798 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL1253:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 25 797 0
	b	vcpu_enable
.LVL1254:
.L1456:
	.cfi_restore_state
	.loc 25 763 0 discriminator 1
	movw	r1, #:lower16:.LC32
	movw	r0, #:lower16:.LC91
.LVL1255:
	ldr	r3, .L1457
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC91
	movw	r2, #763
	bl	_assert_fail
.LVL1256:
.L1458:
	.align	2
.L1457:
	.word	.LANCHOR3+2848
	.cfi_endproc
.LFE633:
	.size	vcpu_restore, .-vcpu_restore
	.align	2
	.global	vcpu_switch
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_switch, %function
vcpu_switch:
.LFB636:
	.loc 25 870 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1257:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 25 871 0
	movw	r4, #:lower16:armHSCurVCPU
	movt	r4, #:upper16:armHSCurVCPU
	ldr	r3, [r4]
	.loc 25 870 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 25 871 0
	cmp	r3, r0
	beq	.L1460
	.loc 25 872 0
	cmp	r0, #0
	.loc 25 874 0
	movw	r5, #:lower16:armHSVCPUActive
	mov	r6, r0
	movt	r5, #:upper16:armHSVCPUActive
	.loc 25 872 0
	bne	.L1482
	.loc 25 879 0
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L1483
.LVL1258:
.L1459:
	.loc 25 892 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1259:
.L1460:
	.cfi_restore_state
	.loc 25 887 0
	movw	r4, #:lower16:armHSVCPUActive
.LBB8061:
.LBB8062:
	cmp	r3, #0
.LBE8062:
.LBE8061:
	movt	r4, #:upper16:armHSVCPUActive
	ldr	r2, [r4]
.LBB8066:
.LBB8065:
	clz	r2, r2
	lsr	r2, r2, #5
	moveq	r2, #0
	cmp	r2, #0
	beq	.L1459
.LBB8063:
.LBB8064:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8064:
.LBE8063:
	.loc 25 889 0
	bl	vcpu_enable
.LVL1260:
	.loc 25 890 0
	mov	r3, #1
	str	r3, [r4]
.LBE8065:
.LBE8066:
	.loc 25 892 0
	b	.L1459
.LVL1261:
.L1482:
	.loc 25 873 0
	cmp	r3, #0
	bne	.L1484
.LVL1262:
.L1462:
	.loc 25 876 0
	mov	r0, r6
	bl	vcpu_restore
.LVL1263:
	.loc 25 878 0
	mov	r3, #1
	.loc 25 877 0
	str	r6, [r4]
	.loc 25 878 0
	str	r3, [r5]
	b	.L1459
.LVL1264:
.L1483:
	.loc 25 882 0
	ldr	r0, [r3]
.LVL1265:
	bl	saveAllBreakpointState
.LVL1266:
	.loc 25 884 0
	ldr	r0, [r4]
	bl	vcpu_disable
.LVL1267:
	.loc 25 885 0
	str	r6, [r5]
	b	.L1459
.LVL1268:
.L1484:
	.loc 25 874 0
	ldr	r2, [r5]
.LVL1269:
.LBB8067:
.LBB8068:
.LBB8069:
.LBB8070:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8070:
.LBE8069:
	.loc 25 516 0
	cmp	r2, #0
	beq	.L1463
.LBB8071:
.LBB8072:
	.loc 18 128 0
	.syntax divided
@ 128 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 0, r2, c1, c0, 0
@ 0 "" 2
.LVL1270:
	.arm
	.syntax unified
.LBE8072:
.LBE8071:
.LBB8073:
.LBB8074:
	.loc 25 330 0
	movw	r1, #24831
.LBE8074:
.LBE8073:
	.loc 25 517 0
	str	r2, [r3, #4]
.LBB8076:
.LBB8075:
	.loc 25 330 0
	movt	r1, 65520
	ldr	r2, [r1, #-255]
.LBE8075:
.LBE8076:
	.loc 25 518 0
	str	r2, [r3, #12]
.L1463:
.LBB8077:
.LBB8078:
	.loc 17 381 0
	.syntax divided
@ 381 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mrc p15, 0, r2, c1, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBE8078:
.LBE8077:
.LBB8079:
.LBB8080:
	.loc 25 342 0
	movw	ip, #24831
.LBE8080:
.LBE8079:
	.loc 25 521 0
	str	r2, [r3, #8]
	.loc 25 526 0
	movw	r2, #:lower16:.LANCHOR4
.LBB8083:
.LBB8081:
	.loc 25 342 0
	movt	ip, 65520
.LBE8081:
.LBE8083:
	.loc 25 526 0
	movt	r2, #:upper16:.LANCHOR4
.LBB8084:
.LBB8082:
	.loc 25 342 0
	ldr	r1, [ip, #-247]
.LBE8082:
.LBE8084:
	.loc 25 526 0
	ldr	lr, [r2]
.LVL1271:
	.loc 25 524 0
	str	r1, [r3, #16]
.LBB8085:
.LBB8086:
	.loc 25 354 0
	ldr	r2, [ip, #-15]
.LBE8086:
.LBE8085:
	.loc 25 527 0
	cmp	lr, #0
	addne	r0, r3, #20
.LVL1272:
	.loc 25 525 0
	str	r2, [r3, #20]
	.loc 25 527 0
	movne	r2, #0
	beq	.L1466
.LVL1273:
.L1465:
.LBB8087:
.LBB8088:
	.loc 25 391 0
	add	r1, r2, #64
.LBE8088:
.LBE8087:
	.loc 25 527 0
	add	r2, r2, #1
.LVL1274:
.LBB8091:
.LBB8089:
	.loc 25 391 0
	add	r1, ip, r1, lsl #2
.LBE8089:
.LBE8091:
	.loc 25 527 0
	cmp	lr, r2
.LBB8092:
.LBB8090:
	.loc 25 391 0
	ldr	r1, [r1, #-255]
.LVL1275:
.LBE8090:
.LBE8092:
	.loc 25 528 0
	str	r1, [r0, #4]!
	.loc 25 527 0
	bne	.L1465
.LVL1276:
.L1466:
.LBB8093:
.LBB8094:
	.loc 25 121 0
	.syntax divided
@ 121 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_svc
@ 0 "" 2
	.arm
	.syntax unified
.LBE8094:
.LBE8093:
.LBB8095:
.LBB8096:
	.loc 25 135 0
	.syntax divided
@ 135 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, sp_svc
@ 0 "" 2
	.arm
	.syntax unified
.LBE8096:
.LBE8095:
	.loc 25 532 0
	str	r1, [r3, #280]
	.loc 25 552 0
	ldr	r0, [r3]
	.loc 25 533 0
	str	r2, [r3, #284]
.LBB8097:
.LBB8098:
	.loc 25 149 0
	.syntax divided
@ 149 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_abt
@ 0 "" 2
	.arm
	.syntax unified
.LBE8098:
.LBE8097:
.LBB8099:
.LBB8100:
	.loc 25 163 0
	.syntax divided
@ 163 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, sp_abt
@ 0 "" 2
	.arm
	.syntax unified
.LBE8100:
.LBE8099:
	.loc 25 534 0
	str	r1, [r3, #288]
	.loc 25 535 0
	str	r2, [r3, #292]
.LBB8101:
.LBB8102:
	.loc 25 177 0
	.syntax divided
@ 177 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_und
@ 0 "" 2
	.arm
	.syntax unified
.LBE8102:
.LBE8101:
.LBB8103:
.LBB8104:
	.loc 25 191 0
	.syntax divided
@ 191 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, sp_und
@ 0 "" 2
	.arm
	.syntax unified
.LBE8104:
.LBE8103:
	.loc 25 536 0
	str	r1, [r3, #296]
	.loc 25 537 0
	str	r2, [r3, #300]
.LBB8105:
.LBB8106:
	.loc 25 205 0
	.syntax divided
@ 205 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_irq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8106:
.LBE8105:
.LBB8107:
.LBB8108:
	.loc 25 219 0
	.syntax divided
@ 219 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, sp_irq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8108:
.LBE8107:
	.loc 25 538 0
	str	r1, [r3, #304]
	.loc 25 539 0
	str	r2, [r3, #308]
.LBB8109:
.LBB8110:
	.loc 25 233 0
	.syntax divided
@ 233 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8110:
.LBE8109:
.LBB8111:
.LBB8112:
	.loc 25 247 0
	.syntax divided
@ 247 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, sp_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8112:
.LBE8111:
	.loc 25 540 0
	str	r1, [r3, #312]
	.loc 25 541 0
	str	r2, [r3, #316]
.LBB8113:
.LBB8114:
	.loc 25 261 0
	.syntax divided
@ 261 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r8_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8114:
.LBE8113:
.LBB8115:
.LBB8116:
	.loc 25 275 0
	.syntax divided
@ 275 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, r9_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8116:
.LBE8115:
	.loc 25 542 0
	str	r1, [r3, #320]
	.loc 25 543 0
	str	r2, [r3, #324]
.LBB8117:
.LBB8118:
	.loc 25 289 0
	.syntax divided
@ 289 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r10_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8118:
.LBE8117:
.LBB8119:
.LBB8120:
	.loc 25 303 0
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, r11_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8120:
.LBE8119:
	.loc 25 544 0
	str	r1, [r3, #328]
	.loc 25 545 0
	str	r2, [r3, #332]
.LBB8121:
.LBB8122:
	.loc 25 317 0
	.syntax divided
@ 317 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r2, r12_fiq
@ 0 "" 2
	.arm
	.syntax unified
.LBE8122:
.LBE8121:
	.loc 25 546 0
	str	r2, [r3, #336]
	.loc 25 552 0
	bl	saveAllBreakpointState
.LVL1277:
.LBB8123:
.LBB8124:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1462
.LBE8124:
.LBE8123:
.LBE8068:
.LBE8067:
	.cfi_endproc
.LFE636:
	.size	vcpu_switch, .-vcpu_switch
	.section	.boot.text
	.align	2
	.global	insert_region
	.syntax unified
	.arm
	.fpu softvfp
	.type	insert_region, %function
insert_region:
.LFB661:
	.loc 26 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 26 30 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldm	sp, {r1, r2}
.LVL1278:
	.loc 26 33 0
	cmp	r1, r2
	bhi	.L1493
.LVL1279:
	.loc 26 35 0
	moveq	r0, #1
	.loc 26 34 0
	beq	.L1485
.LVL1280:
	.loc 26 38 0 discriminator 1
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	cmp	ip, r0
	beq	.L1488
.LVL1281:
	.loc 26 38 0 is_stmt 0
	ldr	ip, [r3, #8]
	ldr	r0, [r3, #12]
	cmp	ip, r0
	.loc 26 43 0 is_stmt 1
	movne	r0, #0
	.loc 26 38 0
	beq	.L1494
.LVL1282:
.L1485:
	.loc 26 44 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1283:
.L1494:
	.cfi_restore_state
	.loc 26 38 0
	add	r3, r3, #8
.LVL1284:
.L1488:
	.loc 26 40 0
	mov	r0, #1
	.loc 26 39 0
	stm	r3, {r1, r2}
	.loc 26 40 0
	b	.L1485
.LVL1285:
.L1493:
.LBB8131:
.LBB8132:
	.loc 26 33 0
	movw	r1, #:lower16:.LC92
	movw	r0, #:lower16:.LC93
	ldr	r3, .L1495
	movt	r1, #:upper16:.LC92
	movt	r0, #:upper16:.LC93
	mov	r2, #33
.LVL1286:
	bl	_assert_fail
.LVL1287:
.L1496:
	.align	2
.L1495:
	.word	.LANCHOR3+2864
.LBE8132:
.LBE8131:
	.cfi_endproc
.LFE661:
	.size	insert_region, .-insert_region
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	insert_region_excluded, %function
insert_region_excluded:
.LFB531:
	.file 44 "/home/sel4/work/work2/kernel/src/arch/arm/kernel/boot.c"
	.loc 44 48 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1288:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 44 52 0
	cmp	r3, r1
	.loc 44 48 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	mov	r5, r2
	str	r6, [sp, #8]
	mov	r6, r0
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	mov	lr, r3
	ldr	r4, [sp, #32]
	.loc 44 48 0
	stm	sp, {r1, r2}
	str	r3, [sp, #28]
.LVL1289:
	.loc 44 52 0
	bcs	.L1498
.LVL1290:
	cmp	r4, r1
	movcc	r4, r1
.LVL1291:
.L1499:
	cmp	r4, r5
	movcs	r4, r5
.L1502:
.LVL1292:
	.loc 44 80 0
	mov	r0, r6
	.loc 44 79 0
	strd	r4, [r6]
.LVL1293:
	.loc 44 80 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL1294:
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL1295:
	bx	lr
.LVL1296:
.L1498:
	.cfi_restore_state
	.loc 44 60 0
	cmp	lr, r2
	mov	ip, sp
	bcs	.L1500
.LVL1297:
	.loc 44 70 0
	cmp	lr, r1
	bls	.L1499
.LVL1298:
.L1501:
	.loc 44 71 0
	str	lr, [sp, #4]
	ldm	ip, {r0, r1}
.LVL1299:
	bl	insert_region
.LVL1300:
	.loc 44 72 0
	cmp	r0, #0
	bne	.L1499
.LBB8135:
.LBB8136:
	movw	r1, #:lower16:.LC94
	movw	r0, #:lower16:.LC95
.LVL1301:
	ldr	r3, .L1507
	movt	r1, #:upper16:.LC94
	movt	r0, #:upper16:.LC95
	mov	r2, #72
	bl	_assert_fail
.LVL1302:
.L1500:
.LBE8136:
.LBE8135:
	.loc 44 70 0
	cmp	r2, r1
	bls	.L1506
	mov	lr, r5
	.loc 44 67 0
	mov	r5, #0
	.loc 44 66 0
	mov	r4, r5
.LVL1303:
	b	.L1501
.LVL1304:
.L1506:
	.loc 44 67 0
	mov	r5, #0
	.loc 44 66 0
	mov	r4, r5
.LVL1305:
	b	.L1502
.L1508:
	.align	2
.L1507:
	.word	.LANCHOR3+2880
	.cfi_endproc
.LFE531:
	.size	insert_region_excluded, .-insert_region_excluded
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_cnode_cap_new.part.234, %function
cap_cnode_cap_new.part.234:
.LFB1109:
	.loc 36 1349 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1306:
	.loc 36 1353 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC96
	ldr	r3, .L1511
	.loc 36 1349 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1353 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC96
	movw	r2, #1353
	bl	_assert_fail
.LVL1307:
.L1512:
	.align	2
.L1511:
	.word	.LANCHOR3+2904
	.cfi_endproc
.LFE1109:
	.size	cap_cnode_cap_new.part.234, .-cap_cnode_cap_new.part.234
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_thread_cap_new.part.236, %function
cap_thread_cap_new.part.236:
.LFB1111:
	.loc 36 1451 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1308:
	.loc 36 1455 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC97
	ldr	r3, .L1515
	.loc 36 1451 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1455 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC97
	movw	r2, #1455
	bl	_assert_fail
.LVL1309:
.L1516:
	.align	2
.L1515:
	.word	.LANCHOR3+2924
	.cfi_endproc
.LFE1111:
	.size	cap_thread_cap_new.part.236, .-cap_thread_cap_new.part.236
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_untyped_cap_new.part.237, %function
cap_untyped_cap_new.part.237:
.LFB1112:
	.loc 36 930 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1310:
	.loc 36 934 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC98
	ldr	r3, .L1519
	.loc 36 930 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 934 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC98
	movw	r2, #934
	bl	_assert_fail
.LVL1311:
.L1520:
	.align	2
.L1519:
	.word	.LANCHOR3+2944
	.cfi_endproc
.LFE1112:
	.size	cap_untyped_cap_new.part.237, .-cap_untyped_cap_new.part.237
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookup_fault_depth_mismatch_new.part.238, %function
lookup_fault_depth_mismatch_new.part.238:
.LFB1113:
	.loc 36 578 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1312:
	.loc 36 582 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC99
	ldr	r3, .L1523
	.loc 36 578 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 582 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC99
	movw	r2, #582
	bl	_assert_fail
.LVL1313:
.L1524:
	.align	2
.L1523:
	.word	.LANCHOR3+2964
	.cfi_endproc
.LFE1113:
	.size	lookup_fault_depth_mismatch_new.part.238, .-lookup_fault_depth_mismatch_new.part.238
	.text
	.align	2
	.global	resolveAddressBits
	.syntax unified
	.arm
	.fpu softvfp
	.type	resolveAddressBits, %function
resolveAddressBits:
.LFB690:
	.file 45 "/home/sel4/work/work2/kernel/src/kernel/cspace.c"
	.loc 45 139 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1314:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	lr, [sp, #24]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 45 139 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldm	sp, {r4, ip}
.LVL1315:
.LBB8153:
.LBB8154:
	.loc 36 903 0
	and	r2, r4, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r4
.LVL1316:
	.loc 36 904 0
	andne	r2, r4, #15
.LBE8154:
.LBE8153:
	.loc 45 148 0
	cmp	r2, #10
	bne	.L1542
	ldr	r1, [sp, #40]
	mov	r6, r0
	.loc 45 168 0
	mvn	r8, #0
.LVL1317:
.L1538:
.LBB8155:
.LBB8156:
	.loc 36 1399 0
	and	r2, r4, #15
	cmp	r2, #10
	bne	.L1543
	.loc 36 1402 0
	ubfx	r7, ip, #18, #5
.LVL1318:
.LBE8156:
.LBE8155:
.LBB8158:
.LBB8159:
	.loc 36 1376 0
	ubfx	lr, ip, #23, #5
.LVL1319:
.LBE8159:
.LBE8158:
	.loc 45 160 0
	adds	r5, lr, r7
.LVL1320:
	beq	.L1544
.LVL1321:
	.loc 45 168 0
	sub	r9, r1, lr
	mvn	r2, r8, lsl lr
	and	r9, r9, #31
.LBB8160:
.LBB8161:
	.loc 36 1416 0
	ubfx	ip, ip, #0, #18
.LVL1322:
.LBE8161:
.LBE8160:
	.loc 45 168 0
	and	r2, r2, r3, lsr r9
	.loc 45 169 0
	cmp	r1, lr
	cmpcs	r2, ip
	movne	r2, #1
	moveq	r2, #0
	bne	.L1545
	.loc 45 176 0
	cmp	r1, r5
	bcc	.L1546
	.loc 45 183 0
	sub	r5, r1, r5
.LVL1323:
.LBB8162:
.LBB8163:
	.loc 36 1442 0
	bic	r4, r4, #31
.LVL1324:
.LBE8163:
.LBE8162:
	.loc 45 183 0
	lsr	ip, r3, r5
	bic	r7, ip, r8, lsl r7
.LVL1325:
	.loc 45 184 0
	add	lr, r4, r7, lsl #4
.LVL1326:
	.loc 45 186 0
	bhi	.L1535
.LVL1327:
	.loc 45 190 0
	stm	r6, {r2, lr}
	str	r2, [r6, #8]
.LVL1328:
.L1525:
	.loc 45 208 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1329:
.L1542:
	.cfi_restore_state
	.loc 45 151 0
	ldr	r1, [sp, #40]
	.loc 45 149 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1330:
	mov	r2, #0
	movt	r3, #:upper16:current_lookup_fault
	.loc 45 151 0
	str	r2, [r0, #4]
	.loc 45 149 0
	str	r2, [r3]
	.loc 45 151 0
	str	r1, [r0, #8]
	mov	r1, #2
	.loc 45 149 0
	str	r2, [r3, #4]
.LVL1331:
	.loc 45 151 0
	str	r1, [r0]
	b	.L1525
.LVL1332:
.L1545:
.LBB8164:
.LBB8165:
	.loc 36 628 0
	bics	r2, r1, #63
	bne	.L1547
.LVL1333:
.LBE8165:
.LBE8164:
	.loc 45 173 0
	str	r2, [r6, #4]
	ldr	r2, [sp, #40]
.LBB8171:
.LBB8166:
	.loc 36 633 0
	lsl	r1, r1, #8
.LVL1334:
.LBE8166:
.LBE8171:
	.loc 45 170 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1335:
.LBB8172:
.LBB8167:
	.loc 36 633 0
	and	r1, r1, #16128
.LBE8167:
.LBE8172:
	.loc 45 170 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 45 173 0
	str	r2, [r6, #8]
	mov	r2, #2
.LBB8173:
.LBB8168:
	.loc 36 635 0
	orr	lr, r1, lr, lsl r2
.LBE8168:
.LBE8173:
	.loc 45 170 0
	str	ip, [r3, #4]
.LVL1336:
	.loc 45 173 0
	str	r2, [r6]
.LBB8174:
.LBB8169:
	.loc 36 635 0
	orr	lr, lr, #3
.LBE8169:
.LBE8174:
	.loc 45 170 0
	str	lr, [r3]
	.loc 45 173 0
	b	.L1525
.LVL1337:
.L1546:
	.loc 45 180 0
	ldr	r3, [sp, #40]
.LVL1338:
.LBB8175:
.LBB8176:
	.loc 36 588 0
	lsl	r1, r1, #2
.LVL1339:
	.loc 36 587 0
	lsl	r5, r5, #8
.LVL1340:
	.loc 36 589 0
	orr	r1, r1, #2
	.loc 36 587 0
	and	r5, r5, #16128
	.loc 36 589 0
	orr	r1, r1, r5
.LBE8176:
.LBE8175:
	.loc 45 180 0
	mov	ip, #2
	strd	r2, [r6, #4]
	.loc 45 177 0
	movw	r3, #:lower16:current_lookup_fault
	movt	r3, #:upper16:current_lookup_fault
	.loc 45 180 0
	str	ip, [r6]
	.loc 45 177 0
	stm	r3, {r1, r2}
.LVL1341:
	.loc 45 180 0
	b	.L1525
.LVL1342:
.L1535:
	.loc 45 196 0
	ldr	r4, [r4, r7, lsl #4]
.LVL1343:
	.loc 45 183 0
	mov	r1, r5
	.loc 45 196 0
	ldr	ip, [lr, #4]
.LVL1344:
.LBB8177:
.LBB8178:
	.loc 36 903 0
	and	r2, r4, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r4
.LVL1345:
	.loc 36 904 0
	andne	r2, r4, #15
.LBE8178:
.LBE8177:
	.loc 45 198 0
	cmp	r2, #10
	beq	.L1538
.LVL1346:
	.loc 45 202 0
	mov	r3, #0
.LVL1347:
	stm	r6, {r3, lr}
	str	r5, [r6, #8]
.LVL1348:
	b	.L1525
.LVL1349:
.L1544:
	.loc 45 160 0 discriminator 1
	movw	r1, #:lower16:.LC100
.LVL1350:
	movw	r0, #:lower16:.LC101
.LVL1351:
	ldr	r3, .L1548
.LVL1352:
	movt	r1, #:upper16:.LC100
	movt	r0, #:upper16:.LC101
	mov	r2, #160
	bl	_assert_fail
.LVL1353:
.L1543:
.LBB8179:
.LBB8157:
	bl	cap_cnode_cap_get_capCNodeRadix.part.100
.LVL1354:
.L1547:
.LBE8157:
.LBE8179:
.LBB8180:
.LBB8170:
	.loc 36 628 0
	movw	r1, #:lower16:.LC37
.LVL1355:
	movw	r0, #:lower16:.LC46
.LVL1356:
	ldr	r3, .L1548+4
.LVL1357:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC46
	mov	r2, #628
	bl	_assert_fail
.LVL1358:
.L1549:
	.align	2
.L1548:
	.word	.LANCHOR3+2996
	.word	.LANCHOR3+3016
.LBE8170:
.LBE8180:
	.cfi_endproc
.LFE690:
	.size	resolveAddressBits, .-resolveAddressBits
	.align	2
	.global	lookupSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupSlot, %function
lookupSlot:
.LFB685:
	.loc 45 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1359:
	.loc 45 64 0
	bic	r1, r1, #1020
.LVL1360:
	.loc 45 59 0
	str	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 45 65 0
	mov	r3, r2
	.loc 45 64 0
	bic	r1, r1, #3
	.loc 45 59 0
	strd	r6, [sp, #4]
	mov	r4, r0
	.loc 45 64 0
	ldrd	r6, [r1]
	.loc 45 59 0
	str	lr, [sp, #12]
	sub	sp, sp, #32
	.cfi_def_cfa_offset 48
	.loc 45 65 0
	mov	lr, #32
	.loc 45 64 0
	add	ip, sp, #12
	.loc 45 65 0
	add	r0, sp, #20
.LVL1361:
	str	lr, [sp]
	.loc 45 64 0
	strd	r6, [sp, #12]
	.loc 45 65 0
	ldm	ip, {r1, r2}
.LVL1362:
	bl	resolveAddressBits
.LVL1363:
	.loc 45 68 0
	ldrd	r2, [sp, #20]
.LVL1364:
	.loc 45 70 0
	mov	r0, r4
	.loc 45 69 0
	strd	r2, [r4]
.LVL1365:
	.loc 45 70 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 16
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1366:
	ldrd	r6, [sp, #4]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE685:
	.size	lookupSlot, .-lookupSlot
	.align	2
	.global	lookupCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupCap, %function
lookupCap:
.LFB683:
	.loc 45 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1367:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 45 25 0
	mov	r0, sp
.LVL1368:
	bl	lookupSlot
.LVL1369:
	ldr	r3, [sp]
.LVL1370:
	.loc 45 26 0
	cmp	r3, #0
	.loc 45 29 0
	movne	r2, #0
	strne	r3, [r4]
	strne	r2, [r4, #4]
	strne	r2, [r4, #8]
	.loc 45 26 0
	bne	.L1552
.LVL1371:
	.loc 45 33 0
	ldr	r2, [sp, #4]
	.loc 45 34 0
	str	r3, [r4]
	.loc 45 33 0
	ldr	r1, [r2]
.LVL1372:
	ldr	r3, [r2, #4]
.LVL1373:
	.loc 45 34 0
	str	r1, [r4, #4]
	str	r3, [r4, #8]
.LVL1374:
.L1552:
	.loc 45 35 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1375:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE683:
	.size	lookupCap, .-lookupCap
	.align	2
	.global	lookupCapAndSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupCapAndSlot, %function
lookupCapAndSlot:
.LFB684:
	.loc 45 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1376:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 45 43 0
	mov	r0, sp
.LVL1377:
	bl	lookupSlot
.LVL1378:
	ldrd	r2, [sp]
.LVL1379:
	.loc 45 44 0
	cmp	r2, #0
	bne	.L1560
.LVL1380:
	.loc 45 53 0
	ldr	r1, [r3]
.LVL1381:
	.loc 45 54 0
	str	r2, [r4]
	.loc 45 53 0
	ldr	r2, [r3, #4]
.LVL1382:
	.loc 45 54 0
	str	r1, [r4, #4]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
.L1556:
	.loc 45 55 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1383:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1384:
.L1560:
	.cfi_restore_state
	.loc 45 48 0
	mov	r3, #0
.LVL1385:
	strd	r2, [r4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	b	.L1556
	.cfi_endproc
.LFE684:
	.size	lookupCapAndSlot, .-lookupCapAndSlot
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	ready_queues_index.part.240, %function
ready_queues_index.part.240:
.LFB1115:
	.file 46 "/home/sel4/work/work2/kernel/include/kernel/thread.h"
	.loc 46 20 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1386:
	.loc 46 25 0
	movw	r1, #:lower16:.LC102
	movw	r0, #:lower16:.LC103
	ldr	r3, .L1563
	.loc 46 20 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 46 25 0
	movt	r1, #:upper16:.LC102
	movt	r0, #:upper16:.LC103
	mov	r2, #25
	bl	_assert_fail
.LVL1387:
.L1564:
	.align	2
.L1563:
	.word	.LANCHOR3+3048
	.cfi_endproc
.LFE1115:
	.size	ready_queues_index.part.240, .-ready_queues_index.part.240
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbSchedEnqueue.part.280, %function
tcbSchedEnqueue.part.280:
.LFB1155:
	.loc 27 78 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1388:
.LBB8181:
.LBB8182:
.LBB8183:
	.loc 46 25 0
	ldr	r3, [r0, #480]
.LBE8183:
.LBE8182:
.LBE8181:
	.loc 27 78 0
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB8200:
	.loc 27 87 0
	ldr	r2, [r0, #488]
.LVL1389:
.LBE8200:
	.loc 27 78 0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	r10, [sp, #24]
.LBB8201:
.LBB8187:
.LBB8184:
	.loc 46 25 0
	cmp	r3, #0
.LBE8184:
.LBE8187:
.LBE8201:
	.loc 27 78 0
	str	lr, [sp, #28]
.LBB8202:
.LBB8188:
.LBB8185:
	.loc 46 25 0
	bne	.L1570
.LVL1390:
.LBE8185:
.LBE8188:
	.loc 27 89 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	add	lr, r3, r2, lsl #3
	ldr	r4, [r3, r2, lsl #3]
.LVL1391:
	ldr	ip, [lr, #4]
.LVL1392:
	.loc 27 91 0
	cmp	ip, #0
	.loc 27 95 0
	strne	r0, [r4, #508]
	.loc 27 91 0
	beq	.L1571
.L1568:
.LBB8189:
.LBB8190:
	.loc 36 90 0
	ldr	r1, [r0, #452]
.LBE8190:
.LBE8189:
	.loc 27 97 0
	mov	r5, #0
	.loc 27 98 0
	str	r4, [r0, #504]
.LVL1393:
.LBE8202:
	.loc 27 105 0
	ldrd	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LBB8203:
	.loc 27 97 0
	str	r5, [r0, #508]
.LBE8203:
	.loc 27 105 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r10, [sp, #24]
	.cfi_restore 10
.LBB8204:
	.loc 27 101 0
	str	r0, [r3, r2, lsl #3]
.LBB8193:
.LBB8191:
	.loc 36 91 0
	orr	r3, r1, #1
.LBE8191:
.LBE8193:
.LBE8204:
	.loc 27 105 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
.LBB8205:
	.loc 27 101 0
	str	ip, [lr, #4]
.LVL1394:
.LBB8194:
.LBB8192:
	.loc 36 91 0
	str	r3, [r0, #452]
.LVL1395:
.LBE8192:
.LBE8194:
.LBE8205:
	.loc 27 105 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1396:
.L1571:
	.cfi_restore_state
.LBB8206:
.LBB8195:
.LBB8196:
.LBB8197:
.LBB8198:
	.loc 46 33 0
	lsr	r6, r2, #5
.LVL1397:
.LBE8198:
.LBE8197:
	.loc 27 60 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 27 61 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 27 60 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 27 61 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r8, [r1, r6, lsl #2]
	.loc 27 60 0
	mov	r10, #1
	.loc 27 61 0
	and	r7, r2, #31
	.loc 27 60 0
	ldr	r9, [r5]
	.loc 27 61 0
	mov	ip, r0
	orr	r7, r8, r10, lsl r7
	.loc 27 60 0
	orr	r9, r9, r10, lsl r6
	.loc 27 61 0
	str	r7, [r1, r6, lsl #2]
	.loc 27 60 0
	str	r9, [r5]
	b	.L1568
.LVL1398:
.L1570:
.LBE8196:
.LBE8195:
.LBB8199:
.LBB8186:
	bl	ready_queues_index.part.240
.LVL1399:
.LBE8186:
.LBE8199:
.LBE8206:
	.cfi_endproc
.LFE1155:
	.size	tcbSchedEnqueue.part.280, .-tcbSchedEnqueue.part.280
	.align	2
	.global	rescheduleRequired
	.syntax unified
	.arm
	.fpu softvfp
	.type	rescheduleRequired, %function
rescheduleRequired:
.LFB720:
	.loc 28 459 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 28 461 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	.loc 28 459 0
	str	lr, [sp, #4]
	.loc 28 461 0
	ldr	r0, [r4]
	sub	r3, r0, #1
	.loc 28 460 0
	cmn	r3, #3
	bhi	.L1573
.LVL1400:
.LBB8207:
.LBB8208:
.LBB8209:
.LBB8210:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE8210:
.LBE8209:
	.loc 27 80 0
	tst	r3, #1
	beq	.L1575
.LVL1401:
.L1573:
.LBE8208:
.LBE8207:
	.loc 28 464 0
	mvn	r3, #0
	str	r3, [r4]
	.loc 28 465 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1402:
.L1575:
	.cfi_restore_state
.LBB8212:
.LBB8211:
	bl	tcbSchedEnqueue.part.280
.LVL1403:
	b	.L1573
.LBE8211:
.LBE8212:
	.cfi_endproc
.LFE720:
	.size	rescheduleRequired, .-rescheduleRequired
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	scheduleTCB.part.281, %function
scheduleTCB.part.281:
.LFB1156:
	.loc 28 426 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1404:
.LBB8213:
.LBB8214:
.LBB8215:
.LBB8216:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
.LBE8216:
.LBE8215:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bls	.L1579
.LVL1405:
.LBE8214:
.LBE8213:
	.loc 28 431 0
	b	rescheduleRequired
.LVL1406:
.L1579:
	.loc 28 433 0
	bx	lr
	.cfi_endproc
.LFE1156:
	.size	scheduleTCB.part.281, .-scheduleTCB.part.281
	.align	2
	.global	scheduleTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	scheduleTCB, %function
scheduleTCB:
.LFB718:
	.loc 28 427 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1407:
	.loc 28 428 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L1582
.L1580:
	.loc 28 433 0
	bx	lr
.L1582:
	.loc 28 429 0 discriminator 1
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 428 0 discriminator 1
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1580
	b	scheduleTCB.part.281
.LVL1408:
	.cfi_endproc
.LFE718:
	.size	scheduleTCB, .-scheduleTCB
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	possibleSwitchTo, %function
possibleSwitchTo:
.LFB714:
	.loc 28 379 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1409:
	.loc 28 384 0
	movw	r3, #:lower16:ksCurDomain
	.loc 28 389 0
	ldr	ip, [r0, #480]
	.loc 28 379 0
	mov	r2, r0
.LVL1410:
	.loc 28 384 0
	movt	r3, #:upper16:ksCurDomain
	.loc 28 389 0
	ldr	r3, [r3]
	cmp	r3, ip
	beq	.L1584
.LVL1411:
.LBB8217:
.LBB8218:
.LBB8219:
.LBB8220:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE8220:
.LBE8219:
	.loc 27 80 0
	tst	r3, #1
	bxne	lr
	b	tcbSchedEnqueue.part.280
.LVL1412:
.L1584:
.LBE8218:
.LBE8217:
	.loc 28 385 0
	movw	r0, #:lower16:ksCurThread
.LVL1413:
	.loc 28 387 0
	ldr	ip, [r2, #488]
.LVL1414:
	.loc 28 388 0
	movw	r3, #:lower16:ksSchedulerAction
.LVL1415:
	.loc 28 385 0
	movt	r0, #:upper16:ksCurThread
	.loc 28 388 0
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 379 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 28 385 0
	ldr	r0, [r0]
	.loc 28 388 0
	ldr	r4, [r3]
	.loc 28 385 0
	ldr	r0, [r0, #488]
	.loc 28 379 0
	str	lr, [sp, #4]
	.loc 28 392 0
	cmp	r0, ip
	bcs	.L1597
.LVL1416:
.L1587:
	.loc 28 393 0
	cmp	r4, #0
	.loc 28 395 0
	streq	r2, [r3]
.LVL1417:
	.loc 28 393 0
	beq	.L1583
.L1588:
.LVL1418:
.LBB8221:
.LBB8222:
.LBB8223:
.LBB8224:
	.loc 36 78 0
	ldr	r3, [r2, #452]
.LBE8224:
.LBE8223:
	.loc 27 80 0
	tst	r3, #1
	beq	.L1598
.LVL1419:
.L1589:
.LBE8222:
.LBE8221:
	.loc 28 400 0
	sub	r4, r4, #1
	.loc 28 399 0
	cmn	r4, #3
	bls	.L1599
.LVL1420:
.L1583:
	.loc 28 404 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1421:
.L1597:
	.cfi_restore_state
	.loc 28 392 0 discriminator 1
	moveq	r0, #1
	movne	r0, #0
	cmp	r1, #0
	moveq	r1, #0
	andne	r1, r0, #1
.LVL1422:
	cmp	r1, #0
	beq	.L1588
	b	.L1587
.LVL1423:
.L1599:
	.loc 28 404 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 28 401 0
	b	rescheduleRequired
.LVL1424:
.L1598:
	.cfi_restore_state
	mov	r0, r2
.LBB8226:
.LBB8225:
	bl	tcbSchedEnqueue.part.280
.LVL1425:
	b	.L1589
.LBE8225:
.LBE8226:
	.cfi_endproc
.LFE714:
	.size	possibleSwitchTo, .-possibleSwitchTo
	.align	2
	.global	attemptSwitchTo
	.syntax unified
	.arm
	.fpu softvfp
	.type	attemptSwitchTo, %function
attemptSwitchTo:
.LFB715:
	.loc 28 408 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1426:
	.loc 28 409 0
	mov	r1, #1
	b	possibleSwitchTo
.LVL1427:
	.cfi_endproc
.LFE715:
	.size	attemptSwitchTo, .-attemptSwitchTo
	.align	2
	.global	switchIfRequiredTo
	.syntax unified
	.arm
	.fpu softvfp
	.type	switchIfRequiredTo, %function
switchIfRequiredTo:
.LFB716:
	.loc 28 414 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1428:
	.loc 28 415 0
	mov	r1, #0
	b	possibleSwitchTo
.LVL1429:
	.cfi_endproc
.LFE716:
	.size	switchIfRequiredTo, .-switchIfRequiredTo
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbSchedAppend.part.289, %function
tcbSchedAppend.part.289:
.LFB1164:
	.loc 27 109 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1430:
.LBB8227:
.LBB8228:
.LBB8229:
	.loc 46 25 0
	ldr	r3, [r0, #480]
.LBE8229:
.LBE8228:
.LBE8227:
	.loc 27 109 0
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB8246:
	.loc 27 118 0
	ldr	r2, [r0, #488]
.LVL1431:
.LBE8246:
	.loc 27 109 0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	r10, [sp, #24]
.LBB8247:
.LBB8233:
.LBB8230:
	.loc 46 25 0
	cmp	r3, #0
.LBE8230:
.LBE8233:
.LBE8247:
	.loc 27 109 0
	str	lr, [sp, #28]
.LBB8248:
.LBB8234:
.LBB8231:
	.loc 46 25 0
	bne	.L1607
.LVL1432:
.LBE8231:
.LBE8234:
	.loc 27 120 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	ldr	ip, [r3, r2, lsl #3]
.LVL1433:
	add	lr, r3, r2, lsl #3
	ldr	r4, [lr, #4]
.LVL1434:
	.loc 27 122 0
	cmp	ip, #0
	.loc 27 126 0
	strne	r0, [r4, #504]
	.loc 27 122 0
	beq	.L1608
.L1605:
.LBB8235:
.LBB8236:
	.loc 36 90 0
	ldr	r1, [r0, #452]
.LBE8236:
.LBE8235:
	.loc 27 129 0
	mov	r5, #0
.LBE8248:
	.loc 27 136 0
	ldrd	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LBB8249:
	.loc 27 129 0
	str	r5, [r0, #504]
.LVL1435:
.LBE8249:
	.loc 27 136 0
	ldr	r10, [sp, #24]
	.cfi_restore 10
.LBB8250:
	.loc 27 128 0
	str	r4, [r0, #508]
	.loc 27 132 0
	str	ip, [r3, r2, lsl #3]
.LBB8239:
.LBB8237:
	.loc 36 91 0
	orr	r3, r1, #1
.LBE8237:
.LBE8239:
.LBE8250:
	.loc 27 136 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
.LBB8251:
	.loc 27 132 0
	str	r0, [lr, #4]
.LVL1436:
.LBB8240:
.LBB8238:
	.loc 36 91 0
	str	r3, [r0, #452]
.LVL1437:
.LBE8238:
.LBE8240:
.LBE8251:
	.loc 27 136 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1438:
.L1608:
	.cfi_restore_state
.LBB8252:
.LBB8241:
.LBB8242:
.LBB8243:
.LBB8244:
	.loc 46 33 0
	lsr	r6, r2, #5
.LVL1439:
.LBE8244:
.LBE8243:
	.loc 27 60 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 27 61 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 27 60 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 27 61 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r8, [r1, r6, lsl #2]
	.loc 27 60 0
	mov	r10, #1
	.loc 27 61 0
	and	r7, r2, #31
	.loc 27 60 0
	ldr	r9, [r5]
	.loc 27 61 0
	mov	ip, r0
	orr	r7, r8, r10, lsl r7
	.loc 27 60 0
	orr	r9, r9, r10, lsl r6
	.loc 27 61 0
	str	r7, [r1, r6, lsl #2]
	.loc 27 60 0
	str	r9, [r5]
	b	.L1605
.LVL1440:
.L1607:
.LBE8242:
.LBE8241:
.LBB8245:
.LBB8232:
	bl	ready_queues_index.part.240
.LVL1441:
.LBE8232:
.LBE8245:
.LBE8252:
	.cfi_endproc
.LFE1164:
	.size	tcbSchedAppend.part.289, .-tcbSchedAppend.part.289
	.align	2
	.global	timerTick
	.syntax unified
	.arm
	.fpu softvfp
	.type	timerTick, %function
timerTick:
.LFB719:
	.loc 28 437 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 438 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LBB8253:
.LBB8254:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
.LBE8254:
.LBE8253:
	.loc 28 438 0
	cmp	r3, #1
	bxne	lr
	.loc 28 440 0
	ldr	r3, [r0, #492]
	cmp	r3, #1
	bls	.L1611
	.loc 28 441 0
	sub	r3, r3, #1
	str	r3, [r0, #492]
	bx	lr
.L1611:
.LBB8255:
.LBB8256:
.LBB8257:
.LBB8258:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE8258:
.LBE8257:
.LBE8256:
.LBE8255:
	.loc 28 443 0
	mov	r2, #5
	str	r2, [r0, #492]
.LVL1442:
.LBB8261:
.LBB8259:
	.loc 27 111 0
	tst	r3, #1
	beq	.L1617
.LVL1443:
.LBE8259:
.LBE8261:
	.loc 28 445 0
	b	rescheduleRequired
.LVL1444:
.L1617:
	.loc 28 437 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB8262:
.LBB8260:
	bl	tcbSchedAppend.part.289
.LVL1445:
.LBE8260:
.LBE8262:
	.loc 28 455 0
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 28 445 0
	b	rescheduleRequired
.LVL1446:
	.cfi_endproc
.LFE719:
	.size	timerTick, .-timerTick
	.align	2
	.global	setThreadState
	.syntax unified
	.arm
	.fpu softvfp
	.type	setThreadState, %function
setThreadState:
.LFB717:
	.loc 28 420 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1447:
.LBB8275:
.LBB8276:
	.loc 36 138 0
	bics	r3, r1, #15
	bne	.L1624
	.loc 36 139 0
	ldr	r3, [r0, #448]
.LBE8276:
.LBE8275:
.LBB8288:
.LBB8289:
	.loc 28 428 0
	movw	ip, #:lower16:ksCurThread
	movt	ip, #:upper16:ksCurThread
	ldr	ip, [ip]
.LBE8289:
.LBE8288:
.LBB8292:
.LBB8283:
	.loc 36 139 0
	bic	r3, r3, #15
	.loc 36 140 0
	orr	r1, r3, r1
.LVL1448:
.LBE8283:
.LBE8292:
.LBB8293:
.LBB8290:
	.loc 28 428 0
	cmp	r0, ip
.LBE8290:
.LBE8293:
.LBB8294:
.LBB8284:
	.loc 36 140 0
	str	r1, [r0, #448]
.LVL1449:
.LBE8284:
.LBE8294:
.LBB8295:
.LBB8291:
	.loc 28 428 0
	bxne	lr
.LVL1450:
.LBE8291:
.LBE8295:
.LBB8296:
.LBB8297:
.LBB8298:
	.loc 28 429 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 428 0
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.281
.LVL1451:
.L1624:
.LBE8298:
.LBE8297:
.LBE8296:
.LBB8299:
.LBB8285:
.LBB8277:
.LBB8278:
	.loc 36 138 0
	movw	r1, #:lower16:.LC37
.LVL1452:
	movw	r0, #:lower16:.LC104
.LVL1453:
.LBE8278:
.LBE8277:
.LBE8285:
.LBE8299:
	.loc 28 420 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8300:
.LBB8286:
.LBB8281:
.LBB8279:
	.loc 36 138 0
	ldr	r3, .L1625
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC104
	mov	r2, #138
.LBE8279:
.LBE8281:
.LBE8286:
.LBE8300:
	.loc 28 420 0
	str	lr, [sp, #4]
.LBB8301:
.LBB8287:
.LBB8282:
.LBB8280:
	.loc 36 138 0
	bl	_assert_fail
.LVL1454:
.L1626:
	.align	2
.L1625:
	.word	.LANCHOR3+3068
.LBE8280:
.LBE8282:
.LBE8287:
.LBE8301:
	.cfi_endproc
.LFE717:
	.size	setThreadState, .-setThreadState
	.section	.boot.text
	.align	2
	.global	configureIdleThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	configureIdleThread, %function
configureIdleThread:
.LFB696:
	.loc 28 48 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1455:
.LBB8302:
.LBB8303:
.LBB8304:
.LBB8305:
	.loc 10 30 0
	movw	r3, #:lower16:idle_thread
.LVL1456:
.LBE8305:
.LBE8304:
.LBB8308:
.LBB8309:
	mov	ip, #90
.LBE8309:
.LBE8308:
.LBB8311:
.LBB8306:
	movt	r3, #:upper16:idle_thread
.LBE8306:
.LBE8311:
.LBE8303:
.LBE8302:
	.loc 28 50 0
	mov	r1, #7
.LBB8315:
.LBB8314:
.LBB8312:
.LBB8307:
	.loc 10 30 0
	str	r3, [r0, #60]
.LBE8307:
.LBE8312:
.LBB8313:
.LBB8310:
	str	ip, [r0, #64]
.LVL1457:
.LBE8310:
.LBE8313:
.LBE8314:
.LBE8315:
	.loc 28 50 0
	b	setThreadState
.LVL1458:
	.cfi_endproc
.LFE696:
	.size	configureIdleThread, .-configureIdleThread
	.text
	.align	2
	.global	activateThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	activateThread, %function
activateThread:
.LFB697:
	.loc 28 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 28 56 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LBB8336:
.LBB8337:
	.loc 36 116 0
	ldr	r3, [r2, #448]
	and	r3, r3, #15
.LBE8337:
.LBE8336:
	.loc 28 56 0
	cmp	r3, #2
	beq	.L1630
	cmp	r3, #7
	bxeq	lr
	cmp	r3, #1
	beq	.L1641
.LBB8338:
.LBB8339:
	.loc 28 77 0
	movw	r1, #:lower16:.LC105
	movw	r0, #:lower16:.LC106
.LBE8339:
.LBE8338:
	.loc 28 55 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8342:
.LBB8340:
	.loc 28 77 0
	ldr	r3, .L1642
	movt	r1, #:upper16:.LC105
	movt	r0, #:upper16:.LC106
	mov	r2, #77
.LBE8340:
.LBE8342:
	.loc 28 55 0
	str	lr, [sp, #4]
.LBB8343:
.LBB8341:
	.loc 28 77 0
	bl	_fail
.LVL1459:
.L1630:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
.LBE8341:
.LBE8343:
.LBB8344:
.LBB8345:
.LBB8346:
.LBB8347:
	.loc 10 30 0
	ldr	r3, [r2, #68]
.LBE8347:
.LBE8346:
.LBE8345:
	.loc 28 68 0
	mov	r0, r2
	mov	r1, #1
.LBB8350:
.LBB8349:
.LBB8348:
	.loc 10 30 0
	str	r3, [r2, #60]
.LVL1460:
.LBE8348:
.LBE8349:
.LBE8350:
	.loc 28 68 0
	b	setThreadState
.LVL1461:
.L1641:
	bx	lr
.L1643:
	.align	2
.L1642:
	.word	.LANCHOR3+3096
.LBE8344:
	.cfi_endproc
.LFE697:
	.size	activateThread, .-activateThread
	.align	2
	.global	switchLocalFpuOwner
	.syntax unified
	.arm
	.fpu softvfp
	.type	switchLocalFpuOwner, %function
switchLocalFpuOwner:
.LFB721:
	.file 47 "/home/sel4/work/work2/kernel/src/machine/fpu.c"
	.loc 47 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1462:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r3, r0
	str	lr, [sp, #4]
.LBB8363:
.LBB8364:
	.loc 32 101 0
	.syntax divided
@ 101 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL1463:
	.loc 32 102 0
	.arm
	.syntax unified
	orr	r2, r2, #1073741824
.LVL1464:
.LBB8365:
	.loc 32 103 0
	.syntax divided
@ 103 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8365:
.LBE8364:
.LBE8363:
	.loc 47 24 0
	movw	r4, #:lower16:ksActiveFPUState
.LBB8369:
.LBB8366:
	.loc 32 104 0
	movw	r1, #:lower16:isFPUEnabledCached
.LBE8366:
.LBE8369:
	.loc 47 24 0
	movt	r4, #:upper16:ksActiveFPUState
.LBB8370:
.LBB8367:
	.loc 32 104 0
	movt	r1, #:upper16:isFPUEnabledCached
.LBE8367:
.LBE8370:
	.loc 47 24 0
	ldr	r2, [r4]
.LVL1465:
.LBB8371:
.LBB8368:
	.loc 32 104 0
	mov	r0, #1
.LVL1466:
	str	r0, [r1]
.LBE8368:
.LBE8371:
	.loc 47 24 0
	cmp	r2, #0
	beq	.L1645
.LVL1467:
.LBB8372:
.LBB8373:
	.loc 32 55 0
	.syntax divided
@ 55 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r0, cr8, cr0, 0
@ 0 "" 2
.LVL1468:
	.loc 32 71 0
	.arm
	.syntax unified
	cmp	r0, #0
	.loc 32 68 0
	str	r0, [r2, #256]
	.loc 32 71 0
	blt	.L1661
	.loc 32 73 0
	movw	r0, #:lower16:isFPUD32SupportedCached
.LVL1469:
	movt	r0, #:upper16:isFPUD32SupportedCached
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L1647
.LBB8374:
	.loc 32 74 0
	add	ip, r2, #128
	.loc 32 75 0
	.syntax divided
@ 75 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	.word 0xeccc0b20        

@ 0 "" 2
	.arm
	.syntax unified
.L1647:
.LBE8374:
	.loc 32 91 0
	add	r0, r2, #260
	.loc 32 84 0
	.syntax divided
@ 84 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	.word 0xec820b20       
.word 0xeef1ea10       
str  lr, [r0]

@ 0 "" 2
.LVL1470:
	.arm
	.syntax unified
.L1645:
.LBE8373:
.LBE8372:
	.loc 47 27 0
	cmp	r3, #0
	beq	.L1648
.LBB8376:
.LBB8377:
	.loc 32 117 0
	movw	r2, #:lower16:isFPUD32SupportedCached
.LBE8377:
.LBE8376:
	.loc 47 28 0
	mov	ip, #0
.LBB8383:
.LBB8379:
	.loc 32 117 0
	movt	r2, #:upper16:isFPUD32SupportedCached
.LBE8379:
.LBE8383:
	.loc 47 28 0
	movw	r1, #:lower16:ksFPURestoresSinceSwitch
.LBB8384:
.LBB8380:
	.loc 32 117 0
	ldr	r0, [r2]
.LBE8380:
.LBE8384:
	.loc 47 28 0
	movt	r1, #:upper16:ksFPURestoresSinceSwitch
.LBB8385:
.LBB8381:
	.loc 32 116 0
	add	r2, r3, #128
.LBE8381:
.LBE8385:
	.loc 47 28 0
	str	ip, [r1]
.LVL1471:
.LBB8386:
.LBB8382:
	.loc 32 117 0
	cmp	r0, ip
	beq	.L1649
	.loc 32 118 0
	.syntax divided
@ 118 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	.word 0xecd20b20       

@ 0 "" 2
	.arm
	.syntax unified
.L1649:
	.loc 32 124 0
	mov	r0, r3
	.loc 32 125 0
	ldr	r1, [r3, #260]
	.loc 32 126 0
	.syntax divided
@ 126 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	.word 0xec900b20         
.word 0xeee11a10         

@ 0 "" 2
.LVL1472:
	.arm
	.syntax unified
.LBB8378:
	.loc 32 135 0
	ldr	r2, [r3, #256]
	.syntax divided
@ 135 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8378:
.LBE8382:
.LBE8386:
	.loc 47 33 0
	str	r3, [r4]
	.loc 47 34 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1473:
.L1648:
	.cfi_restore_state
.LBB8387:
.LBB8388:
	.loc 32 144 0
	.syntax divided
@ 144 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL1474:
	.loc 32 145 0
	.arm
	.syntax unified
	bic	r2, r2, #1073741824
.LVL1475:
.LBB8389:
	.loc 32 146 0
	.syntax divided
@ 146 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8389:
.LBE8388:
.LBE8387:
	.loc 47 33 0
	str	r3, [r4]
	.loc 47 34 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB8391:
.LBB8390:
	.loc 32 148 0
	str	r3, [r1]
.LBE8390:
.LBE8391:
	.loc 47 34 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1476:
.L1661:
	.cfi_restore_state
.LBB8392:
.LBB8375:
	.loc 32 71 0
	movw	r1, #:lower16:.LC107
	movw	r0, #:lower16:.LC108
.LVL1477:
	ldr	r3, .L1662
.LVL1478:
	movt	r1, #:upper16:.LC107
	movt	r0, #:upper16:.LC108
	mov	r2, #71
.LVL1479:
	bl	_assert_fail
.LVL1480:
.L1663:
	.align	2
.L1662:
	.word	.LANCHOR3+3112
.LBE8375:
.LBE8392:
	.cfi_endproc
.LFE721:
	.size	switchLocalFpuOwner, .-switchLocalFpuOwner
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	fastpath_restore, %function
fastpath_restore:
.LFB380:
	.file 48 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/fastpath/fastpath.h"
	.loc 48 130 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1481:
	.loc 48 140 0
	movw	r3, #:lower16:ksCurThread
	.loc 48 130 0
	mov	r4, r0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 48 140 0
	movt	r3, #:upper16:ksCurThread
	.loc 48 130 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 48 140 0
	ldr	r0, [r3]
.LVL1482:
.LBB8393:
.LBB8394:
	.loc 17 147 0
	ldr	r3, [r0, #72]
	.syntax divided
@ 147 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c13, c0, 2
@ 0 "" 2
.LVL1483:
	.arm
	.syntax unified
.LBE8394:
.LBE8393:
.LBB8395:
.LBB8396:
	.file 49 "/home/sel4/work/work2/kernel/include/machine/fpu.h"
	.loc 49 43 0
	movw	r3, #:lower16:ksActiveFPUState
	movt	r3, #:upper16:ksActiveFPUState
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1673
.LVL1484:
.L1665:
.LBE8396:
.LBE8395:
	.loc 48 147 0
	mov	r0, r4
	.loc 48 152 0
	.syntax divided
@ 152 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/fastpath/fastpath.h" 1
	mov sp, r2         
add sp, sp, #8     
pop {r2-r12}       
pop {lr}           
msr sp_usr, lr     
ldr lr, [sp, #4]   
msr elr_hyp, lr    
ldr lr, [sp, #8]   
msr spsr_hyp, lr   
pop {lr}           
eret
@ 0 "" 2
.LVL1485:
	.arm
	.syntax unified
.L1673:
.LBB8406:
.LBB8405:
	.loc 49 47 0
	movw	r5, #:lower16:ksFPURestoresSinceSwitch
	movt	r5, #:upper16:ksFPURestoresSinceSwitch
	ldr	ip, [r5]
	cmp	ip, #64
	bhi	.L1674
.LBB8397:
.LBB8398:
	.loc 49 37 0
	add	r0, r0, #176
.LVL1486:
.LBE8398:
.LBE8397:
	.loc 49 51 0
	cmp	r3, r0
	bne	.L1667
.LBB8399:
.LBB8400:
	.loc 32 101 0
	.syntax divided
@ 101 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
.LVL1487:
	.loc 32 102 0
	.arm
	.syntax unified
	orr	r3, r3, #1073741824
.LVL1488:
.LBB8401:
	.loc 32 103 0
	.syntax divided
@ 103 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8401:
	.loc 32 104 0
	movw	r3, #:lower16:isFPUEnabledCached
.LVL1489:
	mov	r0, #1
	movt	r3, #:upper16:isFPUEnabledCached
	str	r0, [r3]
.L1668:
.LBE8400:
.LBE8399:
	.loc 49 58 0
	add	ip, ip, #1
	str	ip, [r5]
	b	.L1665
.LVL1490:
.L1674:
	.loc 49 48 0
	mov	r0, #0
.LVL1491:
	stm	sp, {r1, r2}
	bl	switchLocalFpuOwner
.LVL1492:
	.loc 49 49 0
	mov	r3, #0
	ldm	sp, {r1, r2}
	str	r3, [r5]
	b	.L1665
.LVL1493:
.L1667:
.LBB8402:
.LBB8403:
	.loc 32 144 0
	.syntax divided
@ 144 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
.LVL1494:
	.loc 32 145 0
	.arm
	.syntax unified
	bic	r3, r3, #1073741824
.LVL1495:
.LBB8404:
	.loc 32 146 0
	.syntax divided
@ 146 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r3, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8404:
	.loc 32 148 0
	movw	r3, #:lower16:isFPUEnabledCached
.LVL1496:
	mov	r0, #0
	movt	r3, #:upper16:isFPUEnabledCached
	str	r0, [r3]
	b	.L1668
.LBE8403:
.LBE8402:
.LBE8405:
.LBE8406:
	.cfi_endproc
.LFE380:
	.size	fastpath_restore, .-fastpath_restore
	.align	2
	.global	restore_user_context
	.syntax unified
	.arm
	.fpu softvfp
	.type	restore_user_context, %function
restore_user_context:
.LFB381:
	.file 50 "/home/sel4/work/work2/kernel/src/arch/arm/32/c_traps.c"
	.loc 50 26 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB8407:
.LBB8408:
	.loc 49 43 0
	movw	r3, #:lower16:ksActiveFPUState
.LBE8408:
.LBE8407:
	.loc 50 26 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 50 29 0
	movw	r4, #:lower16:ksCurThread
.LBB8422:
.LBB8417:
	.loc 49 43 0
	movt	r3, #:upper16:ksActiveFPUState
.LBE8417:
.LBE8422:
	.loc 50 29 0
	movt	r4, #:upper16:ksCurThread
.LBB8423:
.LBB8418:
	.loc 49 43 0
	ldr	r2, [r3]
.LBE8418:
.LBE8423:
	.loc 50 26 0
	str	lr, [sp, #4]
	.loc 50 29 0
	ldr	r3, [r4]
.LBB8424:
.LBB8419:
	.loc 49 43 0
	cmp	r2, #0
.LBE8419:
.LBE8424:
	.loc 50 29 0
	mov	r5, r3
.LVL1497:
.LBB8425:
.LBB8420:
	.loc 49 43 0
	bne	.L1684
.LVL1498:
.L1676:
.LBE8420:
.LBE8425:
.LBB8426:
.LBB8427:
	.loc 17 147 0
	ldr	r3, [r3, #72]
	.syntax divided
@ 147 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c13, c0, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBE8427:
.LBE8426:
	.loc 50 46 0
	.syntax divided
@ 46 "/home/sel4/work/work2/kernel/src/arch/arm/32/c_traps.c" 1
	mov sp, r5 
pop {r0-r12}              
pop {lr}                  
msr sp_usr, lr            
ldr lr, [sp, #4]          
msr elr_hyp, lr           
ldr lr, [sp, #8]          
msr spsr_hyp, lr          
pop {lr}                  
eret
@ 0 "" 2
.LVL1499:
	.arm
	.syntax unified
.L1684:
.LBB8428:
.LBB8421:
	.loc 49 47 0
	movw	r6, #:lower16:ksFPURestoresSinceSwitch
	movt	r6, #:upper16:ksFPURestoresSinceSwitch
	ldr	r1, [r6]
	cmp	r1, #64
	bhi	.L1685
.LBB8409:
.LBB8410:
	.loc 49 37 0
	add	r0, r3, #176
.LBE8410:
.LBE8409:
	.loc 49 51 0
	cmp	r2, r0
	bne	.L1678
.LBB8411:
.LBB8412:
	.loc 32 101 0
	.syntax divided
@ 101 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL1500:
	.loc 32 102 0
	.arm
	.syntax unified
	orr	r2, r2, #1073741824
.LVL1501:
.LBB8413:
	.loc 32 103 0
	.syntax divided
@ 103 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8413:
	.loc 32 104 0
	movw	r2, #:lower16:isFPUEnabledCached
.LVL1502:
	mov	r0, #1
	movt	r2, #:upper16:isFPUEnabledCached
	str	r0, [r2]
.L1679:
.LBE8412:
.LBE8411:
	.loc 49 58 0
	add	r1, r1, #1
	str	r1, [r6]
	b	.L1676
.L1685:
	.loc 49 48 0
	mov	r0, #0
	bl	switchLocalFpuOwner
.LVL1503:
	.loc 49 49 0
	mov	r2, #0
	ldr	r3, [r4]
	str	r2, [r6]
	b	.L1676
.LVL1504:
.L1678:
.LBB8414:
.LBB8415:
	.loc 32 144 0
	.syntax divided
@ 144 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mrc   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
.LVL1505:
	.loc 32 145 0
	.arm
	.syntax unified
	bic	r2, r2, #1073741824
.LVL1506:
.LBB8416:
	.loc 32 146 0
	.syntax divided
@ 146 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/fpu.h" 1
	mcr   p10, 7,  r2, cr8, cr0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8416:
	.loc 32 148 0
	movw	r2, #:lower16:isFPUEnabledCached
.LVL1507:
	mov	r0, #0
	movt	r2, #:upper16:isFPUEnabledCached
	str	r0, [r2]
	b	.L1679
.LBE8415:
.LBE8414:
.LBE8421:
.LBE8428:
	.cfi_endproc
.LFE381:
	.size	restore_user_context, .-restore_user_context
	.align	2
	.global	switchFpuOwner
	.syntax unified
	.arm
	.fpu softvfp
	.type	switchFpuOwner, %function
switchFpuOwner:
.LFB722:
	.loc 47 37 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1508:
	.loc 47 44 0
	b	switchLocalFpuOwner
.LVL1509:
	.cfi_endproc
.LFE722:
	.size	switchFpuOwner, .-switchFpuOwner
	.align	2
	.global	fpuThreadDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	fpuThreadDelete, %function
fpuThreadDelete:
.LFB724:
	.loc 47 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1510:
.LBB8429:
.LBB8430:
	.loc 49 37 0
	movw	r3, #:lower16:ksActiveFPUState
	add	r0, r0, #176
.LVL1511:
	movt	r3, #:upper16:ksActiveFPUState
.LBE8430:
.LBE8429:
	.loc 47 72 0
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L1689
	.loc 47 75 0
	bx	lr
.L1689:
.LVL1512:
.LBB8431:
.LBB8432:
	.loc 47 44 0
	mov	r0, #0
.LVL1513:
	b	switchLocalFpuOwner
.LVL1514:
.LBE8432:
.LBE8431:
	.cfi_endproc
.LFE724:
	.size	fpuThreadDelete, .-fpuThreadDelete
	.align	2
	.global	handleFPUFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleFPUFault, %function
handleFPUFault:
.LFB723:
	.loc 47 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1515:
	.loc 47 59 0
	movw	r2, #:lower16:ksCurThread
.LBB8439:
.LBB8440:
	.loc 49 37 0
	movw	r3, #:lower16:ksActiveFPUState
.LBE8440:
.LBE8439:
	.loc 47 55 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 47 59 0
	movt	r2, #:upper16:ksCurThread
.LBB8443:
.LBB8441:
	.loc 49 37 0
	movt	r3, #:upper16:ksActiveFPUState
	ldr	r0, [r2]
.LBE8441:
.LBE8443:
	.loc 47 59 0
	ldr	r3, [r3]
	.loc 47 55 0
	str	lr, [sp, #4]
.LBB8444:
.LBB8442:
	.loc 49 37 0
	add	r0, r0, #176
.LVL1516:
.LBE8442:
.LBE8444:
	.loc 47 59 0
	cmp	r3, r0
	beq	.L1693
	.loc 47 62 0
	bl	switchLocalFpuOwner
.LVL1517:
	.loc 47 65 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L1693:
	.cfi_restore_state
.LBB8445:
.LBB8446:
	.loc 47 59 0
	movw	r1, #:lower16:.LC109
	movw	r0, #:lower16:.LC110
	ldr	r3, .L1694
	movt	r1, #:upper16:.LC109
	movt	r0, #:upper16:.LC110
	mov	r2, #59
	bl	_assert_fail
.LVL1518:
.L1695:
	.align	2
.L1694:
	.word	.LANCHOR3+3128
.LBE8446:
.LBE8445:
	.cfi_endproc
.LFE723:
	.size	handleFPUFault, .-handleFPUFault
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_notification_cap_get_capNtfnBadge.part.244, %function
cap_notification_cap_get_capNtfnBadge.part.244:
.LFB1119:
	.loc 36 1197 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1199 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC45
	ldr	r3, .L1698
	.loc 36 1197 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1199 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC45
	mov	r2, #1200
	bl	_assert_fail
.LVL1519:
.L1699:
	.align	2
.L1698:
	.word	.LANCHOR3+3144
	.cfi_endproc
.LFE1119:
	.size	cap_notification_cap_get_capNtfnBadge.part.244, .-cap_notification_cap_get_capNtfnBadge.part.244
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	mdb_node_ptr_set_mdbNext.isra.245.part.246, %function
mdb_node_ptr_set_mdbNext.isra.245.part.246:
.LFB1121:
	.loc 36 280 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1520:
	.loc 36 282 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC111
	ldr	r3, .L1702
	.loc 36 280 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 282 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC111
	movw	r2, #282
	bl	_assert_fail
.LVL1521:
.L1703:
	.align	2
.L1702:
	.word	.LANCHOR3+3184
	.cfi_endproc
.LFE1121:
	.size	mdb_node_ptr_set_mdbNext.isra.245.part.246, .-mdb_node_ptr_set_mdbNext.isra.245.part.246
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	mdb_node_ptr_set_mdbPrev.isra.247.part.248, %function
mdb_node_ptr_set_mdbPrev.isra.247.part.248:
.LFB1123:
	.loc 36 364 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1522:
	.loc 36 366 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC111
	ldr	r3, .L1706
	.loc 36 364 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 366 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC111
	movw	r2, #366
	bl	_assert_fail
.LVL1523:
.L1707:
	.align	2
.L1706:
	.word	.LANCHOR3+3212
	.cfi_endproc
.LFE1123:
	.size	mdb_node_ptr_set_mdbPrev.isra.247.part.248, .-mdb_node_ptr_set_mdbPrev.isra.247.part.248
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_reply_cap_new.part.251, %function
cap_reply_cap_new.part.251:
.LFB1126:
	.loc 36 1289 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1524:
	.loc 36 1293 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC112
	ldr	r3, .L1710
	.loc 36 1289 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1293 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC112
	movw	r2, #1293
	bl	_assert_fail
.LVL1525:
.L1711:
	.align	2
.L1710:
	.word	.LANCHOR3+3240
	.cfi_endproc
.LFE1126:
	.size	cap_reply_cap_new.part.251, .-cap_reply_cap_new.part.251
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	endpoint_ptr_set_epQueue_head.isra.256.part.257, %function
endpoint_ptr_set_epQueue_head.isra.256.part.257:
.LFB1132:
	.loc 36 470 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1526:
	.loc 36 472 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
	ldr	r3, .L1714
	.loc 36 470 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 472 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	mov	r2, #472
	bl	_assert_fail
.LVL1527:
.L1715:
	.align	2
.L1714:
	.word	.LANCHOR3+3260
	.cfi_endproc
.LFE1132:
	.size	endpoint_ptr_set_epQueue_head.isra.256.part.257, .-endpoint_ptr_set_epQueue_head.isra.256.part.257
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	endpoint_ptr_set_epQueue_tail.isra.258.part.259, %function
endpoint_ptr_set_epQueue_tail.isra.258.part.259:
.LFB1134:
	.loc 36 489 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1528:
	.loc 36 491 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
	ldr	r3, .L1718
	.loc 36 489 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 491 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	movw	r2, #491
	bl	_assert_fail
.LVL1529:
.L1719:
	.align	2
.L1718:
	.word	.LANCHOR3+3292
	.cfi_endproc
.LFE1134:
	.size	endpoint_ptr_set_epQueue_tail.isra.258.part.259, .-endpoint_ptr_set_epQueue_tail.isra.258.part.259
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_notification_cap_get_capNtfnCanSend.part.263, %function
cap_notification_cap_get_capNtfnCanSend.part.263:
.LFB1138:
	.loc 36 1249 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 1251 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC45
	ldr	r3, .L1722
	.loc 36 1249 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 1251 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC45
	movw	r2, #1252
	bl	_assert_fail
.LVL1530:
.L1723:
	.align	2
.L1722:
	.word	.LANCHOR3+3324
	.cfi_endproc
.LFE1138:
	.size	cap_notification_cap_get_capNtfnCanSend.part.263, .-cap_notification_cap_get_capNtfnCanSend.part.263
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	ackInterrupt.part.264, %function
ackInterrupt.part.264:
.LFB1139:
	.loc 7 202 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1531:
	.loc 7 204 0
	movw	r1, #:lower16:.LC114
	movw	r0, #:lower16:.LC115
	ldr	r3, .L1726
	.loc 7 202 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 7 204 0
	movt	r1, #:upper16:.LC114
	movt	r0, #:upper16:.LC115
	mov	r2, #204
	bl	_assert_fail
.LVL1532:
.L1727:
	.align	2
.L1726:
	.word	.LANCHOR3+3364
	.cfi_endproc
.LFE1139:
	.size	ackInterrupt.part.264, .-ackInterrupt.part.264
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	notification_ptr_set_ntfnQueue_head.isra.265.part.266, %function
notification_ptr_set_ntfnQueue_head.isra.265.part.266:
.LFB1141:
	.loc 36 198 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1533:
	.loc 36 200 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
	ldr	r3, .L1730
	.loc 36 198 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 200 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	mov	r2, #200
	bl	_assert_fail
.LVL1534:
.L1731:
	.align	2
.L1730:
	.word	.LANCHOR3+3380
	.cfi_endproc
.LFE1141:
	.size	notification_ptr_set_ntfnQueue_head.isra.265.part.266, .-notification_ptr_set_ntfnQueue_head.isra.265.part.266
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	notification_ptr_set_ntfnQueue_tail.isra.267.part.268, %function
notification_ptr_set_ntfnQueue_tail.isra.267.part.268:
.LFB1143:
	.loc 36 217 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1535:
	.loc 36 219 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
	ldr	r3, .L1734
	.loc 36 217 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 219 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	mov	r2, #219
	bl	_assert_fail
.LVL1536:
.L1735:
	.align	2
.L1734:
	.word	.LANCHOR3+3416
	.cfi_endproc
.LFE1143:
	.size	notification_ptr_set_ntfnQueue_tail.isra.267.part.268, .-notification_ptr_set_ntfnQueue_tail.isra.267.part.268
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	notification_ptr_set_ntfnBoundTCB.isra.272.part.273, %function
notification_ptr_set_ntfnBoundTCB.isra.272.part.273:
.LFB1148:
	.loc 36 160 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1537:
	.loc 36 162 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
	ldr	r3, .L1738
	.loc 36 160 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 162 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	mov	r2, #162
	bl	_assert_fail
.LVL1538:
.L1739:
	.align	2
.L1738:
	.word	.LANCHOR3+3452
	.cfi_endproc
.LFE1148:
	.size	notification_ptr_set_ntfnBoundTCB.isra.272.part.273, .-notification_ptr_set_ntfnBoundTCB.isra.272.part.273
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cap_irq_handler_cap_get_capIRQ.part.276, %function
cap_irq_handler_cap_get_capIRQ.part.276:
.LFB1151:
	.loc 36 2118 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 36 2120 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC116
	ldr	r3, .L1742
	.loc 36 2118 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 36 2120 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC116
	movw	r2, #2121
	bl	_assert_fail
.LVL1539:
.L1743:
	.align	2
.L1742:
	.word	.LANCHOR3+3488
	.cfi_endproc
.LFE1151:
	.size	cap_irq_handler_cap_get_capIRQ.part.276, .-cap_irq_handler_cap_get_capIRQ.part.276
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkPrio.part.296, %function
checkPrio.part.296:
.LFB1171:
	.loc 27 34 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1540:
	.loc 27 41 0
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC118
	ldr	r3, .L1746
	.loc 27 34 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 27 41 0
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC118
	mov	r2, #41
	bl	_assert_fail
.LVL1541:
.L1747:
	.align	2
.L1746:
	.word	.LANCHOR3+3520
	.cfi_endproc
.LFE1171:
	.size	checkPrio.part.296, .-checkPrio.part.296
	.section	.boot.text
	.align	2
	.global	map_kernel_frame
	.syntax unified
	.arm
	.fpu softvfp
	.type	map_kernel_frame, %function
map_kernel_frame:
.LFB403:
	.loc 11 166 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1542:
	.loc 11 169 0
	cmn	r1, #1048576
	.loc 11 166 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 167 0
	ubfx	r1, r1, #12, #9
.LVL1543:
	.loc 11 166 0
	str	lr, [sp, #4]
	.loc 11 169 0
	bcc	.L1759
.LVL1544:
.LBB8457:
.LBB8458:
	.loc 11 99 0
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L1750
.L1752:
	.word	.L1757
	.word	.L1753
	.word	.L1754
	.word	.L1755
.L1757:
	.loc 11 106 0
	mov	lr, #2
.L1751:
.LVL1545:
.LBE8458:
.LBE8457:
.LBB8460:
.LBB8461:
	.loc 36 703 0
	ubfx	ip, r0, #0, #12
	cmp	ip, #0
	bne	.L1760
.LVL1546:
	.loc 36 719 0
	lsl	r3, r3, #2
.LVL1547:
	.loc 36 713 0
	bic	r0, r0, #4080
.LVL1548:
	bic	r0, r0, #15
	.loc 36 719 0
	and	r3, r3, #4
.LBE8461:
.LBE8460:
	.loc 11 199 0
	movw	r2, #:lower16:armHSGlobalPT
.LVL1549:
.LBB8466:
.LBB8462:
	.loc 36 720 0
	orr	r3, r3, #1024
.LBE8462:
.LBE8466:
	.loc 11 199 0
	movt	r2, #:upper16:armHSGlobalPT
.LBB8467:
.LBB8463:
	.loc 36 720 0
	orr	r3, r3, #3
.LBE8463:
.LBE8467:
	.loc 11 199 0
	add	r4, r2, r1, lsl #3
.LBB8468:
.LBB8464:
	.loc 36 720 0
	orr	r3, r3, r0
	orr	r3, r3, lr, lsl #6
.LBE8464:
.LBE8468:
	.loc 11 199 0
	str	r3, [r2, r1, lsl #3]
	str	ip, [r4, #4]
	.loc 11 213 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1550:
.L1755:
	.cfi_restore_state
.LBB8469:
.LBB8459:
	.loc 11 103 0
	mov	lr, #1
	b	.L1751
.L1753:
	.loc 11 101 0
	mov	lr, #0
	b	.L1751
.L1754:
	.loc 11 108 0
	mov	lr, #3
	b	.L1751
.L1750:
	.loc 11 110 0
	movw	r1, #:lower16:.LC26
.LVL1551:
	movw	r0, #:lower16:.LC27
.LVL1552:
	ldr	r3, .L1761
.LVL1553:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC27
	mov	r2, #110
.LVL1554:
	bl	_fail
.LVL1555:
.L1759:
.LBE8459:
.LBE8469:
.LBB8470:
.LBB8471:
	.loc 11 169 0
	movw	r1, #:lower16:.LC26
.LVL1556:
	movw	r0, #:lower16:.LC119
.LVL1557:
	ldr	r3, .L1761+4
.LVL1558:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC119
	mov	r2, #169
.LVL1559:
	bl	_assert_fail
.LVL1560:
.L1760:
.LBE8471:
.LBE8470:
.LBB8472:
.LBB8465:
	.loc 36 703 0
	movw	r1, #:lower16:.LC37
.LVL1561:
	movw	r0, #:lower16:.LC65
.LVL1562:
	ldr	r3, .L1761+8
.LVL1563:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC65
	movw	r2, #703
.LVL1564:
	bl	_assert_fail
.LVL1565:
.L1762:
	.align	2
.L1761:
	.word	.LANCHOR3+3552
	.word	.LANCHOR3+3532
	.word	.LANCHOR3+808
.LBE8465:
.LBE8472:
	.cfi_endproc
.LFE403:
	.size	map_kernel_frame, .-map_kernel_frame
	.text
	.align	2
	.global	getHWASID
	.syntax unified
	.arm
	.fpu softvfp
	.type	getHWASID, %function
getHWASID:
.LFB432:
	.loc 11 1251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1566:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 11 1254 0
	mov	r1, r0
	.loc 11 1251 0
	mov	r4, r0
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 11 1254 0
	mov	r0, sp
.LVL1567:
	bl	loadHWASID
.LVL1568:
	ldr	r0, [sp]
.LVL1569:
.LBB8490:
.LBB8491:
	.loc 36 2363 0
	tst	r0, #3
	bne	.L1770
.LVL1570:
	.loc 36 2366 0
	ubfx	r5, r0, #23, #1
.LBE8491:
.LBE8490:
	.loc 11 1255 0
	cmp	r5, #0
	.loc 11 1256 0
	lsrne	r0, r0, #24
.LVL1571:
	.loc 11 1255 0
	beq	.L1771
.L1766:
.LVL1572:
	.loc 11 1264 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1573:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1574:
.L1771:
	.cfi_restore_state
.LBB8493:
.LBB8494:
.LBB8495:
	.loc 11 1260 0
	bl	findFreeHWASID
.LVL1575:
.LBB8496:
.LBB8497:
	.loc 11 1205 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	r2, r4, #10
	movt	r3, #:upper16:armKSASIDTable
	ldr	r3, [r3, r2, lsl #2]
.LVL1576:
	.loc 11 1206 0
	cmp	r3, #0
	beq	.L1772
	.loc 11 1208 0
	ubfx	r2, r4, #0, #10
	ldr	r3, [r3, r2, lsl #2]
.LVL1577:
	.loc 11 1209 0
	cmp	r3, #0
	beq	.L1773
.LVL1578:
.LBB8498:
.LBB8499:
	.loc 36 2338 0
	lsl	r2, r0, #24
.LBE8499:
.LBE8498:
	.loc 11 1215 0
	movw	r1, #:lower16:armKSHWASIDTable
	.loc 11 1213 0
	add	r3, r3, #12288
.LVL1579:
.LBB8501:
.LBB8500:
	.loc 36 2340 0
	orr	r2, r2, #8388608
.LBE8500:
.LBE8501:
	.loc 11 1215 0
	movt	r1, #:upper16:armKSHWASIDTable
	.loc 11 1213 0
	str	r2, [r3, #4032]
	.loc 11 1215 0
	str	r4, [r1, r0, lsl #2]
.LVL1580:
	.loc 11 1213 0
	str	r5, [r3, #4036]
	b	.L1766
.LVL1581:
.L1770:
.LBE8497:
.LBE8496:
.LBE8495:
.LBE8494:
.LBE8493:
.LBB8506:
.LBB8492:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL1582:
.L1772:
.LBE8492:
.LBE8506:
.LBB8507:
.LBB8505:
.LBB8504:
.LBB8503:
.LBB8502:
	.loc 11 1206 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC69
.LVL1583:
	ldr	r3, .L1774
.LVL1584:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC69
	movw	r2, #1206
.LVL1585:
	bl	_assert_fail
.LVL1586:
.L1773:
	.loc 11 1209 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC70
.LVL1587:
	ldr	r3, .L1774
.LVL1588:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC70
	movw	r2, #1209
.LVL1589:
	bl	_assert_fail
.LVL1590:
.L1775:
	.align	2
.L1774:
	.word	.LANCHOR3+3568
.LBE8502:
.LBE8503:
.LBE8504:
.LBE8505:
.LBE8507:
	.cfi_endproc
.LFE432:
	.size	getHWASID, .-getHWASID
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	setVMRootForFlush, %function
setVMRootForFlush:
.LFB426:
	.loc 11 1130 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1591:
	.loc 11 1133 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 1130 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 11 1133 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	bic	r3, r3, #1020
	bic	r3, r3, #3
	ldr	r3, [r3, #16]
.LVL1592:
	.loc 11 1130 0
	str	lr, [sp, #4]
.LBB8508:
.LBB8509:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL1593:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE8509:
.LBE8508:
	.loc 11 1135 0
	cmp	r2, #9
	beq	.L1787
.LVL1594:
.L1779:
.LBB8510:
.LBB8511:
	.file 51 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h"
	.loc 51 55 0
	mov	r0, r1
.LVL1595:
.LBB8512:
.LBB8513:
.LBB8514:
.LBB8515:
	.loc 19 29 0
	add	r4, r4, #-2147483648
.LVL1596:
.LBE8515:
.LBE8514:
.LBE8513:
.LBE8512:
	.loc 51 55 0
	bl	getHWASID
.LVL1597:
.LBB8521:
.LBB8520:
.LBB8516:
.LBB8517:
	.loc 18 29 0
	lsl	r0, r0, #16
.LVL1598:
	.syntax divided
@ 29 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcrr p15, 6, r4, r0, c2
@ 0 "" 2
	.arm
	.syntax unified
.LBB8518:
.LBB8519:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1599:
	.arm
	.syntax unified
.LBE8519:
.LBE8518:
.LBE8517:
.LBE8516:
.LBE8520:
.LBE8521:
.LBE8511:
.LBE8510:
	.loc 11 1143 0
	mov	r0, #1
.L1776:
	.loc 11 1144 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1600:
.L1787:
	.cfi_restore_state
.LBB8522:
.LBB8523:
	.loc 36 2049 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L1788
.LVL1601:
.LBE8523:
.LBE8522:
	.loc 11 1135 0
	tst	r3, #16
	beq	.L1779
.LBB8525:
.LBB8526:
	.loc 36 2038 0
	bic	r3, r3, #16320
.LVL1602:
	bic	r3, r3, #63
.LBE8526:
.LBE8525:
	.loc 11 1136 0
	cmp	r0, r3
	bne	.L1779
	.loc 11 1138 0
	mov	r0, #0
.LVL1603:
	b	.L1776
.LVL1604:
.L1788:
.LBB8527:
.LBB8524:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL1605:
.LBE8524:
.LBE8527:
	.cfi_endproc
.LFE426:
	.size	setVMRootForFlush, .-setVMRootForFlush
	.align	2
	.global	setVMRoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	setVMRoot, %function
setVMRoot:
.LFB425:
	.loc 11 1092 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1606:
	.loc 11 1098 0
	bic	r3, r0, #1020
	.loc 11 1092 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 1098 0
	bic	r3, r3, #3
	ldr	r2, [r3, #16]
	.loc 11 1092 0
	str	r6, [sp, #8]
	.loc 11 1098 0
	add	r3, r3, #16
.LVL1607:
	.loc 11 1092 0
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
.LBB8528:
.LBB8529:
	.loc 36 903 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r2
	.loc 36 904 0
	andne	r1, r2, #15
.LBE8529:
.LBE8528:
	.loc 11 1100 0
	cmp	r1, #9
	beq	.L1799
.LVL1608:
.L1796:
.LBB8530:
.LBB8531:
.LBB8532:
	.loc 18 37 0
	.syntax divided
@ 37 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrrc p15, 6, r3, r2, c2
@ 0 "" 2
.LVL1609:
	.arm
	.syntax unified
.LBB8533:
.LBB8534:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8534:
.LBE8533:
.LBE8532:
.LBE8531:
.LBE8530:
.LBB8539:
.LBB8540:
	.loc 19 29 0
	ldr	r3, .L1801
.LBE8540:
.LBE8539:
.LBB8541:
.LBB8538:
.LBB8537:
	.loc 18 39 0
	.syntax divided
@ 39 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcrr p15, 6, r3, r2, c2
@ 0 "" 2
	.arm
	.syntax unified
.LBB8535:
.LBB8536:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1610:
	.arm
	.syntax unified
.LBE8536:
.LBE8535:
.LBE8537:
.LBE8538:
.LBE8541:
	.loc 11 1126 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1611:
.L1799:
	.cfi_restore_state
.LBB8542:
.LBB8543:
	.loc 36 2049 0 discriminator 1
	and	r1, r2, #15
	mov	r5, r0
.LVL1612:
	cmp	r1, #9
	bne	.L1800
.LBE8543:
.LBE8542:
	.loc 11 1100 0
	tst	r2, #16
	beq	.L1796
.LVL1613:
.LBB8545:
.LBB8546:
	.loc 36 2011 0
	ldr	r6, [r3, #4]
.LBE8546:
.LBE8545:
	.loc 11 1112 0
	mov	r0, sp
.LVL1614:
.LBB8548:
.LBB8549:
	.loc 36 2038 0
	bic	r4, r2, #16320
	bic	r4, r4, #63
.LVL1615:
.LBE8549:
.LBE8548:
.LBB8550:
.LBB8547:
	.loc 36 2011 0
	ubfx	r6, r6, #0, #17
.LBE8547:
.LBE8550:
	.loc 11 1112 0
	mov	r1, r6
	bl	findPDForASID
.LVL1616:
	.loc 11 1113 0
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L1796
	.loc 11 1113 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r4, r3
	bne	.L1796
.LVL1617:
.LBB8551:
.LBB8552:
	.loc 51 55 0 is_stmt 1
	mov	r0, r6
	bl	getHWASID
.LVL1618:
.LBB8553:
.LBB8554:
.LBB8555:
.LBB8556:
	.loc 18 29 0
	lsl	r0, r0, #16
.LVL1619:
.LBE8556:
.LBE8555:
.LBB8560:
.LBB8561:
	.loc 19 29 0
	add	r2, r4, #-2147483648
.LBE8561:
.LBE8560:
.LBB8562:
.LBB8559:
	.loc 18 29 0
	.syntax divided
@ 29 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcrr p15, 6, r2, r0, c2
@ 0 "" 2
	.arm
	.syntax unified
.LBB8557:
.LBB8558:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1620:
	.arm
	.syntax unified
.LBE8558:
.LBE8557:
.LBE8559:
.LBE8562:
.LBE8554:
.LBE8553:
.LBE8552:
.LBE8551:
	.loc 11 1124 0
	ldr	r0, [r5, #440]
	.loc 11 1126 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1621:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 11 1124 0
	b	vcpu_switch
.LVL1622:
.L1800:
	.cfi_restore_state
.LBB8563:
.LBB8544:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL1623:
.L1802:
	.align	2
.L1801:
	.word	armUSGlobalPD-2147483648
.LBE8544:
.LBE8563:
	.cfi_endproc
.LFE425:
	.size	setVMRoot, .-setVMRoot
	.align	2
	.global	Arch_switchToThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_switchToThread, %function
Arch_switchToThread:
.LFB384:
	.loc 9 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1624:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 9 22 0
	bl	setVMRoot
.LVL1625:
.LBB8564:
.LBB8565:
	.loc 17 116 0
	add	r3, sp, #4
	.syntax divided
@ 116 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	strex r0, r1, [r3]
@ 0 "" 2
	.arm
	.syntax unified
.LBE8565:
.LBE8564:
	.loc 9 30 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE384:
	.size	Arch_switchToThread, .-Arch_switchToThread
	.align	2
	.global	Arch_switchToIdleThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_switchToIdleThread, %function
Arch_switchToIdleThread:
.LFB386:
	.loc 9 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 9 43 0
	mov	r0, #0
	.loc 9 41 0
	str	lr, [sp, #4]
	.loc 9 43 0
	bl	vcpu_switch
.LVL1626:
	.loc 9 47 0
	movw	r3, #:lower16:ksIdleThread
	.loc 9 52 0
	ldr	r4, [sp]
	.cfi_restore 4
	.loc 9 47 0
	movt	r3, #:upper16:ksIdleThread
	.loc 9 52 0
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 9 47 0
	ldr	r0, [r3]
	b	setVMRoot
.LVL1627:
	.cfi_endproc
.LFE386:
	.size	Arch_switchToIdleThread, .-Arch_switchToIdleThread
	.align	2
	.global	switchToIdleThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	switchToIdleThread, %function
switchToIdleThread:
.LFB710:
	.loc 28 337 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8566:
.LBB8567:
	.loc 9 47 0
	movw	r4, #:lower16:ksIdleThread
	.loc 9 43 0
	mov	r0, #0
	.loc 9 47 0
	movt	r4, #:upper16:ksIdleThread
.LBE8567:
.LBE8566:
	.loc 28 337 0
	str	lr, [sp, #4]
.LBB8569:
.LBB8568:
	.loc 9 43 0
	bl	vcpu_switch
.LVL1628:
	.loc 9 47 0
	ldr	r0, [r4]
	bl	setVMRoot
.LVL1629:
.LBE8568:
.LBE8569:
	.loc 28 342 0
	ldr	r2, [r4]
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	.loc 28 343 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 28 342 0
	str	r2, [r3]
	.loc 28 343 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE710:
	.size	switchToIdleThread, .-switchToIdleThread
	.align	2
	.global	deleteASIDPool
	.syntax unified
	.arm
	.fpu softvfp
	.type	deleteASIDPool, %function
deleteASIDPool:
.LFB437:
	.loc 11 1393 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1630:
	.loc 11 1397 0
	ubfx	r3, r0, #0, #10
	.loc 11 1393 0
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 11 1397 0
	cmp	r3, #0
	.loc 11 1393 0
	strd	r6, [sp, #8]
	str	r8, [sp, #16]
	str	lr, [sp, #20]
	.loc 11 1397 0
	bne	.L1819
	.loc 11 1399 0
	movw	r7, #:lower16:armKSASIDTable
	lsr	r8, r0, #10
	movt	r7, #:upper16:armKSASIDTable
	ldr	r5, [r7, r8, lsl #2]
	mov	r4, r0
	cmp	r5, r1
	beq	.L1820
	.loc 11 1409 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L1820:
	.cfi_restore_state
	add	r6, r5, #4080
	sub	r5, r5, #4
	add	r6, r6, #12
.LVL1631:
.L1813:
	.loc 11 1401 0
	ldr	r3, [r5, #4]!
	cmp	r3, #0
	beq	.L1812
	.loc 11 1402 0
	mov	r0, r4
	bl	flushSpace
.LVL1632:
	.loc 11 1403 0
	mov	r0, r4
	bl	invalidateASIDEntry
.LVL1633:
.L1812:
	.loc 11 1400 0 discriminator 2
	cmp	r5, r6
	add	r4, r4, #1
	bne	.L1813
	.loc 11 1407 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 1406 0
	mov	r2, #0
	.loc 11 1409 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.loc 11 1407 0
	movt	r3, #:upper16:ksCurThread
	.loc 11 1409 0
	ldr	lr, [sp, #20]
	.cfi_restore 14
	.loc 11 1406 0
	str	r2, [r7, r8, lsl #2]
	.loc 11 1407 0
	ldr	r0, [r3]
	.loc 11 1409 0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	.loc 11 1407 0
	b	setVMRoot
.LVL1634:
.L1819:
	.cfi_restore_state
.LBB8572:
.LBB8573:
	.loc 11 1397 0
	movw	r1, #:lower16:.LC26
.LVL1635:
	movw	r0, #:lower16:.LC120
.LVL1636:
	ldr	r3, .L1821
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC120
	movw	r2, #1397
	bl	_assert_fail
.LVL1637:
.L1822:
	.align	2
.L1821:
	.word	.LANCHOR3+3580
.LBE8573:
.LBE8572:
	.cfi_endproc
.LFE437:
	.size	deleteASIDPool, .-deleteASIDPool
	.align	2
	.global	deleteASID
	.syntax unified
	.arm
	.fpu softvfp
	.type	deleteASID, %function
deleteASID:
.LFB438:
	.loc 11 1413 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1638:
	.loc 11 1416 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	ip, r0, #10
	.loc 11 1413 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 1416 0
	movt	r3, #:upper16:armKSASIDTable
	ldr	r5, [r3, ip, lsl #2]
.LVL1639:
	.loc 11 1413 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 11 1418 0
	cmp	r5, #0
	beq	.L1823
	.loc 11 1418 0 is_stmt 0 discriminator 1
	ubfx	r6, r0, #0, #10
	mov	r4, r0
	ldr	r3, [r5, r6, lsl #2]
	cmp	r3, r1
	beq	.L1829
.L1823:
	.loc 11 1424 0 is_stmt 1
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L1829:
	.cfi_restore_state
	.loc 11 1419 0
	bl	flushSpace
.LVL1640:
	.loc 11 1420 0
	mov	r0, r4
	bl	invalidateASIDEntry
.LVL1641:
	.loc 11 1422 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 1421 0
	mov	r2, #0
	.loc 11 1424 0
	ldr	lr, [sp, #12]
	.cfi_restore 14
	.loc 11 1422 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	.loc 11 1421 0
	str	r2, [r5, r6, lsl #2]
	.loc 11 1424 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1642:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 11 1422 0
	b	setVMRoot
.LVL1643:
	.cfi_endproc
.LFE438:
	.size	deleteASID, .-deleteASID
	.align	2
	.global	flushPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flushPage, %function
flushPage:
.LFB440:
	.loc 11 1580 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1644:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r2
.LVL1645:
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
.LBB8606:
.LBB8607:
	.loc 40 148 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L1831
.L1833:
	.word	.L1832
	.word	.L1842
	.word	.L1835
	.word	.L1836
.L1842:
	movw	r2, #65535
.LVL1646:
.L1834:
.LBE8607:
.LBE8606:
	.loc 11 1585 0
	tst	r2, r3
	bne	.L1847
	.loc 11 1588 0
	mov	r0, r1
.LVL1647:
	mov	r1, r4
.LVL1648:
	bl	setVMRootForFlush
.LVL1649:
	mov	r5, r0
.LVL1650:
	.loc 11 1589 0
	mov	r1, r4
	mov	r0, sp
.LVL1651:
	bl	loadHWASID
.LVL1652:
	ldr	r3, [sp]
.LVL1653:
.LBB8611:
.LBB8612:
	.loc 36 2363 0
	ands	r2, r3, #3
	bne	.L1848
.LVL1654:
.LBE8612:
.LBE8611:
	.loc 11 1591 0
	tst	r3, #8388608
	beq	.L1830
.LVL1655:
.LBB8614:
.LBB8615:
.LBB8616:
.LBB8617:
.LBB8618:
.LBB8619:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8619:
.LBE8618:
	.loc 17 226 0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB8620:
.LBB8621:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8621:
.LBE8620:
.LBB8622:
.LBB8623:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8623:
.LBE8622:
.LBE8617:
.LBE8616:
.LBE8615:
.LBE8614:
	.loc 11 1597 0
	cmp	r5, #0
	bne	.L1849
.LVL1656:
.L1830:
	.loc 11 1601 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1657:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1658:
.L1832:
	.cfi_restore_state
.LBB8624:
.LBB8610:
	.loc 40 148 0
	movw	r2, #4095
.LVL1659:
	b	.L1834
.LVL1660:
.L1836:
	mvn	r2, #-33554432
.LVL1661:
	b	.L1834
.LVL1662:
.L1835:
	movw	r2, #65535
.LVL1663:
	movt	r2, 31
	b	.L1834
.LVL1664:
.L1831:
.LBB8608:
.LBB8609:
	.loc 40 162 0
	movw	r1, #:lower16:.LC121
.LVL1665:
	movw	r0, #:lower16:.LC122
.LVL1666:
	ldr	r3, .L1850
.LVL1667:
	movt	r1, #:upper16:.LC121
	movt	r0, #:upper16:.LC122
	mov	r2, #162
.LVL1668:
	bl	_fail
.LVL1669:
.L1849:
.LBE8609:
.LBE8608:
.LBE8610:
.LBE8624:
	.loc 11 1598 0
	movw	r3, #:lower16:ksCurThread
.LVL1670:
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	.loc 11 1601 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL1671:
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1672:
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 11 1598 0
	b	setVMRoot
.LVL1673:
.L1848:
	.cfi_restore_state
.LBB8625:
.LBB8613:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL1674:
.L1847:
.LBE8613:
.LBE8625:
.LBB8626:
.LBB8627:
	.loc 11 1585 0
	movw	r1, #:lower16:.LC26
.LVL1675:
	movw	r0, #:lower16:.LC123
.LVL1676:
	ldr	r3, .L1850+4
.LVL1677:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC123
	movw	r2, #1585
	bl	_assert_fail
.LVL1678:
.L1851:
	.align	2
.L1850:
	.word	.LANCHOR3+3596
	.word	.LANCHOR3+3612
.LBE8627:
.LBE8626:
	.cfi_endproc
.LFE440:
	.size	flushPage, .-flushPage
	.align	2
	.global	unmapPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	unmapPage, %function
unmapPage:
.LFB439:
	.loc 11 1442 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1679:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r4, r0
	strd	r6, [sp, #8]
	mov	r6, r2
	mov	r7, r1
	str	r8, [sp, #16]
.LBB8628:
.LBB8629:
	.loc 19 29 0
	add	r8, r3, #-2147483648
.LVL1680:
.LBE8629:
.LBE8628:
	.loc 11 1442 0
	str	lr, [sp, #20]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 11 1446 0
	mov	r0, sp
.LVL1681:
	bl	findPDForASID
.LVL1682:
	ldm	sp, {r3, r5}
.LVL1683:
	.loc 11 1447 0
	cmp	r3, #0
	bne	.L1852
	.loc 11 1451 0
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L1854
.L1856:
	.word	.L1855
	.word	.L1857
	.word	.L1858
	.word	.L1859
.L1852:
	.loc 11 1576 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1684:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL1685:
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LVL1686:
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1687:
.L1859:
	.cfi_restore_state
.LBB8630:
.LBB8631:
.LBB8632:
	.loc 11 771 0
	lsr	r2, r6, #21
.LVL1688:
	ldr	r3, [r5, r2, lsl #3]
	.loc 11 772 0
	add	r2, r5, r2, lsl #3
.LVL1689:
.LBE8632:
.LBE8631:
.LBB8633:
.LBB8634:
	.loc 36 2325 0
	and	r1, r3, #3
.LBE8634:
.LBE8633:
	.loc 11 1546 0
	cmp	r1, #1
	bne	.L1852
.LBB8635:
.LBB8636:
	.loc 36 2422 0
	ldr	r1, [r2, #4]
.LBE8636:
.LBE8635:
	.loc 11 1552 0
	tst	r1, #1048576
	beq	.L1852
.LVL1690:
.LBB8637:
.LBB8638:
	.loc 36 2462 0
	bic	r3, r3, #4080
	bic	r3, r3, #15
.LBE8638:
.LBE8637:
	.loc 11 1556 0
	cmp	r8, r3
	bne	.L1852
	add	r0, r2, #128
	mov	r3, r2
	.loc 11 1561 0
	mov	r1, #0
.L1867:
.LVL1691:
	.loc 11 1561 0 is_stmt 0 discriminator 3
	str	r1, [r3]
	add	r3, r3, #8
	str	r1, [r3, #-4]
.LVL1692:
	.loc 11 1560 0 is_stmt 1 discriminator 3
	cmp	r0, r3
	bne	.L1867
.LVL1693:
	.loc 11 1563 0
	add	r1, r2, #127
.LVL1694:
.LBB8639:
.LBB8640:
	.loc 16 96 0
	lsr	r3, r2, #6
.LVL1695:
	lsr	r2, r1, #6
.LVL1696:
	add	r2, r2, #1
	cmp	r3, r2
	bcs	.L1861
	lsl	r3, r3, #6
.LVL1697:
	lsl	r2, r2, #6
.LVL1698:
.L1869:
.LBB8641:
.LBB8642:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8643:
.LBB8644:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1699:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL1700:
.LBE8644:
.LBE8643:
.LBE8642:
.LBE8641:
	.loc 16 96 0
	cmp	r3, r2
	bne	.L1869
	b	.L1861
.LVL1701:
.L1855:
.LBE8640:
.LBE8639:
.LBE8630:
.LBB8645:
	.loc 11 1455 0
	mov	r2, r6
	mov	r1, r5
	add	r0, sp, #8
	bl	lookupPTSlot
.LVL1702:
	.loc 11 1456 0
	ldr	r3, [sp, #8]
	.loc 11 1455 0
	ldr	r2, [sp, #12]
.LVL1703:
	.loc 11 1456 0
	cmp	r3, #0
	bne	.L1852
	ldr	r3, [r2]
.LVL1704:
.LBB8646:
.LBB8647:
	.loc 36 747 0
	and	r1, r3, #3
.LBE8647:
.LBE8646:
	.loc 11 1460 0
	cmp	r1, #3
	bne	.L1852
.LBB8648:
.LBB8649:
	.loc 36 812 0
	ldr	r1, [r2, #4]
	ubfx	r1, r1, #20, #1
.LBE8649:
.LBE8648:
	.loc 11 1464 0
	cmp	r1, #0
	bne	.L1852
.LVL1705:
.LBB8650:
.LBB8651:
	.loc 36 852 0
	bic	r3, r3, #4080
	bic	r3, r3, #15
.LBE8651:
.LBE8650:
	.loc 11 1468 0
	cmp	r8, r3
	bne	.L1852
.LVL1706:
	.loc 11 1472 0
	str	r1, [r2]
	str	r1, [r2, #4]
.LVL1707:
.LBB8652:
.LBB8653:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8654:
.LBB8655:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1708:
	.arm
	.syntax unified
.L1861:
.LBE8655:
.LBE8654:
.LBE8653:
.LBE8652:
.LBE8645:
	.loc 11 1575 0
	mov	r3, r6
	mov	r2, r7
	mov	r1, r5
	mov	r0, r4
	.loc 11 1576 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1709:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL1710:
	ldr	r8, [sp, #16]
	.cfi_restore 8
	ldr	lr, [sp, #20]
	.cfi_restore 14
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	.loc 11 1575 0
	b	flushPage
.LVL1711:
.L1857:
	.cfi_restore_state
.LBB8656:
	.loc 11 1482 0
	mov	r2, r6
	mov	r1, r5
	add	r0, sp, #8
	bl	lookupPTSlot
.LVL1712:
	.loc 11 1483 0
	ldr	r1, [sp, #8]
	.loc 11 1482 0
	ldr	r2, [sp, #12]
.LVL1713:
	.loc 11 1483 0
	cmp	r1, #0
	bne	.L1852
	ldr	r3, [r2]
.LVL1714:
.LBB8657:
.LBB8658:
	.loc 36 747 0
	and	r0, r3, #3
.LBE8658:
.LBE8657:
	.loc 11 1494 0
	cmp	r0, #3
	bne	.L1852
.LBB8659:
.LBB8660:
	.loc 36 812 0
	ldr	r0, [r2, #4]
.LBE8660:
.LBE8659:
	.loc 11 1497 0
	tst	r0, #1048576
	beq	.L1852
.LVL1715:
.LBB8661:
.LBB8662:
	.loc 36 852 0
	bic	r3, r3, #4080
	bic	r3, r3, #15
.LBE8662:
.LBE8661:
	.loc 11 1500 0
	cmp	r8, r3
	bne	.L1852
	add	r0, r2, #128
	mov	r3, r2
.L1863:
	.loc 11 1506 0 discriminator 3
	str	r1, [r3]
	add	r3, r3, #8
	str	r1, [r3, #-4]
.LVL1716:
	.loc 11 1505 0 discriminator 3
	cmp	r0, r3
	bne	.L1863
.LVL1717:
	.loc 11 1508 0
	add	r1, r2, #127
.LVL1718:
.LBB8663:
.LBB8664:
	.loc 16 96 0
	lsr	r3, r2, #6
.LVL1719:
	lsr	r2, r1, #6
.LVL1720:
	add	r2, r2, #1
	cmp	r2, r3
	bls	.L1861
	lsl	r3, r3, #6
.LVL1721:
	lsl	r2, r2, #6
.LVL1722:
.L1865:
.LBB8665:
.LBB8666:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8667:
.LBB8668:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1723:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL1724:
.LBE8668:
.LBE8667:
.LBE8666:
.LBE8665:
	.loc 16 96 0
	cmp	r2, r3
	bne	.L1865
	b	.L1861
.LVL1725:
.L1858:
.LBE8664:
.LBE8663:
.LBE8656:
.LBB8669:
.LBB8670:
.LBB8671:
	.loc 11 771 0
	lsr	r1, r6, #21
.LVL1726:
	ldr	r3, [r5, r1, lsl #3]
	.loc 11 772 0
	add	r0, r5, r1, lsl #3
.LVL1727:
.LBE8671:
.LBE8670:
.LBB8672:
.LBB8673:
	.loc 36 2325 0
	and	r2, r3, #3
.LBE8673:
.LBE8672:
	.loc 11 1520 0
	cmp	r2, #1
	bne	.L1852
.LBB8674:
.LBB8675:
	.loc 36 2422 0
	ldr	r2, [r0, #4]
	ubfx	r2, r2, #20, #1
.LBE8675:
.LBE8674:
	.loc 11 1526 0
	cmp	r2, #0
	bne	.L1852
.LVL1728:
.LBB8676:
.LBB8677:
	.loc 36 2462 0
	bic	r3, r3, #4080
	bic	r3, r3, #15
.LBE8677:
.LBE8676:
	.loc 11 1530 0
	cmp	r8, r3
	bne	.L1852
	.loc 11 1534 0
	str	r2, [r5, r1, lsl #3]
	str	r2, [r0, #4]
.LVL1729:
.LBB8678:
.LBB8679:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8680:
.LBB8681:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1861
.LVL1730:
.L1854:
.LBE8681:
.LBE8680:
.LBE8679:
.LBE8678:
.LBE8669:
	.loc 11 1570 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC124
	ldr	r3, .L1881
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC124
	movw	r2, #1570
	bl	_fail
.LVL1731:
.L1882:
	.align	2
.L1881:
	.word	.LANCHOR3+3624
	.cfi_endproc
.LFE439:
	.size	unmapPage, .-unmapPage
	.align	2
	.global	flushTable
	.syntax unified
	.arm
	.fpu softvfp
	.type	flushTable, %function
flushTable:
.LFB441:
	.loc 11 1605 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1732:
	.loc 11 1609 0
	ubfx	r2, r2, #0, #21
.LVL1733:
	.loc 11 1605 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 11 1609 0
	cmp	r2, #0
	.loc 11 1605 0
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 11 1609 0
	bne	.L1893
	mov	r4, r1
	.loc 11 1612 0
	bl	setVMRootForFlush
.LVL1734:
	mov	r5, r0
.LVL1735:
	.loc 11 1613 0
	mov	r1, r4
	mov	r0, sp
.LVL1736:
	bl	loadHWASID
.LVL1737:
	ldr	r3, [sp]
.LVL1738:
.LBB8710:
.LBB8711:
	.loc 36 2363 0
	ands	r2, r3, #3
	bne	.L1894
.LVL1739:
.LBE8711:
.LBE8710:
	.loc 11 1615 0
	tst	r3, #8388608
	beq	.L1883
.LVL1740:
.LBB8713:
.LBB8714:
.LBB8715:
.LBB8716:
.LBB8717:
.LBB8718:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8718:
.LBE8717:
	.loc 17 226 0
	.syntax divided
@ 226 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB8719:
.LBB8720:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8720:
.LBE8719:
.LBB8721:
.LBB8722:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8722:
.LBE8721:
.LBE8716:
.LBE8715:
.LBE8714:
.LBE8713:
	.loc 11 1617 0
	cmp	r5, #0
	bne	.L1895
.LVL1741:
.L1883:
	.loc 11 1621 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1742:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1743:
.L1895:
	.cfi_restore_state
	.loc 11 1618 0
	movw	r3, #:lower16:ksCurThread
.LVL1744:
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	.loc 11 1621 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL1745:
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1746:
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 11 1618 0
	b	setVMRoot
.LVL1747:
.L1894:
	.cfi_restore_state
.LBB8723:
.LBB8712:
	bl	pde_pde_invalid_get_stored_asid_valid.isra.109.part.110
.LVL1748:
.L1893:
.LBE8712:
.LBE8723:
.LBB8724:
.LBB8725:
	.loc 11 1609 0
	movw	r1, #:lower16:.LC26
.LVL1749:
	movw	r0, #:lower16:.LC125
.LVL1750:
	ldr	r3, .L1896
.LVL1751:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC125
	movw	r2, #1609
	bl	_assert_fail
.LVL1752:
.L1897:
	.align	2
.L1896:
	.word	.LANCHOR3+3636
.LBE8725:
.LBE8724:
	.cfi_endproc
.LFE441:
	.size	flushTable, .-flushTable
	.align	2
	.global	unmapPageTable
	.syntax unified
	.arm
	.fpu softvfp
	.type	unmapPageTable, %function
unmapPageTable:
.LFB434:
	.loc 11 1281 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1753:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	mov	r4, r1
	str	r6, [sp, #8]
	mov	r6, r2
	str	lr, [sp, #12]
	.loc 11 1285 0
	bl	pageTableMapped
.LVL1754:
	.loc 11 1287 0
	subs	r2, r0, #0
	beq	.L1898
.LVL1755:
	.loc 11 1288 0
	lsr	lr, r4, #21
.LVL1756:
	.loc 11 1291 0
	mov	ip, #0
	.loc 11 1289 0
	add	r1, r2, lr, lsl #3
.LVL1757:
	.loc 11 1291 0
	str	ip, [r2, lr, lsl #3]
	str	ip, [r1, #4]
.LVL1758:
.LBB8726:
.LBB8727:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r1, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8728:
.LBB8729:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1759:
	.arm
	.syntax unified
.LBE8729:
.LBE8728:
.LBE8727:
.LBE8726:
	.loc 11 1293 0
	mov	r3, r6
	mov	r2, r4
	.loc 11 1295 0
	ldr	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 6
.LVL1760:
	.loc 11 1293 0
	mov	r1, r5
.LVL1761:
	.loc 11 1295 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1762:
	ldr	lr, [sp, #12]
	.cfi_restore 14
.LVL1763:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 11 1293 0
	b	flushTable
.LVL1764:
.L1898:
	.cfi_restore_state
	.loc 11 1295 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1765:
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL1766:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE434:
	.size	unmapPageTable, .-unmapPageTable
	.align	2
	.global	Arch_finaliseCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_finaliseCap, %function
Arch_finaliseCap:
.LFB501:
	.loc 13 153 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1767:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 13 153 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldr	ip, [sp]
	ldr	r0, [sp, #4]
.LVL1768:
.LBB8730:
.LBB8731:
	.loc 36 903 0
	and	r2, ip, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, ip
.LVL1769:
	.loc 36 904 0
	andne	r2, ip, #15
.LBE8731:
.LBE8730:
	.loc 13 154 0
	sub	r2, r2, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L1904
.L1906:
	.word	.L1905
	.word	.L1904
	.word	.L1907
	.word	.L1904
	.word	.L1908
	.word	.L1904
	.word	.L1909
	.word	.L1904
	.word	.L1910
	.word	.L1904
	.word	.L1904
	.word	.L1904
	.word	.L1904
	.word	.L1904
	.word	.L1911
.L1911:
	.loc 13 229 0
	cmp	r3, #0
	beq	.L1904
.LVL1770:
.LBB8732:
.LBB8733:
	.loc 36 2221 0
	uxtb	r3, ip
.LVL1771:
	cmp	r3, #15
	bne	.L1946
.LVL1772:
	.loc 36 2224 0
	bic	r0, ip, #255
.LVL1773:
.LBE8733:
.LBE8732:
.LBB8735:
.LBB8736:
	.loc 25 907 0
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.L1904
	.loc 25 908 0
	bl	dissociateVCPUTCB
.LVL1774:
.L1904:
.LBE8736:
.LBE8735:
.LBB8737:
.LBB8738:
	.loc 36 926 0
	mov	r3, #0
.LBE8738:
.LBE8737:
	.loc 13 254 0
	mov	r0, r4
.LBB8740:
.LBB8739:
	.loc 36 926 0
	str	r3, [r4]
	str	r3, [r4, #4]
.LVL1775:
.LBE8739:
.LBE8740:
	.loc 13 254 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL1776:
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1777:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1778:
.L1905:
	.cfi_restore_state
.LBB8741:
.LBB8742:
.LBB8743:
.LBB8744:
	.loc 36 1601 0
	and	r3, ip, #15
.LVL1779:
	cmp	r3, #1
	bne	.L1947
.LVL1780:
.LBE8744:
.LBE8743:
	.loc 38 144 0
	lsr	r1, ip, #14
	and	r1, r1, #130048
.LBE8742:
.LBE8741:
	.loc 13 179 0
	adds	r1, r1, r0, lsr #22
	beq	.L1904
.LVL1781:
.LBB8746:
.LBB8747:
	.loc 36 1630 0
	mov	r3, #61440
.LBE8747:
.LBE8746:
	.loc 13 187 0
	lsl	r2, r0, #12
.LBB8749:
.LBB8748:
	.loc 36 1630 0
	movt	r3, 65535
.LBE8748:
.LBE8749:
	.loc 13 187 0
	and	r3, r3, ip, lsl #8
	mov	r0, #0
.LVL1782:
	bl	unmapPage
.LVL1783:
	b	.L1904
.LVL1784:
.L1907:
.LBB8750:
.LBB8751:
.LBB8752:
.LBB8753:
	.loc 36 1775 0
	and	r3, ip, #15
.LVL1785:
	cmp	r3, #3
	bne	.L1948
.LVL1786:
.LBE8753:
.LBE8752:
	.loc 38 160 0
	lsr	r1, ip, #12
.LBB8754:
.LBB8755:
	.loc 36 1686 0
	ubfx	r3, r0, #20, #10
.LBE8755:
.LBE8754:
	.loc 38 160 0
	and	r1, r1, #130048
.LBE8751:
.LBE8750:
	.loc 13 195 0
	orrs	r1, r1, r3
	beq	.L1904
.LVL1787:
.LBB8757:
.LBB8758:
	.loc 36 1804 0
	mov	r3, #49152
.LBE8758:
.LBE8757:
	.loc 13 220 0
	lsl	r2, r0, #14
.LBB8760:
.LBB8759:
	.loc 36 1804 0
	movt	r3, 65535
.LBE8759:
.LBE8760:
	.loc 13 220 0
	and	r3, r3, ip, lsl #10
	lsr	r0, r0, #30
.LVL1788:
	bl	unmapPage
.LVL1789:
	b	.L1904
.LVL1790:
.L1908:
	.loc 13 156 0
	cmp	r3, #0
	beq	.L1904
.LVL1791:
.LBB8761:
.LBB8762:
	.loc 36 1833 0
	and	r3, ip, #15
.LVL1792:
	cmp	r3, #5
	bne	.L1949
.LBE8762:
.LBE8761:
	.loc 13 157 0
	bic	r1, ip, #15
	ubfx	r0, r0, #0, #17
.LVL1793:
	bl	deleteASIDPool
.LVL1794:
	b	.L1904
.LVL1795:
.L1909:
	.loc 13 170 0
	cmp	r3, #0
	beq	.L1904
.LVL1796:
.LBB8764:
.LBB8765:
	.loc 36 1883 0 discriminator 1
	and	r3, ip, #15
.LVL1797:
	cmp	r3, #7
	bne	.L1950
.LBE8765:
.LBE8764:
	.loc 13 170 0
	tst	r0, #536870912
	beq	.L1904
.LVL1798:
	.loc 13 171 0
	bic	r2, ip, #1020
	lsl	r1, r0, #21
	bic	r2, r2, #3
	ubfx	r0, r0, #12, #17
.LVL1799:
	bl	unmapPageTable
.LVL1800:
	b	.L1904
.LVL1801:
.L1910:
	.loc 13 163 0
	cmp	r3, #0
	beq	.L1904
.LVL1802:
.LBB8767:
.LBB8768:
	.loc 36 2049 0 discriminator 1
	and	r3, ip, #15
.LVL1803:
	cmp	r3, #9
	bne	.L1951
.LVL1804:
.LBE8768:
.LBE8767:
	.loc 13 163 0
	tst	ip, #16
	beq	.L1904
.LVL1805:
	.loc 13 164 0
	bic	r1, ip, #16320
	ubfx	r0, r0, #0, #17
.LVL1806:
	bic	r1, r1, #63
	bl	deleteASID
.LVL1807:
	b	.L1904
.LVL1808:
.L1948:
.LBB8770:
.LBB8756:
	bl	cap_frame_cap_get_capFMappedASID.part.157
.LVL1809:
.L1947:
.LBE8756:
.LBE8770:
.LBB8771:
.LBB8745:
	bl	cap_small_frame_cap_get_capFMappedASID.part.155
.LVL1810:
.L1946:
.LBE8745:
.LBE8771:
.LBB8772:
.LBB8734:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL1811:
.L1951:
.LBE8734:
.LBE8772:
.LBB8773:
.LBB8769:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL1812:
.L1950:
.LBE8769:
.LBE8773:
.LBB8774:
.LBB8766:
	bl	cap_page_table_cap_get_capPTIsMapped.part.144
.LVL1813:
.L1949:
.LBE8766:
.LBE8774:
.LBB8775:
.LBB8763:
	bl	cap_asid_pool_cap_get_capASIDBase.part.211
.LVL1814:
.LBE8763:
.LBE8775:
	.cfi_endproc
.LFE501:
	.size	Arch_finaliseCap, .-Arch_finaliseCap
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	performPageFlush, %function
performPageFlush:
.LFB459:
	.loc 11 2127 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1815:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	ldr	r4, [sp, #24]
	strd	r6, [sp, #8]
	str	r8, [sp, #16]
	str	lr, [sp, #20]
	.loc 11 2131 0
	cmp	r3, r4
	bcc	.L1990
.LVL1816:
.L1954:
	.loc 11 2142 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	mov	r0, #0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1817:
.L1990:
	.cfi_restore_state
	mov	ip, r1
	mov	r6, r0
	.loc 11 2132 0
	mov	r1, r2
.LVL1818:
	mov	r0, ip
.LVL1819:
	mov	r7, r3
	bl	setVMRootForFlush
.LVL1820:
.LBB8825:
.LBB8826:
.LBB8827:
.LBB8828:
	.loc 19 23 0
	ldr	r3, [sp, #28]
.LBE8828:
.LBE8827:
.LBE8826:
.LBE8825:
	.loc 11 2132 0
	mov	r5, r0
.LVL1821:
.LBB8876:
.LBB8874:
	.loc 11 1893 0
	sub	r2, r6, #28
.LBB8830:
.LBB8829:
	.loc 19 23 0
	add	r0, r3, #-2147483648
.LVL1822:
.LBE8829:
.LBE8830:
	.loc 11 1890 0
	add	r4, r4, r0
.LVL1823:
	sub	r1, r4, r7
.LVL1824:
	.loc 11 1893 0
	cmp	r2, #16
	ldrls	pc, [pc, r2, asl #2]
	b	.L1955
.L1957:
	.word	.L1956
	.word	.L1958
	.word	.L1959
	.word	.L1960
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1955
	.word	.L1956
	.word	.L1958
	.word	.L1959
	.word	.L1960
.L1960:
.LVL1825:
.LBB8831:
.LBB8832:
	.loc 16 96 0
	lsr	r3, r1, #6
	lsr	r0, r0, #6
.LVL1826:
	add	r3, r3, #1
	cmp	r0, r3
	lslcc	r2, r0, #6
	lslcc	r1, r3, #6
.LVL1827:
	bcs	.L1975
.LVL1828:
.L1974:
.LBB8833:
.LBB8834:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8835:
.LBB8836:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1829:
	.arm
	.syntax unified
	add	r2, r2, #64
.LVL1830:
.LBE8836:
.LBE8835:
.LBE8834:
.LBE8833:
	.loc 16 96 0
	cmp	r2, r1
	bne	.L1974
.LVL1831:
.L1975:
.LBE8832:
.LBE8831:
.LBB8837:
.LBB8838:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL1832:
	.arm
	.syntax unified
.LBE8838:
.LBE8837:
.LBB8839:
.LBB8840:
	.loc 16 151 0
	cmp	r0, r3
	lslcc	r0, r0, #6
.LVL1833:
	lslcc	r3, r3, #6
	movcc	r2, r0
	bcs	.L1973
.LVL1834:
.L1976:
.LBB8841:
.LBB8842:
	.loc 17 318 0
	.syntax divided
@ 318 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c7, c5, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8843:
.LBB8844:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL1835:
	.arm
	.syntax unified
	add	r2, r2, #64
.LVL1836:
.LBE8844:
.LBE8843:
.LBE8842:
.LBE8841:
	.loc 16 151 0
	cmp	r3, r2
	bne	.L1976
.L1981:
.LVL1837:
.LBE8840:
.LBE8839:
.LBB8845:
.LBB8846:
.LBB8847:
.LBB8848:
	.loc 17 352 0
	.syntax divided
@ 352 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c5, 7
@ 0 "" 2
.LVL1838:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL1839:
.LBE8848:
.LBE8847:
	.loc 16 163 0
	cmp	r2, r0
	bne	.L1981
.LVL1840:
.L1973:
.LBE8846:
.LBE8845:
.LBB8849:
.LBB8850:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1962
.LVL1841:
.L1959:
.LBE8850:
.LBE8849:
.LBB8851:
.LBB8852:
.LBB8853:
.LBB8854:
	.loc 16 26 0
	lsr	r3, r1, #6
	lsr	r0, r0, #6
.LVL1842:
	add	r3, r3, #1
	cmp	r0, r3
	lslcc	r2, r0, #6
	lslcc	r1, r3, #6
.LVL1843:
	bcs	.L1969
.LVL1844:
.L1968:
.LBB8855:
.LBB8856:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r2, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8857:
.LBB8858:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1845:
	.arm
	.syntax unified
	add	r2, r2, #64
.LVL1846:
.LBE8858:
.LBE8857:
.LBE8856:
.LBE8855:
	.loc 16 26 0
	cmp	r1, r2
	bne	.L1968
.LVL1847:
.L1969:
.LBE8854:
.LBE8853:
.LBB8859:
.LBB8860:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL1848:
	.arm
	.syntax unified
.LBE8860:
.LBE8859:
	.loc 16 54 0
	cmp	r0, r3
	lslcc	r0, r0, #6
.LVL1849:
	lslcc	r3, r3, #6
	bcs	.L1967
.LVL1850:
.L1970:
.LBB8861:
.LBB8862:
	.loc 17 344 0
	.syntax divided
@ 344 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c14, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8863:
.LBB8864:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL1851:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL1852:
.LBE8864:
.LBE8863:
.LBE8862:
.LBE8861:
	.loc 16 54 0
	cmp	r3, r0
	bne	.L1970
.LVL1853:
.L1967:
.LBB8865:
.LBB8866:
	.loc 2 21 0
	.syntax divided
@ 21 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
	b	.L1962
.LVL1854:
.L1956:
.LBE8866:
.LBE8865:
.LBE8852:
.LBE8851:
.LBB8867:
.LBB8868:
.LBB8869:
	.loc 16 26 0
	lsr	r3, r1, #6
	lsr	r0, r0, #6
.LVL1855:
	add	r3, r3, #1
	cmp	r0, r3
	bcs	.L1967
	lsl	r0, r0, #6
.LVL1856:
	lsl	r3, r3, #6
.LVL1857:
.L1963:
.LBB8870:
.LBB8871:
	.loc 17 266 0
	.syntax divided
@ 266 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r0, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8872:
.LBB8873:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL1858:
	.arm
	.syntax unified
	add	r0, r0, #64
.LVL1859:
.LBE8873:
.LBE8872:
.LBE8871:
.LBE8870:
	.loc 16 26 0
	cmp	r0, r3
	bne	.L1963
	b	.L1967
.LVL1860:
.L1958:
.LBE8869:
.LBE8868:
.LBE8867:
	.loc 11 1900 0
	ldr	r2, [sp, #28]
	bl	invalidateCacheRange_RAM
.LVL1861:
.L1962:
.LBE8874:
.LBE8876:
	.loc 11 2136 0
	cmp	r5, #0
	beq	.L1954
	.loc 11 2137 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setVMRoot
.LVL1862:
	b	.L1954
.LVL1863:
.L1955:
.LBB8877:
.LBB8875:
	.loc 11 1922 0
	movw	r1, #:lower16:.LC26
.LVL1864:
	movw	r0, #:lower16:.LC126
	ldr	r3, .L1991
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC126
	movw	r2, #1922
	bl	_fail
.LVL1865:
.L1992:
	.align	2
.L1991:
	.word	.LANCHOR3+3648
.LBE8875:
.LBE8877:
	.cfi_endproc
.LFE459:
	.size	performPageFlush, .-performPageFlush
	.set	performPDFlush,performPageFlush
	.section	.boot.text
	.align	2
	.global	map_kernel_devices
	.syntax unified
	.arm
	.fpu softvfp
	.type	map_kernel_devices, %function
map_kernel_devices:
.LFB496:
	.loc 12 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1866:
.LBB8881:
	.loc 12 54 0
	mov	r1, #8192
	mov	r0, #0
.LBE8881:
	.loc 12 52 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB8888:
	.loc 12 54 0
	movt	r1, 65520
	movt	r0, 4124
	ldr	r4, .L1999
	mov	r3, #4
	mov	r2, #1
.LBE8888:
	.loc 12 52 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB8889:
	.loc 12 54 0
	bl	map_kernel_frame
.LVL1867:
	mov	r3, #1
.LVL1868:
	mov	r1, #20480
.LBB8882:
.LBB8883:
	.loc 36 408 0
	bics	r2, r3, #1
.LBE8883:
.LBE8882:
	.loc 12 54 0
	mov	r0, #8192
	add	r5, r4, #48
	movt	r1, 65520
	movt	r0, 4168
.LBB8886:
.LBB8884:
	.loc 36 408 0
	bne	.L1998
.L1994:
.LVL1869:
	.loc 36 413 0
	lsl	r3, r3, #2
	add	r4, r4, #12
.LBE8884:
.LBE8886:
	.loc 12 54 0
	mov	r2, #1
	and	r3, r3, #4
	bl	map_kernel_frame
.LVL1870:
	.loc 12 53 0
	cmp	r5, r4
	beq	.L1993
	ldrd	r0, [r4, #12]
	ldr	r3, [r4, #20]
.LVL1871:
.LBB8887:
.LBB8885:
	.loc 36 408 0
	bics	r2, r3, #1
	beq	.L1994
.L1998:
	bl	vm_attributes_new.part.120
.LVL1872:
.L1993:
.LBE8885:
.LBE8887:
.LBE8889:
	.loc 12 60 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L2000:
	.align	2
.L1999:
	.word	.LANCHOR0+1800
	.cfi_endproc
.LFE496:
	.size	map_kernel_devices, .-map_kernel_devices
	.text
	.align	2
	.global	handleVMFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleVMFault, %function
handleVMFault:
.LFB436:
	.loc 11 1322 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1873:
	.loc 11 1323 0
	cmp	r1, #0
	beq	.L2003
	cmp	r1, #1
	bne	.L2010
.LVL1874:
.LBB8925:
.LBB8926:
.LBB8927:
.LBB8928:
	.loc 10 36 0
	ldr	r1, [r0, #68]
.LVL1875:
.LBE8928:
.LBE8927:
.LBE8926:
.LBB8929:
.LBB8930:
	.loc 18 90 0
	.syntax divided
@ 90 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr  p15, 0, r1, c7, c8, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB8931:
.LBB8932:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8932:
.LBE8931:
	.loc 18 92 0
	.syntax divided
@ 92 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrrc p15, 0, r3, r2, c7
@ 0 "" 2
.LVL1876:
	.arm
	.syntax unified
.LBE8930:
.LBE8929:
.LBB8933:
.LBB8934:
	.loc 18 100 0
	.syntax divided
@ 100 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r2, c5, c2, 0
@ 0 "" 2
.LVL1877:
	.arm
	.syntax unified
.LBE8934:
.LBE8933:
	.loc 11 1360 0
	bic	r3, r3, #4080
.LVL1878:
.LBB8935:
.LBB8936:
	.loc 36 2699 0
	lsl	r2, r2, #6
.LBE8936:
.LBE8935:
	.loc 11 1360 0
	ubfx	r0, r1, #0, #12
.LVL1879:
	bic	r3, r3, #15
	.loc 11 1382 0
	movw	r1, #:lower16:current_fault
	.loc 11 1360 0
	orr	r3, r3, r0
.LBB8938:
.LBB8937:
	.loc 36 2699 0
	orr	r2, r2, #13
.LBE8937:
.LBE8938:
	.loc 11 1382 0
	movt	r1, #:upper16:current_fault
.LBE8925:
	.loc 11 1389 0
	mov	r0, #1
.LBB8939:
	.loc 11 1382 0
	strd	r2, [r1]
.LBE8939:
	.loc 11 1389 0
	bx	lr
.LVL1880:
.L2010:
	.loc 11 1387 0
	movw	r1, #:lower16:.LC26
.LVL1881:
	movw	r0, #:lower16:.LC127
.LVL1882:
	.loc 11 1322 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1387 0
	ldr	r3, .L2011
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC127
	movw	r2, #1387
	.loc 11 1322 0
	str	lr, [sp, #4]
	.loc 11 1387 0
	bl	_fail
.LVL1883:
.L2003:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
.LBB8940:
.LBB8941:
.LBB8942:
.LBB8943:
.LBB8944:
	.loc 18 107 0
	.syntax divided
@ 107 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r1, c6, c0, 0
@ 0 "" 2
.LVL1884:
	.arm
	.syntax unified
.LBE8944:
.LBE8943:
.LBB8945:
.LBB8946:
	.loc 18 90 0
	.syntax divided
@ 90 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mcr  p15, 0, r1, c7, c8, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB8947:
.LBB8948:
	.loc 2 31 0
	.syntax divided
@ 31 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8948:
.LBE8947:
	.loc 18 92 0
	.syntax divided
@ 92 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrrc p15, 0, r3, r2, c7
@ 0 "" 2
.LVL1885:
	.arm
	.syntax unified
.LBE8946:
.LBE8945:
.LBB8949:
.LBB8950:
	.loc 18 100 0
	.syntax divided
@ 100 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 4, r2, c5, c2, 0
@ 0 "" 2
.LVL1886:
	.arm
	.syntax unified
.LBE8950:
.LBE8949:
	.loc 11 1329 0
	bic	r3, r3, #4080
.LVL1887:
.LBB8951:
.LBB8952:
	.loc 36 2699 0
	lsl	r2, r2, #6
.LBE8952:
.LBE8951:
	.loc 11 1329 0
	ubfx	r0, r1, #0, #12
.LVL1888:
	bic	r3, r3, #15
	.loc 11 1350 0
	movw	r1, #:lower16:current_fault
	.loc 11 1329 0
	orr	r3, r3, r0
.LBB8954:
.LBB8953:
	.loc 36 2699 0
	orr	r2, r2, #5
.LBE8953:
.LBE8954:
	.loc 11 1350 0
	movt	r1, #:upper16:current_fault
.LBE8942:
.LBE8941:
.LBE8940:
	.loc 11 1389 0
	mov	r0, #1
.LBB8957:
.LBB8956:
.LBB8955:
	.loc 11 1350 0
	strd	r2, [r1]
.LBE8955:
.LBE8956:
.LBE8957:
	.loc 11 1389 0
	bx	lr
.L2012:
	.align	2
.L2011:
	.word	.LANCHOR3+3656
	.cfi_endproc
.LFE436:
	.size	handleVMFault, .-handleVMFault
	.align	2
	.global	lookupSlotForCNodeOp
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupSlotForCNodeOp, %function
lookupSlotForCNodeOp:
.LFB686:
	.loc 45 75 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1889:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r1
	mov	r4, r0
	str	lr, [sp, #8]
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	.loc 45 75 0
	add	ip, sp, #8
	ldr	r1, [sp, #52]
.LVL1890:
	stm	ip, {r2, r3}
	mov	r3, r2
.LVL1891:
.LBB8962:
.LBB8963:
	.loc 36 903 0
	and	r2, r2, #14
.LVL1892:
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL1893:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE8963:
.LBE8962:
	.loc 45 81 0
	cmp	r3, #10
	bne	.L2023
	.loc 45 89 0
	sub	r3, r1, #1
	cmp	r3, #31
	bhi	.L2024
	.loc 45 96 0
	ldr	r3, [sp, #48]
	str	r1, [sp]
	add	r0, sp, #20
.LVL1894:
	ldm	ip, {r1, r2}
	bl	resolveAddressBits
.LVL1895:
	.loc 45 97 0
	ldr	r2, [sp, #20]
	.loc 45 96 0
	ldr	r3, [sp, #28]
.LVL1896:
	.loc 45 97 0
	cmp	r2, #0
	bne	.L2025
	.loc 45 105 0
	cmp	r3, #0
	bne	.L2026
	.loc 45 114 0
	ldr	r2, [sp, #24]
.LVL1897:
	.loc 45 116 0
	str	r3, [r4]
	str	r2, [r4, #4]
.LVL1898:
.L2013:
	.loc 45 117 0
	mov	r0, r4
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL1899:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL1900:
.L2023:
	.cfi_restore_state
	.loc 45 82 0
	movw	r2, #:lower16:current_syscall_error
	.loc 45 84 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r1, #0
	.loc 45 82 0
	movt	r2, #:upper16:current_syscall_error
	.loc 45 84 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 45 82 0
	mov	ip, #6
	.loc 45 86 0
	mov	r0, #3
.LVL1901:
	.loc 45 83 0
	str	r5, [r2, #20]
.LVL1902:
	.loc 45 82 0
	str	ip, [r2, #24]
	.loc 45 84 0
	str	r1, [r3]
	str	r1, [r3, #4]
.LVL1903:
	.loc 45 86 0
	strd	r0, [r4]
	b	.L2013
.LVL1904:
.L2024:
	.loc 45 90 0
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #4
.LVL1905:
	movt	r3, #:upper16:current_syscall_error
	.loc 45 91 0
	mov	lr, #1
	.loc 45 92 0
	mov	ip, #32
	.loc 45 94 0
	mov	r1, #3
	mov	r2, #0
	.loc 45 91 0
	str	lr, [r3, #8]
	.loc 45 92 0
	str	ip, [r3, #12]
.LVL1906:
	.loc 45 90 0
	str	r0, [r3, #24]
	.loc 45 94 0
	stm	r4, {r1, r2}
	b	.L2013
.LVL1907:
.L2025:
	.loc 45 98 0
	movw	r3, #:lower16:current_syscall_error
.LVL1908:
	mov	r0, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 45 102 0
	mov	r1, #3
	mov	r2, #0
	.loc 45 99 0
	str	r5, [r3, #20]
.LVL1909:
	.loc 45 98 0
	str	r0, [r3, #24]
	.loc 45 102 0
	stm	r4, {r1, r2}
	b	.L2013
.LVL1910:
.L2026:
	.loc 45 106 0
	movw	r2, #:lower16:current_syscall_error
	mov	r0, #6
	movt	r2, #:upper16:current_syscall_error
.LBB8964:
.LBB8965:
	.loc 36 583 0
	bics	r1, r3, #63
.LBE8965:
.LBE8964:
	.loc 45 107 0
	str	r5, [r2, #20]
.LVL1911:
	.loc 45 106 0
	str	r0, [r2, #24]
.LBB8969:
.LBB8966:
	.loc 36 583 0
	bne	.L2027
.LVL1912:
	.loc 36 588 0
	lsl	r3, r3, #2
.LVL1913:
.LBE8966:
.LBE8969:
	.loc 45 108 0
	movw	r2, #:lower16:current_lookup_fault
	movt	r2, #:upper16:current_lookup_fault
.LBB8970:
.LBB8967:
	.loc 36 589 0
	orr	r3, r3, #2
.LBE8967:
.LBE8970:
	.loc 45 111 0
	mov	r0, #3
	.loc 45 108 0
	str	r3, [r2]
	str	r1, [r2, #4]
.LVL1914:
	.loc 45 111 0
	strd	r0, [r4]
	b	.L2013
.LVL1915:
.L2027:
.LBB8971:
.LBB8968:
	.loc 36 583 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC46
	ldr	r3, .L2028
.LVL1916:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC46
	movw	r2, #583
	bl	_assert_fail
.LVL1917:
.L2029:
	.align	2
.L2028:
	.word	.LANCHOR3+2964
.LBE8968:
.LBE8971:
	.cfi_endproc
.LFE686:
	.size	lookupSlotForCNodeOp, .-lookupSlotForCNodeOp
	.align	2
	.global	lookupTargetSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupTargetSlot, %function
lookupTargetSlot:
.LFB688:
	.loc 45 127 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1918:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 45 127 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	.loc 45 128 0
	str	r3, [sp]
	.loc 45 127 0
	stm	ip, {r1, r2}
	.loc 45 128 0
	ldm	ip, {r2, r3}
.LVL1919:
	mov	r1, #0
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL1920:
	.loc 45 129 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1921:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE688:
	.size	lookupTargetSlot, .-lookupTargetSlot
	.align	2
	.global	lookupPivotSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupPivotSlot, %function
lookupPivotSlot:
.LFB689:
	.loc 45 133 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1922:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 45 133 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	.loc 45 134 0
	str	r3, [sp]
	.loc 45 133 0
	stm	ip, {r1, r2}
	.loc 45 134 0
	ldm	ip, {r2, r3}
.LVL1923:
	mov	r1, #1
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL1924:
	.loc 45 135 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL1925:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE689:
	.size	lookupPivotSlot, .-lookupPivotSlot
	.align	2
	.global	lookupSourceSlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupSourceSlot, %function
lookupSourceSlot:
.LFB1184:
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	stm	ip, {r1, r2}
	ldm	ip, {r1, r2}
	str	lr, [sp]
	bl	lookupPivotSlot
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE1184:
	.size	lookupSourceSlot, .-lookupSourceSlot
	.section	.boot.text
	.align	2
	.global	write_slot
	.syntax unified
	.arm
	.fpu softvfp
	.type	write_slot, %function
write_slot:
.LFB664:
	.loc 26 121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1926:
	.loc 26 121 0
	strd	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 26 121 0
	add	r3, sp, #8
	stmdb	r3, {r1, r2}
	.loc 26 122 0
	ldrd	r4, [sp]
	.loc 26 124 0
	mov	r2, #0
.LBB8978:
.LBB8979:
	.loc 36 340 0
	mov	r3, #3
.LBE8979:
.LBE8978:
	.loc 26 122 0
	strd	r4, [r0]
.LVL1927:
.LBB8981:
.LBB8980:
	.loc 36 340 0
	strd	r2, [r0, #8]
.LVL1928:
.LBE8980:
.LBE8981:
	.loc 26 127 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE664:
	.size	write_slot, .-write_slot
	.align	2
	.global	create_domain_cap
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_domain_cap, %function
create_domain_cap:
.LFB667:
	.loc 26 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1929:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB9028:
.LBB9029:
	.loc 36 2199 0
	mov	r2, #0
.LBE9029:
.LBE9028:
	.loc 26 191 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	mov	r3, r0
.LBB9033:
.LBB9030:
	.loc 36 2199 0
	mov	ip, #62
.LBE9030:
.LBE9033:
	.loc 26 191 0
	stm	sp, {r0, r1}
	mov	r0, r1
.LBB9034:
.LBB9031:
	.loc 36 2199 0
	str	r2, [sp, #12]
.LVL1930:
.LBE9031:
.LBE9034:
.LBB9035:
.LBB9036:
.LBB9037:
.LBB9038:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE9038:
.LBE9037:
.LBE9036:
.LBE9035:
.LBB9105:
.LBB9032:
	.loc 36 2199 0
	str	ip, [sp, #8]
.LBE9032:
.LBE9105:
.LBB9106:
.LBB9103:
.LBB9040:
.LBB9039:
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL1931:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE9039:
.LBE9040:
	.loc 39 387 0
	sub	r2, r1, #2
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L2041
.L2043:
	.word	.L2042
	.word	.L2041
	.word	.L2044
	.word	.L2041
	.word	.L2045
	.word	.L2041
	.word	.L2075
	.word	.L2041
	.word	.L2047
	.word	.L2041
	.word	.L2048
	.word	.L2041
	.word	.L2075
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2075
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2049
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2041
	.word	.L2075
.L2075:
.LBB9041:
.LBB9042:
	.loc 38 398 0
	mov	r0, #176
.LVL1932:
.L2046:
.LBE9042:
.LBE9041:
.LBE9103:
.LBE9106:
	.loc 26 203 0
	add	r3, sp, #16
	ldmdb	r3, {r1, r2}
	bl	write_slot
.LVL1933:
	.loc 26 204 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL1934:
	@ sp needed
	ldr	pc, [sp], #4
.LVL1935:
.L2047:
	.cfi_restore_state
.LBB9107:
.LBB9104:
.LBB9073:
.LBB9074:
	.loc 36 1439 0
	and	r2, r3, #15
	cmp	r2, #10
	.loc 36 1442 0
	biceq	r3, r3, #31
.LVL1936:
	addeq	r0, r3, #176
.LVL1937:
	.loc 36 1439 0
	beq	.L2046
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL1938:
.L2048:
.LBE9074:
.LBE9073:
.LBB9075:
.LBB9076:
	.loc 36 1469 0
	and	r2, r3, #15
	cmp	r2, #12
	bne	.L2079
.LVL1939:
.L2069:
.LBE9076:
.LBE9075:
.LBB9078:
.LBB9069:
.LBB9043:
.LBB9044:
	.loc 36 1977 0
	bic	r3, r3, #1020
.LVL1940:
	bic	r3, r3, #3
	add	r0, r3, #176
.LVL1941:
	b	.L2046
.LVL1942:
.L2049:
.LBE9044:
.LBE9043:
.LBE9069:
.LBE9078:
.LBB9079:
.LBB9080:
.LBB9081:
.LBB9082:
.LBB9083:
.LBB9084:
	.loc 36 2177 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L2080
	.loc 36 2180 0
	lsr	r3, r3, #8
.LVL1943:
	and	r2, r3, #63
.LBE9084:
.LBE9083:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r3, #31
	beq	.L2056
	.loc 39 106 0
	and	r3, r3, #31
	mvn	r2, #0
	add	r3, r3, #1
	lsl	r3, r2, r3
.L2056:
.LVL1944:
.LBE9082:
.LBE9081:
	.loc 39 120 0
	and	r0, r0, r3
.LVL1945:
	add	r0, r0, #176
	b	.L2046
.LVL1946:
.L2042:
.LBE9080:
.LBE9079:
.LBB9090:
.LBB9091:
	.loc 36 1021 0
	and	r2, r3, #15
	cmp	r2, #2
	bne	.L2081
.LVL1947:
.L2071:
.LBE9091:
.LBE9090:
.LBB9093:
.LBB9070:
.LBB9046:
.LBB9047:
	.loc 36 1850 0
	bic	r3, r3, #15
.LVL1948:
	add	r0, r3, #176
.LVL1949:
	b	.L2046
.LVL1950:
.L2044:
.LBE9047:
.LBE9046:
.LBE9070:
.LBE9093:
.LBB9094:
.LBB9095:
	.loc 36 1059 0
	and	r3, r3, #15
.LVL1951:
	cmp	r3, #4
	.loc 36 1062 0
	biceq	r0, r0, #15
.LVL1952:
	addeq	r0, r0, #176
	.loc 36 1059 0
	beq	.L2046
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL1953:
.L2045:
.LBE9095:
.LBE9094:
.LBB9096:
.LBB9097:
	.loc 36 1277 0
	and	r2, r3, #15
	cmp	r2, #6
	beq	.L2071
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL1954:
.L2041:
.LBE9097:
.LBE9096:
.LBB9098:
.LBB9071:
	.loc 38 398 0
	sub	r2, r1, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L2075
.L2058:
	.word	.L2057
	.word	.L2075
	.word	.L2057
	.word	.L2075
	.word	.L2059
	.word	.L2075
	.word	.L2060
	.word	.L2075
	.word	.L2061
	.word	.L2075
	.word	.L2075
	.word	.L2075
	.word	.L2075
	.word	.L2075
	.word	.L2062
.L2061:
.LVL1955:
.LBB9049:
.LBB9050:
	.loc 36 2035 0
	and	r2, r3, #15
	cmp	r2, #9
	.loc 36 2038 0
	biceq	r3, r3, #16320
.LVL1956:
	biceq	r3, r3, #63
	addeq	r0, r3, #176
.LVL1957:
	.loc 36 2035 0
	beq	.L2046
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL1958:
.L2060:
.LBE9050:
.LBE9049:
.LBB9051:
.LBB9045:
	.loc 36 1974 0
	and	r2, r3, #15
	cmp	r2, #7
	beq	.L2069
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL1959:
.L2059:
.LBE9045:
.LBE9051:
.LBB9052:
.LBB9048:
	.loc 36 1847 0
	and	r2, r3, #15
	cmp	r2, #5
	beq	.L2071
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL1960:
.L2057:
.LBE9048:
.LBE9052:
.LBB9053:
.LBB9054:
	.loc 38 235 0
	bic	r2, r1, #2
	cmp	r2, #1
	bne	.L2082
	.loc 38 238 0
	cmp	r1, #1
	beq	.L2065
	cmp	r1, #3
	bne	.L2075
.LVL1961:
.LBB9055:
.LBB9056:
	.loc 36 1801 0
	and	r2, r3, #15
	cmp	r2, #3
	bne	.L2083
.LVL1962:
	.loc 36 1804 0
	mov	r2, #49152
	movt	r2, 65535
	and	r3, r2, r3, lsl #10
.LVL1963:
	add	r0, r3, #176
.LVL1964:
	b	.L2046
.LVL1965:
.L2062:
.LBE9056:
.LBE9055:
.LBE9054:
.LBE9053:
.LBB9065:
.LBB9066:
	.loc 36 2221 0
	uxtb	r2, r3
	cmp	r2, #15
	.loc 36 2224 0
	biceq	r3, r3, #255
.LVL1966:
	addeq	r0, r3, #176
.LVL1967:
	.loc 36 2221 0
	beq	.L2046
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL1968:
.L2065:
.LBE9066:
.LBE9065:
.LBB9067:
.LBB9063:
.LBB9058:
.LBB9059:
	.loc 36 1627 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L2084
.LVL1969:
	.loc 36 1630 0
	mov	r2, #61440
	movt	r2, 65535
	and	r3, r2, r3, lsl #8
.LVL1970:
	add	r0, r3, #176
.LVL1971:
	b	.L2046
.LVL1972:
.L2083:
.LBE9059:
.LBE9058:
.LBB9061:
.LBB9057:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL1973:
.L2081:
.LBE9057:
.LBE9061:
.LBE9063:
.LBE9067:
.LBE9071:
.LBE9098:
.LBB9099:
.LBB9092:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL1974:
.L2080:
.LBE9092:
.LBE9099:
.LBB9100:
.LBB9089:
.LBB9088:
.LBB9087:
.LBB9086:
.LBB9085:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL1975:
.L2079:
.LBE9085:
.LBE9086:
.LBE9087:
.LBE9088:
.LBE9089:
.LBE9100:
.LBB9101:
.LBB9077:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL1976:
.L2082:
.LBE9077:
.LBE9101:
.LBB9102:
.LBB9072:
.LBB9068:
.LBB9064:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL1977:
.L2084:
.LBB9062:
.LBB9060:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL1978:
.LBE9060:
.LBE9062:
.LBE9064:
.LBE9068:
.LBE9072:
.LBE9102:
.LBE9104:
.LBE9107:
	.cfi_endproc
.LFE667:
	.size	create_domain_cap, .-create_domain_cap
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	emptySlot, %function
emptySlot:
.LFB753:
	.file 52 "/home/sel4/work/work2/kernel/src/object/cnode.c"
	.loc 52 602 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1979:
	ldr	r3, [r0]
.LVL1980:
.LBB9144:
.LBB9145:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL1981:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE9145:
.LBE9144:
	.loc 52 603 0
	cmp	r3, #0
	bxeq	lr
.LVL1982:
.LBB9146:
.LBB9147:
	.loc 52 607 0
	ldrd	r2, [r0, #8]
.LVL1983:
.LBE9147:
.LBE9146:
	.loc 52 602 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL1984:
	str	lr, [sp, #4]
.LBB9176:
.LBB9175:
	.loc 52 611 0
	bics	r2, r2, #7
.LVL1985:
.LBB9148:
.LBB9149:
	.loc 36 271 0
	bic	ip, r3, #7
.LVL1986:
.LBE9149:
.LBE9148:
	.loc 52 611 0
	beq	.L2090
.LVL1987:
.LBB9150:
.LBB9151:
	.loc 36 283 0
	ldr	lr, [r2, #12]
	and	lr, lr, #7
	.loc 36 284 0
	orr	lr, lr, ip
	str	lr, [r2, #12]
.LVL1988:
.L2090:
.LBE9151:
.LBE9150:
	.loc 52 614 0
	cmp	ip, #0
	beq	.L2091
.LVL1989:
.LBB9152:
.LBB9153:
	.loc 36 367 0
	ldr	lr, [ip, #8]
	ldr	r4, [ip, #12]
	and	lr, lr, #7
.LBE9153:
.LBE9152:
.LBB9155:
.LBB9156:
	.loc 36 340 0
	orr	r3, r3, r4
.LVL1990:
	.loc 36 339 0
	bic	r4, r4, #1
	.loc 36 340 0
	and	r3, r3, #1
.LBE9156:
.LBE9155:
.LBB9158:
.LBB9154:
	.loc 36 368 0
	orr	r2, lr, r2
.LVL1991:
.LBE9154:
.LBE9158:
.LBB9159:
.LBB9157:
	.loc 36 340 0
	orr	r3, r3, r4
	strd	r2, [ip, #8]
.LVL1992:
.L2091:
.LBE9157:
.LBE9159:
	.loc 52 624 0
	movw	r2, #65535
	.loc 52 621 0
	mov	r3, #0
	.loc 52 624 0
	cmp	r1, r2
	.loc 52 621 0
	str	r3, [r0]
	str	r3, [r0, #4]
.LVL1993:
	.loc 52 622 0
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	.loc 52 624 0
	beq	.L2085
.LVL1994:
.LBB9160:
.LBB9161:
.LBB9162:
.LBB9163:
.LBB9164:
.LBB9165:
.LBB9166:
	.loc 7 149 0
	lsr	lr, r1, #5
	.loc 7 152 0
	movw	r2, #17023
	.loc 7 150 0
	and	r4, r1, #31
	.loc 7 152 0
	lsl	lr, lr, #2
	mov	r0, #1
.LVL1995:
	movt	r2, 65520
.LBE9166:
.LBE9165:
.LBE9164:
.LBE9163:
	.file 53 "/home/sel4/work/work2/kernel/src/object/interrupt.c"
	.loc 53 266 0
	movw	ip, #:lower16:intStateIRQTable
.LVL1996:
.LBB9173:
.LBB9171:
.LBB9169:
.LBB9167:
	.loc 7 152 0
	lsl	r0, r0, r4
	add	r2, lr, r2
.LBE9167:
.LBE9169:
.LBE9171:
.LBE9173:
	.loc 53 266 0
	movt	ip, #:upper16:intStateIRQTable
	str	r3, [ip, r1, lsl #2]
.LVL1997:
.LBB9174:
.LBB9172:
.LBB9170:
.LBB9168:
	.loc 7 152 0
	str	r0, [r2, #-255]
.LVL1998:
.L2085:
.LBE9168:
.LBE9170:
.LBE9172:
.LBE9174:
.LBE9162:
.LBE9161:
.LBE9160:
.LBE9175:
.LBE9176:
	.loc 52 628 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE753:
	.size	emptySlot, .-emptySlot
	.align	2
	.global	invokeVCPUReadReg
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeVCPUReadReg, %function
invokeVCPUReadReg:
.LFB643:
	.loc 25 975 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1999:
.LBB9221:
.LBB9222:
	.loc 25 561 0
	movw	ip, #:lower16:armHSCurVCPU
.LBE9222:
.LBE9221:
	.loc 25 977 0
	movw	r3, #:lower16:ksCurThread
	.loc 25 975 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB9259:
.LBB9255:
	.loc 25 561 0
	movt	ip, #:upper16:armHSCurVCPU
.LBE9255:
.LBE9259:
	.loc 25 977 0
	movt	r3, #:upper16:ksCurThread
.LBB9260:
.LBB9256:
	.loc 25 561 0
	ldr	ip, [ip]
.LBE9256:
.LBE9260:
	.loc 25 977 0
	ldr	r3, [r3]
.LVL2000:
	.loc 25 975 0
	str	lr, [sp, #4]
.LBB9261:
.LBB9257:
	.loc 25 561 0
	cmp	r0, ip
	bne	.L2104
	.loc 25 562 0
	cmp	r1, #15
	ldrls	pc, [pc, r1, asl #2]
	b	.L2105
.L2107:
	.word	.L2106
	.word	.L2108
	.word	.L2109
	.word	.L2110
	.word	.L2111
	.word	.L2112
	.word	.L2113
	.word	.L2114
	.word	.L2115
	.word	.L2116
	.word	.L2117
	.word	.L2118
	.word	.L2119
	.word	.L2120
	.word	.L2121
	.word	.L2122
.L2122:
.LBB9223:
.LBB9224:
	.loc 25 317 0
	.syntax divided
@ 317 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r12_fiq
@ 0 "" 2
.LVL2001:
	.arm
	.syntax unified
.L2124:
.LBE9224:
.LBE9223:
.LBE9257:
.LBE9261:
	.loc 25 979 0
	cmp	r2, #0
	beq	.L2143
.LVL2002:
.LBB9262:
.LBB9263:
.LBB9264:
	.loc 10 30 0
	mov	r0, #0
.LVL2003:
	mov	r2, #1
.LVL2004:
	stm	r3, {r0, r2}
.LBE9264:
.LBE9263:
.LBB9265:
.LBB9266:
.LBB9267:
	str	r1, [r3, #8]
.LVL2005:
.L2143:
.LBE9267:
.LBE9266:
.LBE9265:
.LBE9262:
	.loc 25 986 0
	mov	r0, r3
	mov	r1, #1
	bl	setThreadState
.LVL2006:
	.loc 25 988 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2007:
.L2106:
	.cfi_restore_state
.LBB9268:
.LBB9258:
	.loc 25 566 0
	movw	r1, #:lower16:armHSVCPUActive
.LVL2008:
	movt	r1, #:upper16:armHSVCPUActive
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.L2126
.LBB9225:
.LBB9226:
	.loc 18 128 0
	.syntax divided
@ 128 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine_pl2.h" 1
	mrc p15, 0, r1, c1, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
	b	.L2124
.LVL2009:
.L2108:
.LBE9226:
.LBE9225:
.LBB9227:
.LBB9228:
	.loc 25 121 0
	.syntax divided
@ 121 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_svc
@ 0 "" 2
.LVL2010:
	.arm
	.syntax unified
	b	.L2124
.LVL2011:
.L2109:
.LBE9228:
.LBE9227:
.LBB9229:
.LBB9230:
	.loc 25 135 0
	.syntax divided
@ 135 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, sp_svc
@ 0 "" 2
.LVL2012:
	.arm
	.syntax unified
	b	.L2124
.LVL2013:
.L2110:
.LBE9230:
.LBE9229:
.LBB9231:
.LBB9232:
	.loc 25 149 0
	.syntax divided
@ 149 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_abt
@ 0 "" 2
.LVL2014:
	.arm
	.syntax unified
	b	.L2124
.LVL2015:
.L2111:
.LBE9232:
.LBE9231:
.LBB9233:
.LBB9234:
	.loc 25 163 0
	.syntax divided
@ 163 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, sp_abt
@ 0 "" 2
.LVL2016:
	.arm
	.syntax unified
	b	.L2124
.LVL2017:
.L2112:
.LBE9234:
.LBE9233:
.LBB9235:
.LBB9236:
	.loc 25 177 0
	.syntax divided
@ 177 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_und
@ 0 "" 2
.LVL2018:
	.arm
	.syntax unified
	b	.L2124
.LVL2019:
.L2113:
.LBE9236:
.LBE9235:
.LBB9237:
.LBB9238:
	.loc 25 191 0
	.syntax divided
@ 191 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, sp_und
@ 0 "" 2
.LVL2020:
	.arm
	.syntax unified
	b	.L2124
.LVL2021:
.L2114:
.LBE9238:
.LBE9237:
.LBB9239:
.LBB9240:
	.loc 25 205 0
	.syntax divided
@ 205 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_irq
@ 0 "" 2
.LVL2022:
	.arm
	.syntax unified
	b	.L2124
.LVL2023:
.L2115:
.LBE9240:
.LBE9239:
.LBB9241:
.LBB9242:
	.loc 25 219 0
	.syntax divided
@ 219 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, sp_irq
@ 0 "" 2
.LVL2024:
	.arm
	.syntax unified
	b	.L2124
.LVL2025:
.L2116:
.LBE9242:
.LBE9241:
.LBB9243:
.LBB9244:
	.loc 25 233 0
	.syntax divided
@ 233 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, lr_fiq
@ 0 "" 2
.LVL2026:
	.arm
	.syntax unified
	b	.L2124
.LVL2027:
.L2117:
.LBE9244:
.LBE9243:
.LBB9245:
.LBB9246:
	.loc 25 247 0
	.syntax divided
@ 247 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, sp_fiq
@ 0 "" 2
.LVL2028:
	.arm
	.syntax unified
	b	.L2124
.LVL2029:
.L2118:
.LBE9246:
.LBE9245:
.LBB9247:
.LBB9248:
	.loc 25 261 0
	.syntax divided
@ 261 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r8_fiq
@ 0 "" 2
.LVL2030:
	.arm
	.syntax unified
	b	.L2124
.LVL2031:
.L2119:
.LBE9248:
.LBE9247:
.LBB9249:
.LBB9250:
	.loc 25 275 0
	.syntax divided
@ 275 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r9_fiq
@ 0 "" 2
.LVL2032:
	.arm
	.syntax unified
	b	.L2124
.LVL2033:
.L2120:
.LBE9250:
.LBE9249:
.LBB9251:
.LBB9252:
	.loc 25 289 0
	.syntax divided
@ 289 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r10_fiq
@ 0 "" 2
.LVL2034:
	.arm
	.syntax unified
	b	.L2124
.LVL2035:
.L2121:
.LBE9252:
.LBE9251:
.LBB9253:
.LBB9254:
	.loc 25 303 0
	.syntax divided
@ 303 "/home/sel4/work/work2/kernel/src/arch/arm/object/vcpu.c" 1
	mrs r1, r11_fiq
@ 0 "" 2
.LVL2036:
	.arm
	.syntax unified
	b	.L2124
.LVL2037:
.L2104:
.LBE9254:
.LBE9253:
	.loc 25 605 0
	cmp	r1, #15
	ldrls	pc, [pc, r1, asl #2]
	b	.L2125
.L2127:
	.word	.L2126
	.word	.L2128
	.word	.L2129
	.word	.L2130
	.word	.L2131
	.word	.L2132
	.word	.L2133
	.word	.L2134
	.word	.L2135
	.word	.L2136
	.word	.L2137
	.word	.L2138
	.word	.L2139
	.word	.L2140
	.word	.L2141
	.word	.L2142
.L2105:
	.loc 25 602 0
	movw	r1, #:lower16:.LC32
.LVL2038:
	movw	r0, #:lower16:.LC33
.LVL2039:
	ldr	r3, .L2148
.LVL2040:
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC33
	movw	r2, #602
.LVL2041:
	bl	_fail
.LVL2042:
.L2126:
	.loc 25 607 0
	ldr	r1, [r0, #4]
	b	.L2124
.LVL2043:
.L2142:
	.loc 25 637 0
	ldr	r1, [r0, #336]
.LVL2044:
	b	.L2124
.LVL2045:
.L2141:
	.loc 25 635 0
	ldr	r1, [r0, #332]
.LVL2046:
	b	.L2124
.LVL2047:
.L2140:
	.loc 25 633 0
	ldr	r1, [r0, #328]
.LVL2048:
	b	.L2124
.LVL2049:
.L2139:
	.loc 25 631 0
	ldr	r1, [r0, #324]
.LVL2050:
	b	.L2124
.LVL2051:
.L2138:
	.loc 25 629 0
	ldr	r1, [r0, #320]
.LVL2052:
	b	.L2124
.LVL2053:
.L2137:
	.loc 25 627 0
	ldr	r1, [r0, #316]
.LVL2054:
	b	.L2124
.LVL2055:
.L2136:
	.loc 25 625 0
	ldr	r1, [r0, #312]
.LVL2056:
	b	.L2124
.LVL2057:
.L2135:
	.loc 25 623 0
	ldr	r1, [r0, #308]
.LVL2058:
	b	.L2124
.LVL2059:
.L2134:
	.loc 25 621 0
	ldr	r1, [r0, #304]
.LVL2060:
	b	.L2124
.LVL2061:
.L2133:
	.loc 25 619 0
	ldr	r1, [r0, #300]
.LVL2062:
	b	.L2124
.LVL2063:
.L2132:
	.loc 25 617 0
	ldr	r1, [r0, #296]
.LVL2064:
	b	.L2124
.LVL2065:
.L2131:
	.loc 25 615 0
	ldr	r1, [r0, #292]
.LVL2066:
	b	.L2124
.LVL2067:
.L2130:
	.loc 25 613 0
	ldr	r1, [r0, #288]
.LVL2068:
	b	.L2124
.LVL2069:
.L2129:
	.loc 25 611 0
	ldr	r1, [r0, #284]
.LVL2070:
	b	.L2124
.LVL2071:
.L2128:
	.loc 25 609 0
	ldr	r1, [r0, #280]
.LVL2072:
	b	.L2124
.LVL2073:
.L2125:
	.loc 25 639 0
	movw	r1, #:lower16:.LC32
.LVL2074:
	movw	r0, #:lower16:.LC33
.LVL2075:
	ldr	r3, .L2148
.LVL2076:
	movt	r1, #:upper16:.LC32
	movt	r0, #:upper16:.LC33
	movw	r2, #639
.LVL2077:
	bl	_fail
.LVL2078:
.L2149:
	.align	2
.L2148:
	.word	.LANCHOR3+3672
.LBE9258:
.LBE9268:
	.cfi_endproc
.LFE643:
	.size	invokeVCPUReadReg, .-invokeVCPUReadReg
	.align	2
	.global	setMRs_fault
	.syntax unified
	.arm
	.fpu softvfp
	.type	setMRs_fault, %function
setMRs_fault:
.LFB348:
	.loc 37 193 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2079:
.LBB9398:
.LBB9399:
	.loc 36 2546 0
	ldr	r3, [r0, #464]
.LBE9399:
.LBE9398:
	.loc 37 193 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	ip, r0
	str	lr, [sp, #4]
	.loc 37 193 0
	mov	r4, r2
	mov	lr, r1
.LBB9401:
.LBB9400:
	.loc 36 2546 0
	and	r3, r3, #7
.LBE9400:
.LBE9401:
	.loc 37 194 0
	cmp	r3, #2
	beq	.L2152
	cmp	r3, #3
	beq	.L2153
	cmp	r3, #1
	beq	.L2189
	.loc 37 248 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 37 245 0
	b	Arch_setMRs_fault
.LVL2080:
.L2189:
	.cfi_restore_state
.LBB9402:
.LBB9403:
.LBB9404:
	.loc 10 30 0
	ldr	r3, [r0, #68]
	str	r3, [r1, #8]
.LVL2081:
.LBE9404:
.LBE9403:
.LBE9402:
.LBB9405:
.LBB9406:
	.loc 36 2588 0
	ldr	r3, [r0, #464]
	ldr	r2, [r0, #468]
.LVL2082:
	and	r3, r3, #7
	cmp	r3, #1
	bne	.L2190
.LVL2083:
.LBE9406:
.LBE9405:
.LBB9410:
.LBB9411:
.LBB9412:
	.loc 10 30 0
	str	r2, [r1, #12]
.LVL2084:
	ldr	r3, [r0, #464]
.LVL2085:
.LBE9412:
.LBE9411:
.LBE9410:
.LBB9413:
.LBB9414:
	.loc 36 2602 0
	and	r2, r3, #7
.LVL2086:
	cmp	r2, #1
	bne	.L2191
.LVL2087:
	.loc 36 2605 0
	lsr	r3, r3, #31
.LBE9414:
.LBE9413:
.LBB9416:
.LBB9417:
.LBB9418:
	.loc 10 30 0
	str	r3, [r1, #16]
.LVL2088:
	ldr	r2, [r0, #472]
.LVL2089:
	ldr	r0, [r0, #476]
.LVL2090:
.LBE9418:
.LBE9417:
.LBE9416:
.LBB9419:
.LBB9420:
.LBB9421:
.LBB9422:
	.loc 36 530 0
	and	r3, r2, #3
.LVL2091:
.LBE9422:
.LBE9421:
	.loc 37 37 0
	add	r1, r3, #1
.LVL2092:
	.loc 37 49 0
	cmp	r3, #2
.LBB9423:
.LBB9424:
.LBB9425:
	.loc 10 30 0
	str	r1, [lr, #20]
.LVL2093:
.LBE9425:
.LBE9424:
.LBE9423:
	.loc 37 49 0
	beq	.L2162
	cmp	r3, #3
	beq	.L2163
	cmp	r3, #1
	beq	.L2192
.LVL2094:
.L2184:
	.loc 37 51 0
	mov	r0, #4
.L2150:
.LBE9420:
.LBE9419:
	.loc 37 248 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL2095:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2096:
.L2153:
	.cfi_restore_state
.LBB9467:
.LBB9468:
.LBB9469:
.LBB9470:
	.loc 10 30 0
	ldr	r3, [r0, #68]
	str	r3, [r1, #8]
.LVL2097:
	ldr	r3, [r0, #52]
	str	r3, [r1, #12]
.LVL2098:
	ldr	r3, [r0, #64]
	str	r3, [r1, #16]
.LVL2099:
.LBE9470:
.LBE9469:
.LBE9468:
.LBE9467:
.LBB9471:
.LBB9472:
	.loc 36 2662 0
	ldr	r3, [r0, #464]
	ldr	r2, [r0, #468]
.LVL2100:
	and	r3, r3, #7
	cmp	r3, #3
	bne	.L2193
.LVL2101:
.LBE9472:
.LBE9471:
.LBB9474:
.LBB9475:
.LBB9476:
	.loc 10 30 0
	str	r2, [r1, #20]
.LVL2102:
	ldr	r3, [r0, #464]
.LVL2103:
.LBE9476:
.LBE9475:
.LBE9474:
.LBB9477:
.LBB9478:
	.loc 36 2676 0
	and	r2, r3, #7
.LVL2104:
	cmp	r2, #3
	bne	.L2194
.LVL2105:
.LBE9478:
.LBE9477:
.LBB9483:
.LBB9484:
.LBB9485:
	.file 54 "/home/sel4/work/work2/kernel/include/object/tcb.h"
	.loc 54 38 0
	cmp	r4, #0
	beq	.L2184
.LBE9485:
.LBE9484:
.LBE9483:
.LBB9488:
.LBB9481:
	.loc 36 2679 0
	lsr	r3, r3, #3
.LBE9481:
.LBE9488:
.LBB9489:
.LBB9487:
.LBB9486:
	.loc 54 40 0
	mov	r0, #5
.LVL2106:
	.loc 54 39 0
	str	r3, [r4, #20]
.LVL2107:
.LBE9486:
.LBE9487:
.LBE9489:
	.loc 37 248 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL2108:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2109:
.L2152:
	.cfi_restore_state
.LBB9490:
.LBB9491:
.LBB9492:
.LBB9493:
	.loc 10 30 0
	ldr	r3, [r0]
.LBE9493:
.LBE9492:
	.loc 37 111 0
	cmp	r2, #0
.LBB9495:
.LBB9494:
	.loc 10 30 0
	str	r3, [r1, #8]
.LVL2110:
	ldr	r3, [r0, #4]
	str	r3, [r1, #12]
.LVL2111:
	ldr	r3, [r0, #8]
	str	r3, [r1, #16]
.LVL2112:
	ldr	r3, [r0, #12]
	str	r3, [r1, #20]
.LVL2113:
.LBE9494:
.LBE9495:
	.loc 37 111 0
	beq	.L2157
	add	r3, r2, #16
	add	r0, r2, #48
.LVL2114:
	ldr	r1, .L2196
.LVL2115:
	mov	r2, #4
.LVL2116:
	b	.L2158
.LVL2117:
.L2195:
	ldr	r2, [r1], #4
.L2158:
.LVL2118:
.LBB9496:
.LBB9497:
	.loc 10 36 0
	ldr	r2, [ip, r2, lsl #2]
.LVL2119:
.LBE9497:
.LBE9496:
	.loc 37 113 0
	str	r2, [r3, #4]!
	.loc 37 112 0
	cmp	r0, r3
	bne	.L2195
.LVL2120:
.LBE9491:
.LBE9490:
.LBB9498:
.LBB9499:
	.loc 36 2631 0
	ldr	r3, [ip, #464]
	ldr	r2, [ip, #468]
.LVL2121:
	and	r3, r3, #7
	cmp	r3, #2
.LBE9499:
.LBE9498:
.LBB9502:
.LBB9503:
.LBB9504:
	.loc 54 40 0
	moveq	r0, #13
	.loc 54 39 0
	streq	r2, [r4, #52]
.LVL2122:
.LBE9504:
.LBE9503:
.LBE9502:
.LBB9505:
.LBB9500:
	.loc 36 2631 0
	beq	.L2150
.LVL2123:
.L2169:
	bl	seL4_Fault_UnknownSyscall_get_syscallNumber.part.83
.LVL2124:
.L2162:
.LBE9500:
.LBE9505:
.LBB9506:
.LBB9466:
.LBB9426:
.LBB9427:
.LBB9428:
	.loc 54 38 0
	cmp	r4, #0
	beq	.L2184
.LBE9428:
.LBE9427:
.LBE9426:
.LBB9431:
.LBB9432:
	.loc 36 615 0
	ubfx	r3, r2, #2, #6
.LBE9432:
.LBE9431:
.LBB9433:
.LBB9434:
	.loc 36 601 0
	ubfx	r2, r2, #8, #6
.LVL2125:
.LBE9434:
.LBE9433:
.LBB9435:
.LBB9436:
.LBB9437:
	.loc 54 40 0
	mov	r0, #6
.LVL2126:
.LBE9437:
.LBE9436:
.LBE9435:
.LBB9440:
.LBB9430:
.LBB9429:
	.loc 54 39 0
	str	r3, [r4, #20]
.LVL2127:
.LBE9429:
.LBE9430:
.LBE9440:
.LBB9441:
.LBB9439:
.LBB9438:
	str	r2, [r4, #24]
	b	.L2150
.LVL2128:
.L2192:
.LBE9438:
.LBE9439:
.LBE9441:
.LBB9442:
.LBB9443:
.LBB9444:
	.loc 54 38 0
	cmp	r4, #0
	beq	.L2184
.LBE9444:
.LBE9443:
.LBE9442:
.LBB9447:
.LBB9448:
	.loc 36 569 0
	ubfx	r2, r2, #2, #6
.LVL2129:
.LBE9448:
.LBE9447:
.LBB9449:
.LBB9446:
.LBB9445:
	.loc 54 40 0
	mov	r0, #5
.LVL2130:
	.loc 54 39 0
	str	r2, [r4, #20]
.LVL2131:
	b	.L2150
.LVL2132:
.L2163:
.LBE9445:
.LBE9446:
.LBE9449:
.LBB9450:
.LBB9451:
.LBB9452:
	.loc 54 38 0
	cmp	r4, #0
	beq	.L2184
.LBE9452:
.LBE9451:
.LBE9450:
.LBB9455:
.LBB9456:
	.loc 36 662 0
	ubfx	r3, r2, #8, #6
.LBE9456:
.LBE9455:
.LBB9457:
.LBB9458:
	.loc 36 676 0
	ubfx	r2, r2, #2, #6
.LVL2133:
.LBE9458:
.LBE9457:
.LBB9459:
.LBB9454:
.LBB9453:
	.loc 54 39 0
	str	r3, [r4, #20]
.LVL2134:
.LBE9453:
.LBE9454:
.LBE9459:
.LBB9460:
.LBB9461:
.LBB9462:
	str	r0, [r4, #24]
.LBE9462:
.LBE9461:
.LBE9460:
.LBB9463:
.LBB9464:
.LBB9465:
	.loc 54 40 0
	mov	r0, #7
.LVL2135:
	.loc 54 39 0
	str	r2, [r4, #28]
	b	.L2150
.LVL2136:
.L2157:
.LBE9465:
.LBE9464:
.LBE9463:
.LBE9466:
.LBE9506:
.LBB9507:
.LBB9501:
	.loc 36 2631 0
	ldr	r3, [r0, #464]
	and	r3, r3, #7
	cmp	r3, #2
	beq	.L2184
	b	.L2169
.LVL2137:
.L2193:
.LBE9501:
.LBE9507:
.LBB9508:
.LBB9473:
	bl	seL4_Fault_UserException_get_number.part.84
.LVL2138:
.L2191:
.LBE9473:
.LBE9508:
.LBB9509:
.LBB9415:
	bl	seL4_Fault_CapFault_get_inReceivePhase.isra.74.part.75
.LVL2139:
.L2194:
.LBE9415:
.LBE9509:
.LBB9510:
.LBB9482:
.LBB9479:
.LBB9480:
	.loc 36 2676 0
	movw	r1, #:lower16:.LC37
.LVL2140:
	movw	r0, #:lower16:.LC41
.LVL2141:
	ldr	r3, .L2196+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC41
	movw	r2, #2677
	bl	_assert_fail
.LVL2142:
.L2190:
.LBE9480:
.LBE9479:
.LBE9482:
.LBE9510:
.LBB9511:
.LBB9409:
.LBB9407:
.LBB9408:
	.loc 36 2588 0
	movw	r1, #:lower16:.LC37
.LVL2143:
	movw	r0, #:lower16:.LC38
.LVL2144:
	ldr	r3, .L2196+8
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC38
	movw	r2, #2589
.LVL2145:
	bl	_assert_fail
.LVL2146:
.L2197:
	.align	2
.L2196:
	.word	.LANCHOR3+1892
	.word	.LANCHOR3+3716
	.word	.LANCHOR3+3684
.LBE9408:
.LBE9407:
.LBE9409:
.LBE9511:
	.cfi_endproc
.LFE348:
	.size	setMRs_fault, .-setMRs_fault
	.align	2
	.global	doFaultTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	doFaultTransfer, %function
doFaultTransfer:
.LFB703:
	.loc 28 182 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2147:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r1
	mov	r4, r2
	str	r6, [sp, #8]
	.loc 28 186 0
	mov	r2, r3
.LVL2148:
	mov	r1, r4
.LVL2149:
	.loc 28 182 0
	mov	r6, r0
	.loc 28 186 0
	mov	r0, r5
.LVL2150:
	.loc 28 182 0
	str	lr, [sp, #12]
	.loc 28 186 0
	bl	setMRs_fault
.LVL2151:
.LBB9520:
.LBB9521:
	.loc 30 48 0
	bics	r3, r0, #127
	ldr	r3, [r5, #464]
.LVL2152:
	bne	.L2201
.LVL2153:
	.loc 30 51 0
	lsl	r3, r3, #12
.LVL2154:
.LBE9521:
.LBE9520:
.LBB9524:
.LBB9525:
	.loc 10 30 0
	str	r6, [r4]
.LVL2155:
.LBE9525:
.LBE9524:
	.loc 28 191 0
	ldr	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 6
.LVL2156:
.LBB9526:
.LBB9522:
	.loc 30 51 0
	and	r3, r3, #28672
	.loc 30 54 0
	orr	r0, r3, r0
.LVL2157:
.LBE9522:
.LBE9526:
.LBB9527:
.LBB9528:
	.loc 10 30 0
	str	r0, [r4, #4]
.LVL2158:
.LBE9528:
.LBE9527:
	.loc 28 191 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL2159:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2160:
.L2201:
	.cfi_restore_state
.LBB9529:
.LBB9523:
	.loc 30 48 0
	movw	r1, #:lower16:.LC76
	movw	r0, #:lower16:.LC128
.LVL2161:
	ldr	r3, .L2202
.LVL2162:
	movt	r1, #:upper16:.LC76
	movt	r0, #:upper16:.LC128
	mov	r2, #48
	bl	_assert_fail
.LVL2163:
.L2203:
	.align	2
.L2202:
	.word	.LANCHOR3+2292
.LBE9523:
.LBE9529:
	.cfi_endproc
.LFE703:
	.size	doFaultTransfer, .-doFaultTransfer
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	makeUserPDE.isra.204, %function
makeUserPDE.isra.204:
.LFB1079:
	.loc 11 1004 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2164:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	ip, [sp, #12]
.LVL2165:
	str	lr, [sp, #4]
.LBB9536:
.LBB9537:
	.loc 11 117 0
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L2205
.L2207:
	.word	.L2206
	.word	.L2206
	.word	.L2208
	.word	.L2219
.L2219:
	.loc 11 128 0
	mov	ip, #3
.LVL2166:
.L2209:
.LBE9537:
.LBE9536:
	.loc 11 1019 0
	cmp	r1, #2
	beq	.L2220
.L2223:
	cmp	r1, #3
	.loc 11 1025 0
	moveq	r1, #1
.LVL2167:
	.loc 11 1019 0
	beq	.L2211
	.loc 11 1029 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC129
.LVL2168:
	ldr	r3, .L2225
.LVL2169:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC129
	movw	r2, #1029
.LVL2170:
	bl	_fail
.LVL2171:
.L2208:
	.loc 11 1019 0
	cmp	r1, #2
.LBB9540:
.LBB9538:
	.loc 11 122 0
	mov	ip, #1
.LVL2172:
.LBE9538:
.LBE9540:
	.loc 11 1019 0
	bne	.L2223
.L2220:
	.loc 11 1021 0
	mov	r1, #0
.LVL2173:
.L2211:
	.loc 11 1051 0
	cmp	r3, #0
.LBB9541:
.LBB9542:
	.loc 36 2379 0
	ldr	r3, [sp, #8]
.LVL2174:
.LBE9542:
.LBE9541:
	.loc 11 1051 0
	bne	.L2224
.LVL2175:
.LBB9547:
.LBB9548:
	.loc 36 2379 0
	bics	r3, r3, #1
	bne	.L2217
	.loc 36 2381 0
	ubfx	r3, r2, #0, #12
	cmp	r3, #0
	bne	.L2218
.LVL2176:
	.loc 36 2389 0
	bic	r2, r2, #4080
.LVL2177:
.LBE9548:
.LBE9547:
	.loc 11 1071 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LBB9551:
.LBB9549:
	.loc 36 2396 0
	ldr	r3, [sp, #8]
	.loc 36 2389 0
	bic	r2, r2, #15
.LBE9549:
.LBE9551:
	.loc 11 1071 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9552:
.LBB9550:
	.loc 36 2394 0
	orr	r2, r2, #1024
	orr	r2, r2, #1
	orr	r2, r2, ip, lsl #6
	.loc 36 2396 0
	lsl	r3, r3, #22
	and	r3, r3, #4194304
	.loc 36 2397 0
	orr	r3, r3, r1, lsl #20
	.loc 36 2399 0
	strd	r2, [r0]
.LBE9550:
.LBE9552:
	.loc 11 1071 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2178:
.L2206:
	.cfi_restore_state
.LBB9553:
.LBB9539:
	.loc 11 120 0
	mov	ip, #0
.LVL2179:
	b	.L2209
.LVL2180:
.L2205:
	bl	HAPFromVMRights.part.68
.LVL2181:
.L2224:
.LBE9539:
.LBE9553:
.LBB9554:
.LBB9543:
	.loc 36 2379 0
	bics	r3, r3, #1
	bne	.L2217
	.loc 36 2381 0
	ubfx	r3, r2, #0, #12
	cmp	r3, #0
	bne	.L2218
	.loc 36 2389 0
	bic	r2, r2, #4080
.LVL2182:
.LBE9543:
.LBE9554:
	.loc 11 1071 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LBB9555:
.LBB9544:
	.loc 36 2396 0
	ldr	r3, [sp, #8]
	.loc 36 2389 0
	bic	r2, r2, #15
.LBE9544:
.LBE9555:
	.loc 11 1071 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9556:
.LBB9545:
	.loc 36 2394 0
	orr	r2, r2, #1072
	orr	r2, r2, #13
	orr	r2, r2, ip, lsl #6
	.loc 36 2396 0
	lsl	r3, r3, #22
	and	r3, r3, #4194304
	.loc 36 2397 0
	orr	r3, r3, r1, lsl #20
	.loc 36 2399 0
	strd	r2, [r0]
.LBE9545:
.LBE9556:
	.loc 11 1071 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2183:
.L2218:
	.cfi_restore_state
.LBB9557:
.LBB9546:
	.loc 36 2381 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC65
.LVL2184:
	ldr	r3, .L2225+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC65
	movw	r2, #2381
.LVL2185:
	bl	_assert_fail
.LVL2186:
.L2217:
	bl	pde_pde_section_new.part.203
.LVL2187:
.L2226:
	.align	2
.L2225:
	.word	.LANCHOR3+3752
	.word	.LANCHOR3+2272
.LBE9546:
.LBE9557:
	.cfi_endproc
.LFE1079:
	.size	makeUserPDE.isra.204, .-makeUserPDE.isra.204
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	createSafeMappingEntries_PDE, %function
createSafeMappingEntries_PDE:
.LFB446:
	.loc 11 1786 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2188:
	.loc 11 1792 0
	cmp	r3, #2
	.loc 11 1786 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 11 1786 0
	ldr	r0, [sp, #28]
.LVL2189:
	.loc 11 1792 0
	beq	.L2229
	cmp	r3, #3
	bne	.L2250
.LVL2190:
.LBB9558:
.LBB9559:
	.loc 11 771 0
	lsr	r5, r2, #21
.LVL2191:
.LBE9559:
.LBE9558:
	.loc 11 1829 0
	ldr	r2, [sp, #24]
.LVL2192:
.LBB9561:
.LBB9562:
	.loc 36 423 0
	ubfx	ip, r0, #2, #1
.LBE9562:
.LBE9561:
	.loc 11 1829 0
	str	ip, [sp]
	str	r2, [sp, #4]
	mov	r2, r1
.LBB9563:
.LBB9560:
	.loc 11 772 0
	ldr	r1, [sp, #32]
.LVL2193:
	add	r5, r1, r5, lsl #3
.LVL2194:
.LBE9560:
.LBE9563:
	.loc 11 1829 0
	mov	r1, r3
	and	r3, r0, #1
.LVL2195:
	add	r0, r4, #4
.LVL2196:
	bl	makeUserPDE.isra.204
.LVL2197:
	mov	r3, r5
	add	r1, r5, #128
	b	.L2236
.LVL2198:
.L2234:
	add	r3, r3, #8
	.loc 11 1836 0 discriminator 2
	cmp	r3, r1
	beq	.L2251
.L2236:
.LBB9564:
.LBB9565:
	.loc 36 2320 0
	ldr	r2, [r3]
.LBE9565:
.LBE9564:
	.loc 11 1839 0
	ands	r2, r2, #3
	beq	.L2234
	.loc 11 1839 0 is_stmt 0 discriminator 1
	cmp	r2, #1
	bne	.L2235
.LVL2199:
	.loc 11 1839 0 discriminator 3
	ldr	r2, [r3, #4]
	tst	r2, #1048576
	bne	.L2234
.LVL2200:
.L2235:
	.loc 11 1846 0 is_stmt 1
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #8
	.loc 11 1850 0
	str	r5, [r4, #12]
	.loc 11 1846 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1850 0
	mov	r1, #3
	mov	r2, #16
	.loc 11 1846 0
	str	r0, [r3, #24]
.LVL2201:
	.loc 11 1850 0
	str	r1, [r4]
	str	r2, [r4, #16]
	b	.L2227
.LVL2202:
.L2250:
	.loc 11 1858 0
	movw	r1, #:lower16:.LC26
.LVL2203:
	movw	r0, #:lower16:.LC130
.LVL2204:
	ldr	r3, .L2253
.LVL2205:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC130
	movw	r2, #1858
.LVL2206:
	bl	_fail
.LVL2207:
.L2229:
.LBB9566:
.LBB9567:
	.loc 36 423 0
	ubfx	ip, r0, #2, #1
.LBE9567:
.LBE9566:
.LBB9568:
.LBB9569:
	.loc 11 771 0
	lsr	r5, r2, #21
.LVL2208:
.LBE9569:
.LBE9568:
	.loc 11 1799 0
	ldr	r2, [sp, #24]
.LVL2209:
	str	ip, [sp]
.LBB9572:
.LBB9570:
	.loc 11 772 0
	ldr	ip, [sp, #32]
.LBE9570:
.LBE9572:
	.loc 11 1799 0
	str	r2, [sp, #4]
	mov	r2, r1
	mov	r1, r3
.LVL2210:
	and	r3, r0, #1
.LVL2211:
	add	r0, r4, #4
.LVL2212:
.LBB9573:
.LBB9571:
	.loc 11 772 0
	add	r6, ip, r5, lsl #3
.LVL2213:
.LBE9571:
.LBE9573:
	.loc 11 1799 0
	bl	makeUserPDE.isra.204
.LVL2214:
.LBB9574:
.LBB9575:
	.loc 36 2325 0
	ldr	r3, [sp, #32]
	ldr	r3, [r3, r5, lsl #3]
.LBE9575:
.LBE9574:
	.loc 11 1808 0
	ands	r3, r3, #3
	bne	.L2252
.L2231:
.LVL2215:
	.loc 11 1823 0
	mov	r2, #0
	mov	r3, #1
	str	r2, [r4]
	str	r6, [r4, #12]
	str	r3, [r4, #16]
.LVL2216:
.L2227:
	.loc 11 1861 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL2217:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2218:
.L2251:
	.cfi_restore_state
	.loc 11 1855 0
	mov	r2, #0
	mov	r3, #16
	str	r2, [r4]
	str	r5, [r4, #12]
	str	r3, [r4, #16]
	b	.L2227
.LVL2219:
.L2252:
	.loc 11 1808 0 discriminator 1
	cmp	r3, #1
	bne	.L2232
.LBB9576:
.LBB9577:
	.loc 36 2422 0
	ldr	r3, [r6, #4]
.LBE9577:
.LBE9576:
	.loc 11 1808 0
	tst	r3, #1048576
	beq	.L2231
.LVL2220:
.L2232:
	.loc 11 1815 0
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #8
	.loc 11 1819 0
	str	r6, [r4, #12]
	.loc 11 1815 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1819 0
	mov	r1, #3
	mov	r2, #1
	.loc 11 1815 0
	str	r0, [r3, #24]
.LVL2221:
	.loc 11 1819 0
	str	r1, [r4]
	str	r2, [r4, #16]
	b	.L2227
.L2254:
	.align	2
.L2253:
	.word	.LANCHOR3+3764
	.cfi_endproc
.LFE446:
	.size	createSafeMappingEntries_PDE, .-createSafeMappingEntries_PDE
	.section	.boot.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_it_frame_cap, %function
create_it_frame_cap:
.LFB406:
	.loc 11 484 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2222:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	ldr	ip, [sp, #16]
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 11 485 0
	cmp	ip, #0
	bne	.L2263
.LBB9584:
.LBB9585:
	.loc 36 1487 0
	ubfx	ip, r2, #0, #12
.LBE9585:
.LBE9584:
	.loc 11 506 0
	lsr	lr, r3, #10
.LVL2223:
.LBB9588:
.LBB9586:
	.loc 36 1487 0
	cmp	ip, #0
	bne	.L2264
	.loc 36 1490 0
	ubfx	ip, r1, #0, #12
	cmp	ip, #0
	bne	.L2265
.LVL2224:
	.loc 36 1496 0
	movw	ip, #65520
	.loc 36 1501 0
	lsr	r2, r2, #12
.LVL2225:
	.loc 36 1496 0
	movt	ip, 255
	.loc 36 1495 0
	lsl	lr, lr, #24
.LVL2226:
	.loc 36 1496 0
	and	ip, ip, r1, lsr #8
	.loc 36 1501 0
	orr	r2, r2, #3145728
	.loc 36 1495 0
	and	lr, lr, #2130706432
	.loc 36 1501 0
	orr	r3, r2, r3, lsl #22
.LVL2227:
	.loc 36 1497 0
	orr	ip, ip, #1
	orr	ip, ip, lr
	.loc 36 1503 0
	str	ip, [r0]
	str	r3, [r0, #4]
.LVL2228:
.L2255:
.LBE9586:
.LBE9588:
	.loc 11 509 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2229:
.L2263:
	.cfi_restore_state
.LBB9589:
.LBB9590:
.LBB9591:
.LBB9592:
	.loc 36 1646 0
	ubfx	ip, r2, #0, #14
.LVL2230:
.LBE9592:
.LBE9591:
	.loc 11 493 0
	lsr	r4, r3, #10
.LVL2231:
.LBB9594:
.LBB9593:
	.loc 36 1646 0
	cmp	ip, #0
	bne	.L2266
	.loc 36 1649 0
	ubfx	ip, r1, #0, #14
	cmp	ip, #0
	bne	.L2267
.LVL2232:
	.loc 36 1661 0
	mov	ip, #0
	.loc 36 1655 0
	movw	lr, #65520
	.loc 36 1659 0
	mov	r5, ip
	.loc 36 1655 0
	movt	lr, 63
	.loc 36 1654 0
	lsl	r4, r4, #22
.LVL2233:
	.loc 36 1655 0
	and	lr, lr, r1, lsr #10
	.loc 36 1661 0
	movt	ip, 32780
	.loc 36 1659 0
	movt	r5, 16368
	.loc 36 1661 0
	orr	r2, ip, r2, lsr #14
.LVL2234:
	.loc 36 1659 0
	and	r3, r5, r3, lsl #20
.LVL2235:
	.loc 36 1654 0
	and	r4, r4, #532676608
	.loc 36 1656 0
	orr	lr, lr, #3
	orr	lr, lr, r4
	.loc 36 1661 0
	orr	r3, r2, r3
	.loc 36 1663 0
	str	lr, [r0]
	str	r3, [r0, #4]
.LVL2236:
	b	.L2255
.LVL2237:
.L2266:
	.loc 36 1646 0
	movw	r1, #:lower16:.LC37
.LVL2238:
	movw	r0, #:lower16:.LC131
.LVL2239:
	ldr	r3, .L2268
.LVL2240:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC131
	movw	r2, #1646
.LVL2241:
	bl	_assert_fail
.LVL2242:
.L2267:
	.loc 36 1649 0
	movw	r1, #:lower16:.LC37
.LVL2243:
	movw	r0, #:lower16:.LC132
.LVL2244:
	ldr	r3, .L2268
.LVL2245:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC132
	movw	r2, #1649
.LVL2246:
	bl	_assert_fail
.LVL2247:
.L2265:
.LBE9593:
.LBE9594:
.LBE9590:
.LBE9589:
.LBB9595:
.LBB9587:
	.loc 36 1490 0
	movw	r1, #:lower16:.LC37
.LVL2248:
	movw	r0, #:lower16:.LC134
.LVL2249:
	ldr	r3, .L2268+4
.LVL2250:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC134
	movw	r2, #1490
.LVL2251:
	bl	_assert_fail
.LVL2252:
.L2264:
	.loc 36 1487 0
	movw	r1, #:lower16:.LC37
.LVL2253:
	movw	r0, #:lower16:.LC133
.LVL2254:
	ldr	r3, .L2268+4
.LVL2255:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC133
	movw	r2, #1487
.LVL2256:
	bl	_assert_fail
.LVL2257:
.L2269:
	.align	2
.L2268:
	.word	.LANCHOR3+1256
	.word	.LANCHOR3+1276
.LBE9587:
.LBE9595:
	.cfi_endproc
.LFE406:
	.size	create_it_frame_cap, .-create_it_frame_cap
	.align	2
	.global	create_unmapped_it_frame_cap
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_unmapped_it_frame_cap, %function
create_unmapped_it_frame_cap:
.LFB410:
	.loc 11 607 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2258:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 608 0
	mov	r3, #0
	.loc 11 607 0
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 11 608 0
	str	r2, [sp]
	mov	r2, r3
.LVL2259:
	bl	create_it_frame_cap
.LVL2260:
	.loc 11 609 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL2261:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE410:
	.size	create_unmapped_it_frame_cap, .-create_unmapped_it_frame_cap
	.align	2
	.global	create_mapped_it_frame_cap
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_mapped_it_frame_cap, %function
create_mapped_it_frame_cap:
.LFB411:
	.loc 11 613 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2262:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 11 613 0
	ldr	ip, [sp, #32]
	add	lr, sp, #16
	stmdb	lr, {r1, r2}
	.loc 11 614 0
	mov	r1, r3
	ldrd	r2, [sp, #24]
	str	ip, [sp]
	bl	create_it_frame_cap
.LVL2263:
	ldr	r1, [sp, #8]
.LVL2264:
	ldm	r4, {r3, ip}
.LVL2265:
.LBB9640:
.LBB9641:
.LBB9642:
.LBB9643:
	.loc 36 2035 0
	and	r2, r1, #15
	cmp	r2, #9
	bne	.L2293
.LVL2266:
.LBE9643:
.LBE9642:
.LBB9647:
.LBB9648:
.LBB9649:
.LBB9650:
	.loc 36 903 0
	and	r2, r3, #14
.LBE9650:
.LBE9649:
.LBE9648:
.LBE9647:
.LBB9668:
.LBB9644:
	.loc 36 2038 0
	bic	r1, r1, #16320
.LBE9644:
.LBE9668:
.LBB9669:
.LBB9661:
.LBB9653:
.LBB9651:
	.loc 36 903 0
	cmp	r2, #14
.LBE9651:
.LBE9653:
.LBE9661:
.LBE9669:
.LBB9670:
.LBB9645:
	.loc 36 2038 0
	bic	r1, r1, #63
.LVL2267:
.LBE9645:
.LBE9670:
.LBB9671:
.LBB9662:
.LBB9654:
.LBB9652:
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL2268:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE9652:
.LBE9654:
	.loc 38 235 0
	bic	r0, r2, #2
	cmp	r0, #1
	bne	.L2294
	.loc 38 238 0
	cmp	r2, #1
	beq	.L2278
	cmp	r2, #3
	beq	.L2279
.LVL2269:
.LBE9662:
.LBE9671:
.LBB9672:
.LBB9673:
	.loc 38 286 0
	cmp	r2, #1
.LBB9674:
.LBB9675:
	.loc 36 1561 0
	and	r2, r3, #15
.LBE9675:
.LBE9674:
	.loc 38 286 0
	beq	.L2295
.LVL2270:
.LBB9677:
.LBB9678:
	.loc 36 1735 0
	cmp	r2, #3
.LBE9678:
.LBE9677:
.LBE9673:
.LBE9672:
.LBB9689:
.LBB9663:
	.loc 38 246 0
	moveq	r2, #0
.LBE9663:
.LBE9689:
.LBB9690:
.LBB9684:
.LBB9681:
.LBB9679:
	.loc 36 1735 0
	bne	.L2296
.LVL2271:
.L2283:
.LBE9679:
.LBE9681:
.LBE9684:
.LBE9690:
.LBB9691:
.LBB9692:
.LBB9693:
.LBB9694:
	.loc 38 160 0
	lsr	r3, r3, #12
.LBB9695:
.LBB9696:
	.loc 36 1686 0
	ubfx	lr, ip, #20, #10
.LBE9696:
.LBE9695:
.LBE9694:
.LBE9693:
.LBE9692:
.LBE9691:
.LBB9706:
.LBB9685:
	.loc 38 289 0
	lsl	r0, ip, #14
.LBE9685:
.LBE9706:
.LBB9707:
.LBB9703:
.LBB9698:
.LBB9697:
	.loc 38 160 0
	and	r3, r3, #130048
	orr	r3, r3, lr
.LVL2272:
.L2285:
.LBE9697:
.LBE9698:
.LBE9703:
.LBE9707:
	.loc 11 449 0
	cmp	r3, #0
	beq	.L2297
.LVL2273:
	.loc 11 451 0
	lsr	r3, r0, #21
	ldr	r1, [r1, r3, lsl #3]
.LVL2274:
.LBB9708:
.LBB9709:
	.loc 36 2517 0
	and	r3, r1, #3
	cmp	r3, #3
	bne	.L2298
	.loc 36 2520 0
	mov	lr, #61440
.LBE9709:
.LBE9708:
.LBB9713:
.LBB9714:
	.loc 19 29 0
	add	r3, r2, #-2147483648
.LBE9714:
.LBE9713:
.LBB9715:
.LBB9710:
	.loc 36 2520 0
	movt	lr, 65535
.LBE9710:
.LBE9715:
	.loc 11 454 0
	ubfx	ip, r0, #12, #9
.LVL2275:
.LBB9716:
.LBB9711:
	.loc 36 2520 0
	and	r2, r1, lr
.LBE9711:
.LBE9716:
.LBB9717:
.LBB9718:
	.loc 36 784 0
	orr	r3, r3, #1264
.LBE9718:
.LBE9717:
.LBB9720:
.LBB9721:
	.loc 19 23 0
	add	r2, r2, #-2147483648
.LBE9721:
.LBE9720:
.LBB9722:
.LBB9719:
	.loc 36 784 0
	orr	r3, r3, #15
.LBE9719:
.LBE9722:
	.loc 11 453 0
	add	r1, r2, ip, lsl #3
.LVL2276:
	.loc 11 468 0
	mov	lr, #0
.LBE9641:
.LBE9640:
	.loc 11 617 0
	mov	r0, r4
.LVL2277:
.LBB9736:
.LBB9734:
	.loc 11 468 0
	str	r3, [r2, ip, lsl #3]
	str	lr, [r1, #4]
.LVL2278:
.LBE9734:
.LBE9736:
	.loc 11 617 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL2279:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2280:
.L2279:
	.cfi_restore_state
.LBB9737:
.LBB9735:
.LBB9723:
.LBB9664:
.LBB9655:
.LBB9656:
	.loc 36 1801 0
	and	r2, r3, #15
	cmp	r2, #3
	.loc 36 1804 0
	moveq	r2, #49152
	movteq	r2, 65535
	andeq	r2, r2, r3, lsl #10
	.loc 36 1801 0
	beq	.L2283
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL2281:
.L2278:
.LBE9656:
.LBE9655:
.LBB9657:
.LBB9658:
	.loc 36 1627 0
	and	r2, r3, #15
	cmp	r2, #1
	.loc 36 1630 0
	moveq	r2, #61440
	movteq	r2, 65535
	andeq	r2, r2, r3, lsl #8
	.loc 36 1627 0
	bne	.L2299
.LVL2282:
.L2281:
.LBE9658:
.LBE9657:
.LBE9664:
.LBE9723:
.LBB9724:
.LBB9704:
.LBB9699:
.LBB9700:
	.loc 38 144 0
	lsr	r3, r3, #14
.LVL2283:
.LBE9700:
.LBE9699:
.LBE9704:
.LBE9724:
.LBB9725:
.LBB9686:
	.loc 38 287 0
	lsl	r0, ip, #12
.LBE9686:
.LBE9725:
.LBB9726:
.LBB9705:
.LBB9702:
.LBB9701:
	.loc 38 144 0
	and	r3, r3, #130048
	add	r3, r3, ip, lsr #22
.LVL2284:
	b	.L2285
.LVL2285:
.L2294:
.LBE9701:
.LBE9702:
.LBE9705:
.LBE9726:
.LBB9727:
.LBB9665:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL2286:
.L2293:
.LBE9665:
.LBE9727:
.LBB9728:
.LBB9646:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL2287:
.L2297:
.LBE9646:
.LBE9728:
	.loc 11 449 0
	movw	r1, #:lower16:.LC26
.LVL2288:
	movw	r0, #:lower16:.LC135
	ldr	r3, .L2300
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC135
	movw	r2, #449
	bl	_assert_fail
.LVL2289:
.L2298:
.LBB9729:
.LBB9712:
	bl	pde_pde_coarse_ptr_get_address.isra.159.part.160
.LVL2290:
.L2296:
.LBE9712:
.LBE9729:
.LBB9730:
.LBB9687:
.LBB9682:
.LBB9680:
	bl	cap_frame_cap_get_capFMappedAddress.part.152
.LVL2291:
.L2299:
.LBE9680:
.LBE9682:
.LBE9687:
.LBE9730:
.LBB9731:
.LBB9666:
.LBB9660:
.LBB9659:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL2292:
.L2295:
.LBE9659:
.LBE9660:
.LBE9666:
.LBE9731:
.LBB9732:
.LBB9688:
.LBB9683:
.LBB9676:
	.loc 36 1561 0
	cmp	r2, #1
	beq	.L2288
	bl	cap_small_frame_cap_get_capFMappedAddress.part.151
.LVL2293:
.L2288:
.LBE9676:
.LBE9683:
.LBE9688:
.LBE9732:
.LBB9733:
.LBB9667:
	.loc 38 246 0
	mov	r2, #0
	b	.L2281
.L2301:
	.align	2
.L2300:
	.word	.LANCHOR3+3796
.LBE9667:
.LBE9733:
.LBE9735:
.LBE9737:
	.cfi_endproc
.LFE411:
	.size	create_mapped_it_frame_cap, .-create_mapped_it_frame_cap
	.align	2
	.global	create_bi_frame_cap
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_bi_frame_cap, %function
create_bi_frame_cap:
.LFB669:
	.loc 26 235 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2294:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 239 0
	mov	r5, #1
	.loc 26 235 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	.loc 26 239 0
	mov	lr, #0
	.loc 26 235 0
	ldr	r6, [sp, #60]
	add	r4, sp, #24
	add	ip, sp, #16
	stm	r4, {r0, r1}
	.loc 26 239 0
	add	r4, sp, #32
	.loc 26 235 0
	stm	ip, {r2, r3}
	.loc 26 239 0
	mov	r0, r4
	ldm	ip, {r1, r2}
	ldr	r3, [sp, #56]
	str	r6, [sp]
	stmib	sp, {r5, lr}
	str	lr, [sp, #12]
	bl	create_mapped_it_frame_cap
.LVL2295:
	ldr	r0, [sp, #24]
.LVL2296:
	ldr	r3, [sp, #28]
.LVL2297:
.LBB9778:
.LBB9779:
.LBB9780:
.LBB9781:
	.loc 36 903 0
	and	r2, r0, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r1, r0
.LVL2298:
	.loc 36 904 0
	andne	r1, r0, #15
.LBE9781:
.LBE9780:
	.loc 39 387 0
	sub	r2, r1, #2
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L2305
.L2307:
	.word	.L2306
	.word	.L2305
	.word	.L2308
	.word	.L2305
	.word	.L2309
	.word	.L2305
	.word	.L2339
	.word	.L2305
	.word	.L2311
	.word	.L2305
	.word	.L2312
	.word	.L2305
	.word	.L2339
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2339
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2313
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2305
	.word	.L2339
.LVL2299:
.L2339:
.LBB9782:
.LBB9783:
	.loc 38 398 0
	mov	r0, #144
.LVL2300:
.L2310:
.LBE9783:
.LBE9782:
.LBE9779:
.LBE9778:
	.loc 26 240 0
	ldm	r4, {r1, r2}
	bl	write_slot
.LVL2301:
	.loc 26 241 0
	add	sp, sp, #40
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2302:
.L2311:
	.cfi_restore_state
.LBB9845:
.LBB9844:
.LBB9814:
.LBB9815:
	.loc 36 1439 0
	and	r3, r0, #15
.LVL2303:
	cmp	r3, #10
	.loc 36 1442 0
	biceq	r0, r0, #31
.LVL2304:
	addeq	r0, r0, #144
	.loc 36 1439 0
	beq	.L2310
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL2305:
.L2312:
.LBE9815:
.LBE9814:
.LBB9816:
.LBB9817:
	.loc 36 1469 0
	and	r3, r0, #15
.LVL2306:
	cmp	r3, #12
	bne	.L2343
.LVL2307:
.L2333:
.LBE9817:
.LBE9816:
.LBB9819:
.LBB9810:
.LBB9784:
.LBB9785:
	.loc 36 1977 0
	bic	r0, r0, #1020
.LVL2308:
	bic	r0, r0, #3
	add	r0, r0, #144
	b	.L2310
.LVL2309:
.L2313:
.LBE9785:
.LBE9784:
.LBE9810:
.LBE9819:
.LBB9820:
.LBB9821:
.LBB9822:
.LBB9823:
.LBB9824:
.LBB9825:
	.loc 36 2177 0
	uxtb	r2, r0
	cmp	r2, #46
	bne	.L2344
	.loc 36 2180 0
	lsr	r0, r0, #8
.LVL2310:
	and	r2, r0, #63
.LBE9825:
.LBE9824:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r0, #31
	beq	.L2320
	.loc 39 106 0
	and	r0, r0, #31
	mvn	r2, #0
	add	r0, r0, #1
	lsl	r0, r2, r0
.L2320:
.LVL2311:
.LBE9823:
.LBE9822:
	.loc 39 120 0
	and	r0, r0, r3
	add	r0, r0, #144
	b	.L2310
.LVL2312:
.L2306:
.LBE9821:
.LBE9820:
.LBB9831:
.LBB9832:
	.loc 36 1021 0
	and	r3, r0, #15
.LVL2313:
	cmp	r3, #2
	bne	.L2345
.LVL2314:
.L2335:
.LBE9832:
.LBE9831:
.LBB9834:
.LBB9811:
.LBB9787:
.LBB9788:
	.loc 36 1850 0
	bic	r0, r0, #15
.LVL2315:
	add	r0, r0, #144
	b	.L2310
.LVL2316:
.L2308:
.LBE9788:
.LBE9787:
.LBE9811:
.LBE9834:
.LBB9835:
.LBB9836:
	.loc 36 1059 0
	and	r0, r0, #15
.LVL2317:
	cmp	r0, #4
	.loc 36 1062 0
	biceq	r0, r3, #15
	addeq	r0, r0, #144
	.loc 36 1059 0
	beq	.L2310
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL2318:
.L2309:
.LBE9836:
.LBE9835:
.LBB9837:
.LBB9838:
	.loc 36 1277 0
	and	r3, r0, #15
.LVL2319:
	cmp	r3, #6
	beq	.L2335
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL2320:
.L2305:
.LBE9838:
.LBE9837:
.LBB9839:
.LBB9812:
	.loc 38 398 0
	sub	r3, r1, #1
.LVL2321:
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L2339
.L2322:
	.word	.L2321
	.word	.L2339
	.word	.L2321
	.word	.L2339
	.word	.L2323
	.word	.L2339
	.word	.L2324
	.word	.L2339
	.word	.L2325
	.word	.L2339
	.word	.L2339
	.word	.L2339
	.word	.L2339
	.word	.L2339
	.word	.L2326
.L2325:
.LVL2322:
.LBB9790:
.LBB9791:
	.loc 36 2035 0
	and	r3, r0, #15
	cmp	r3, #9
	.loc 36 2038 0
	biceq	r0, r0, #16320
.LVL2323:
	biceq	r0, r0, #63
	addeq	r0, r0, #144
	.loc 36 2035 0
	beq	.L2310
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL2324:
.L2324:
.LBE9791:
.LBE9790:
.LBB9792:
.LBB9786:
	.loc 36 1974 0
	and	r3, r0, #15
	cmp	r3, #7
	beq	.L2333
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL2325:
.L2323:
.LBE9786:
.LBE9792:
.LBB9793:
.LBB9789:
	.loc 36 1847 0
	and	r3, r0, #15
	cmp	r3, #5
	beq	.L2335
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL2326:
.L2321:
.LBE9789:
.LBE9793:
.LBB9794:
.LBB9795:
	.loc 38 235 0
	tst	r1, #1
	beq	.L2346
	.loc 38 238 0
	cmp	r1, #1
	beq	.L2329
	cmp	r1, #3
	bne	.L2339
.LVL2327:
.LBB9796:
.LBB9797:
	.loc 36 1801 0
	and	r3, r0, #15
	cmp	r3, #3
	bne	.L2347
.LVL2328:
	.loc 36 1804 0
	mov	r3, #49152
	movt	r3, 65535
	and	r0, r3, r0, lsl #10
.LVL2329:
	add	r0, r0, #144
	b	.L2310
.LVL2330:
.L2326:
.LBE9797:
.LBE9796:
.LBE9795:
.LBE9794:
.LBB9806:
.LBB9807:
	.loc 36 2221 0
	uxtb	r3, r0
	cmp	r3, #15
	.loc 36 2224 0
	biceq	r0, r0, #255
.LVL2331:
	addeq	r0, r0, #144
	.loc 36 2221 0
	beq	.L2310
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL2332:
.L2329:
.LBE9807:
.LBE9806:
.LBB9808:
.LBB9804:
.LBB9799:
.LBB9800:
	.loc 36 1627 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L2348
.LVL2333:
	.loc 36 1630 0
	mov	r3, #61440
	movt	r3, 65535
	and	r0, r3, r0, lsl #8
.LVL2334:
	add	r0, r0, #144
	b	.L2310
.LVL2335:
.L2343:
.LBE9800:
.LBE9799:
.LBE9804:
.LBE9808:
.LBE9812:
.LBE9839:
.LBB9840:
.LBB9818:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL2336:
.L2345:
.LBE9818:
.LBE9840:
.LBB9841:
.LBB9833:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL2337:
.L2344:
.LBE9833:
.LBE9841:
.LBB9842:
.LBB9830:
.LBB9829:
.LBB9828:
.LBB9827:
.LBB9826:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL2338:
.L2346:
.LBE9826:
.LBE9827:
.LBE9828:
.LBE9829:
.LBE9830:
.LBE9842:
.LBB9843:
.LBB9813:
.LBB9809:
.LBB9805:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL2339:
.L2347:
.LBB9802:
.LBB9798:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL2340:
.L2348:
.LBE9798:
.LBE9802:
.LBB9803:
.LBB9801:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL2341:
.LBE9801:
.LBE9803:
.LBE9805:
.LBE9809:
.LBE9813:
.LBE9843:
.LBE9844:
.LBE9845:
	.cfi_endproc
.LFE669:
	.size	create_bi_frame_cap, .-create_bi_frame_cap
	.text
	.align	2
	.global	Arch_createObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_createObject, %function
Arch_createObject:
.LFB505:
	.loc 13 389 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2342:
	.loc 13 390 0
	sub	r1, r1, #5
.LVL2343:
	.loc 13 389 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 13 390 0
	cmp	r1, #6
	ldrls	pc, [pc, r1, asl #2]
	b	.L2350
.L2352:
	.word	.L2351
	.word	.L2353
	.word	.L2354
	.word	.L2355
	.word	.L2356
	.word	.L2357
	.word	.L2358
.L2358:
.LVL2344:
.LBB9868:
.LBB9869:
	.loc 25 862 0
	movw	r3, #6268
.LVL2345:
	.loc 25 863 0
	mov	lr, #64
	.loc 25 862 0
	movt	r3, 197
	.loc 25 865 0
	mov	ip, #1
.LBE9869:
.LBE9868:
.LBB9871:
.LBB9872:
	.loc 36 2207 0
	ands	r1, r2, #255
.LVL2346:
.LBE9872:
.LBE9871:
.LBB9875:
.LBB9870:
	.loc 25 863 0
	stmib	r2, {r3, lr}
	.loc 25 865 0
	str	ip, [r2, #12]
.LVL2347:
.LBE9870:
.LBE9875:
.LBB9876:
.LBB9873:
	.loc 36 2211 0
	biceq	r2, r2, #255
.LVL2348:
	.loc 36 2212 0
	orreq	r2, r2, #15
	.loc 36 2215 0
	streq	r1, [r0, #4]
	streq	r2, [r0]
	.loc 36 2207 0
	bne	.L2375
.LBE9873:
.LBE9876:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2349:
.L2351:
	.cfi_restore_state
	.loc 13 405 0
	ldr	r3, [sp, #8]
.LVL2350:
.LBB9877:
.LBB9878:
	.loc 36 1490 0
	ubfx	r1, r2, #0, #12
.LBE9878:
.LBE9877:
	.loc 13 405 0
	adds	ip, r3, #0
	movne	ip, #1
.LVL2351:
.LBB9883:
.LBB9879:
	.loc 36 1490 0
	cmp	r1, #0
	bne	.L2376
.LVL2352:
	.loc 36 1496 0
	movw	r3, #65520
	.loc 36 1503 0
	mov	r1, #3145728
.LBE9879:
.LBE9883:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LBB9884:
.LBB9880:
	.loc 36 1496 0
	movt	r3, 255
.LBE9880:
.LBE9884:
	.loc 13 543 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9885:
.LBB9881:
	.loc 36 1496 0
	and	r3, r3, r2, lsr #8
	.loc 36 1503 0
	str	r1, [r0, #4]
.LVL2353:
	.loc 36 1497 0
	orr	r3, r3, #1
	orr	r3, r3, ip, lsl #31
	.loc 36 1503 0
	str	r3, [r0]
.LBE9881:
.LBE9885:
	.loc 13 543 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2354:
.L2353:
	.cfi_restore_state
	.loc 13 428 0
	ldr	r3, [sp, #8]
.LVL2355:
.LBB9886:
.LBB9887:
	.loc 36 1649 0
	ubfx	r1, r2, #0, #14
.LBE9887:
.LBE9886:
	.loc 13 428 0
	adds	ip, r3, #0
	movne	ip, #1
.LVL2356:
.LBB9890:
.LBB9888:
	.loc 36 1649 0
	cmp	r1, #0
	.loc 36 1655 0
	movweq	r3, #65520
	.loc 36 1663 0
	moveq	r1, #0
	.loc 36 1655 0
	movteq	r3, 63
	.loc 36 1663 0
	movteq	r1, 16396
	.loc 36 1649 0
	bne	.L2362
.LVL2357:
.L2373:
.LBE9888:
.LBE9890:
.LBB9891:
.LBB9892:
	.loc 36 1655 0
	and	r3, r3, r2, lsr #10
.LBE9892:
.LBE9891:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9896:
.LBB9893:
	.loc 36 1663 0
	str	r1, [r0, #4]
	.loc 36 1656 0
	orr	r3, r3, #3
	orr	r3, r3, ip, lsl #29
	.loc 36 1663 0
	str	r3, [r0]
.LBE9893:
.LBE9896:
	.loc 13 543 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2358:
.L2354:
	.cfi_restore_state
	.loc 13 457 0
	ldr	r3, [sp, #8]
.LVL2359:
.LBB9897:
.LBB9894:
	.loc 36 1649 0
	ubfx	r1, r2, #0, #14
.LBE9894:
.LBE9897:
	.loc 13 457 0
	adds	ip, r3, #0
	movne	ip, #1
.LVL2360:
.LBB9898:
.LBB9895:
	.loc 36 1649 0
	cmp	r1, #0
	bne	.L2362
.LVL2361:
	.loc 36 1655 0
	movw	r3, #65520
	.loc 36 1663 0
	movt	r1, 32780
	.loc 36 1655 0
	movt	r3, 63
	b	.L2373
.LVL2362:
.L2355:
.LBE9895:
.LBE9898:
	.loc 13 486 0
	ldr	r3, [sp, #8]
.LVL2363:
.LBB9899:
.LBB9900:
	.loc 36 1649 0
	ubfx	r1, r2, #0, #14
.LBE9900:
.LBE9899:
	.loc 13 486 0
	adds	r3, r3, #0
	movne	r3, #1
.LVL2364:
.LBB9904:
.LBB9901:
	.loc 36 1649 0
	cmp	r1, #0
	bne	.L2362
.LVL2365:
	.loc 36 1655 0
	movw	r1, #65520
	.loc 36 1663 0
	mov	ip, #0
.LBE9901:
.LBE9904:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LBB9905:
.LBB9902:
	.loc 36 1655 0
	movt	r1, 63
	.loc 36 1663 0
	movt	ip, 49164
	.loc 36 1655 0
	and	r2, r1, r2, lsr #10
.LVL2366:
.LBE9902:
.LBE9905:
	.loc 13 543 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9906:
.LBB9903:
	.loc 36 1656 0
	orr	r2, r2, #3
	orr	r3, r2, r3, lsl #29
.LVL2367:
	.loc 36 1663 0
	stm	r0, {r3, ip}
.LVL2368:
.LBE9903:
.LBE9906:
	.loc 13 543 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2369:
.L2356:
	.cfi_restore_state
.LBB9907:
.LBB9908:
	.loc 36 1866 0
	ubfx	r3, r2, #0, #10
.LVL2370:
	cmp	r3, #0
	bne	.L2377
.LVL2371:
	.loc 36 1870 0
	bic	r2, r2, #1020
.LVL2372:
.LBE9908:
.LBE9907:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9911:
.LBB9909:
	.loc 36 1870 0
	bic	r2, r2, #3
	.loc 36 1871 0
	orr	r2, r2, #7
	.loc 36 1877 0
	strd	r2, [r0]
.LVL2373:
.LBE9909:
.LBE9911:
	.loc 13 543 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2374:
.L2357:
	.cfi_restore_state
	.loc 13 512 0
	add	r1, r2, #16320
.LBB9912:
.LBB9913:
	.loc 16 96 0
	lsr	r3, r2, #6
.LVL2375:
.LBE9913:
.LBE9912:
	.loc 13 512 0
	add	r1, r1, #63
.LBB9919:
.LBB9918:
	.loc 16 96 0
	lsr	r1, r1, #6
	add	r1, r1, #1
	cmp	r3, r1
	lslcc	r3, r3, #6
.LVL2376:
	lslcc	r1, r1, #6
	bcs	.L2368
.LVL2377:
.L2367:
.LBB9914:
.LBB9915:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9916:
.LBB9917:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2378:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL2379:
.LBE9917:
.LBE9916:
.LBE9915:
.LBE9914:
	.loc 16 96 0
	cmp	r3, r1
	bne	.L2367
.LVL2380:
.L2368:
.LBE9918:
.LBE9919:
.LBB9920:
.LBB9921:
	.loc 36 1992 0
	ubfx	r3, r2, #0, #14
	cmp	r3, #0
	bne	.L2378
.LVL2381:
	.loc 36 1997 0
	bic	r2, r2, #16320
.LVL2382:
.LBE9921:
.LBE9920:
	.loc 13 543 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB9924:
.LBB9922:
	.loc 36 1997 0
	bic	r2, r2, #63
	.loc 36 1998 0
	orr	r2, r2, #9
	.loc 36 2002 0
	strd	r2, [r0]
.LVL2383:
.LBE9922:
.LBE9924:
	.loc 13 543 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2384:
.L2350:
	.loc 13 541 0
	movw	r1, #:lower16:.LC28
	movw	r0, #:lower16:.LC139
.LVL2385:
	ldr	r3, .L2379
.LVL2386:
	movt	r1, #:upper16:.LC28
	movt	r0, #:upper16:.LC139
	movw	r2, #541
.LVL2387:
	bl	_fail
.LVL2388:
.L2375:
	.cfi_restore_state
.LBB9925:
.LBB9874:
	.loc 36 2207 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC138
.LVL2389:
	ldr	r3, .L2379+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC138
	movw	r2, #2207
	bl	_assert_fail
.LVL2390:
.L2378:
.LBE9874:
.LBE9925:
.LBB9926:
.LBB9923:
	.loc 36 1992 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC137
.LVL2391:
	ldr	r3, .L2379+8
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC137
	movw	r2, #1992
.LVL2392:
	bl	_assert_fail
.LVL2393:
.L2377:
.LBE9923:
.LBE9926:
.LBB9927:
.LBB9910:
	.loc 36 1866 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC136
.LVL2394:
	ldr	r3, .L2379+12
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC136
	movw	r2, #1866
.LVL2395:
	bl	_assert_fail
.LVL2396:
.L2362:
.LBE9910:
.LBE9927:
.LBB9928:
.LBB9889:
	.loc 36 1649 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC132
.LVL2397:
	ldr	r3, .L2379+16
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC132
	movw	r2, #1649
.LVL2398:
	bl	_assert_fail
.LVL2399:
.L2376:
.LBE9889:
.LBE9928:
.LBB9929:
.LBB9882:
	.loc 36 1490 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC134
.LVL2400:
	ldr	r3, .L2379+20
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC134
	movw	r2, #1490
.LVL2401:
	bl	_assert_fail
.LVL2402:
.L2380:
	.align	2
.L2379:
	.word	.LANCHOR3+3836
	.word	.LANCHOR3+3816
	.word	.LANCHOR3+876
	.word	.LANCHOR3+1172
	.word	.LANCHOR3+1256
	.word	.LANCHOR3+1276
.LBE9882:
.LBE9929:
	.cfi_endproc
.LFE505:
	.size	Arch_createObject, .-Arch_createObject
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	createSafeMappingEntries_PTE, %function
createSafeMappingEntries_PTE:
.LFB445:
	.loc 11 1686 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2403:
	.loc 11 1692 0
	cmp	r3, #0
	.loc 11 1686 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 11 1686 0
	ldr	r0, [sp, #28]
.LVL2404:
	.loc 11 1692 0
	beq	.L2383
	cmp	r3, #1
	bne	.L2417
.LVL2405:
.LBB9962:
.LBB9963:
.LBB9964:
.LBB9965:
	.loc 11 117 0
	ldr	r3, [sp, #24]
.LVL2406:
.LBE9965:
.LBE9964:
.LBE9963:
.LBE9962:
.LBB9984:
.LBB9985:
	.loc 36 445 0
	and	ip, r0, #1
.LVL2407:
.LBE9985:
.LBE9984:
.LBB9986:
.LBB9987:
	.loc 36 423 0
	ubfx	r0, r0, #2, #1
.LVL2408:
.LBE9987:
.LBE9986:
.LBB9988:
.LBB9980:
.LBB9970:
.LBB9966:
	.loc 11 117 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L2397
.L2399:
	.word	.L2398
	.word	.L2398
	.word	.L2400
	.word	.L2408
.LVL2409:
.L2417:
.LBE9966:
.LBE9970:
.LBE9980:
.LBE9988:
	.loc 11 1777 0
	movw	r1, #:lower16:.LC26
.LVL2410:
	movw	r0, #:lower16:.LC130
.LVL2411:
	ldr	r3, .L2422
.LVL2412:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC130
	movw	r2, #1777
.LVL2413:
	bl	_fail
.LVL2414:
.L2383:
.LBB9989:
.LBB9990:
.LBB9991:
.LBB9992:
	.loc 11 117 0
	ldr	r3, [sp, #24]
.LVL2415:
.LBE9992:
.LBE9991:
.LBE9990:
.LBE9989:
.LBB10009:
.LBB10010:
	.loc 36 445 0
	and	ip, r0, #1
.LVL2416:
.LBE10010:
.LBE10009:
.LBB10011:
.LBB10012:
	.loc 36 423 0
	ubfx	r0, r0, #2, #1
.LVL2417:
.LBE10012:
.LBE10011:
.LBB10013:
.LBB10005:
.LBB9995:
.LBB9993:
	.loc 11 117 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L2397
.L2387:
	.word	.L2386
	.word	.L2386
	.word	.L2388
	.word	.L2407
.L2407:
	.loc 11 128 0
	mov	lr, #3
.L2389:
.LVL2418:
.LBE9993:
.LBE9995:
	.loc 11 951 0
	cmp	ip, #0
.LBB9996:
.LBB9997:
	.loc 36 771 0
	ubfx	r3, r1, #0, #12
.LBE9997:
.LBE9996:
	.loc 11 951 0
	beq	.L2390
.LVL2419:
.LBB10000:
.LBB9998:
	.loc 36 771 0
	cmp	r3, #0
	bne	.L2393
	.loc 36 779 0
	bic	r1, r1, #4080
.LVL2420:
	.loc 36 786 0
	lsl	r5, r0, #22
	.loc 36 779 0
	bic	r1, r1, #15
	.loc 36 784 0
	orr	r3, r1, #1072
	orr	r3, r3, #15
.LVL2421:
	.loc 36 789 0
	orr	r6, r3, lr, lsl #6
.LVL2422:
.L2392:
.LBE9998:
.LBE10000:
.LBE10005:
.LBE10013:
	.loc 11 1704 0
	ldr	r1, [sp, #32]
	mov	r0, sp
	bl	lookupPTSlot
.LVL2423:
	.loc 11 1705 0
	ldr	r3, [sp]
	.loc 11 1704 0
	ldr	r1, [sp, #4]
.LVL2424:
	.loc 11 1705 0
	cmp	r3, #0
	bne	.L2418
.LVL2425:
.LBB10014:
.LBB10015:
	.loc 36 747 0
	ldr	r2, [r1]
	and	r2, r2, #3
.LBE10015:
.LBE10014:
	.loc 11 1721 0
	cmp	r2, #3
	beq	.L2419
.L2396:
.LVL2426:
	.loc 11 1732 0
	mov	r2, #0
	mov	r3, #1
	stm	r4, {r2, r6}
	str	r5, [r4, #8]
	str	r1, [r4, #12]
	str	r3, [r4, #16]
.LVL2427:
.L2381:
	.loc 11 1780 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL2428:
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL2429:
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL2430:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2431:
.L2408:
	.cfi_restore_state
.LBB10016:
.LBB9981:
.LBB9971:
.LBB9967:
	.loc 11 128 0
	mov	r6, #3
.L2401:
.LVL2432:
.LBE9967:
.LBE9971:
	.loc 11 974 0
	cmp	ip, #0
.LBB9972:
.LBB9973:
	.loc 36 771 0
	ubfx	r3, r1, #0, #12
.LVL2433:
.LBE9973:
.LBE9972:
	.loc 11 974 0
	beq	.L2402
.LVL2434:
.LBB9975:
.LBB9974:
	.loc 36 771 0
	cmp	r3, #0
	bne	.L2393
	.loc 36 779 0
	bic	r1, r1, #4080
.LVL2435:
	.loc 36 786 0
	lsl	r0, r0, #22
.LVL2436:
	.loc 36 779 0
	bic	r1, r1, #15
	.loc 36 784 0
	orr	r3, r1, #1072
	.loc 36 787 0
	orr	r5, r0, #1048576
	.loc 36 784 0
	orr	r3, r3, #15
.LVL2437:
	.loc 36 789 0
	orr	r6, r3, r6, lsl #6
.LVL2438:
.L2403:
.LBE9974:
.LBE9975:
.LBE9981:
.LBE10016:
	.loc 11 1744 0
	mov	r0, sp
	ldr	r1, [sp, #32]
	bl	lookupPTSlot
.LVL2439:
	.loc 11 1745 0
	ldr	r3, [sp]
	.loc 11 1744 0
	ldr	r0, [sp, #4]
.LVL2440:
	.loc 11 1745 0
	cmp	r3, #0
	moveq	r3, r0
.LVL2441:
	addeq	r1, r0, #128
	beq	.L2406
	b	.L2420
.L2405:
.LVL2442:
	add	r3, r3, #8
	.loc 11 1758 0 discriminator 2
	cmp	r1, r3
	beq	.L2421
.L2406:
.LBB10017:
.LBB10018:
	.loc 36 742 0
	ldr	r2, [r3]
	and	r2, r2, #3
.LBE10018:
.LBE10017:
	.loc 11 1759 0
	cmp	r2, #3
	bne	.L2405
.LVL2443:
	.loc 11 1762 0
	ldr	ip, [r3, #4]
	tst	ip, #1048576
	bne	.L2405
	.loc 11 1765 0
	movw	r3, #:lower16:current_syscall_error
.LVL2444:
	mov	r1, #8
	.loc 11 1769 0
	stm	r4, {r2, r6}
	.loc 11 1765 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1769 0
	mov	r2, #16
	str	r5, [r4, #8]
.LVL2445:
	str	r0, [r4, #12]
	.loc 11 1765 0
	str	r1, [r3, #24]
	.loc 11 1769 0
	str	r2, [r4, #16]
	b	.L2381
.LVL2446:
.L2388:
.LBB10019:
.LBB10006:
.LBB10001:
.LBB9994:
	.loc 11 122 0
	mov	lr, #1
	b	.L2389
.L2386:
	.loc 11 120 0
	mov	lr, #0
	b	.L2389
.LVL2447:
.L2398:
.LBE9994:
.LBE10001:
.LBE10006:
.LBE10019:
.LBB10020:
.LBB9982:
.LBB9976:
.LBB9968:
	mov	r6, #0
	b	.L2401
.L2400:
	.loc 11 122 0
	mov	r6, #1
	b	.L2401
.LVL2448:
.L2421:
.LBE9968:
.LBE9976:
.LBE9982:
.LBE10020:
	.loc 11 1774 0
	mov	r2, #0
	mov	r3, #16
	stm	r4, {r2, r6}
	str	r5, [r4, #8]
	str	r0, [r4, #12]
	str	r3, [r4, #16]
	b	.L2381
.LVL2449:
.L2397:
.LBB10021:
.LBB9983:
.LBB9977:
.LBB9969:
	bl	HAPFromVMRights.part.68
.LVL2450:
.L2402:
.LBE9969:
.LBE9977:
.LBB9978:
.LBB9979:
	.loc 36 771 0
	cmp	r3, #0
	bne	.L2393
	.loc 36 779 0
	bic	r1, r1, #4080
.LVL2451:
	.loc 36 786 0
	lsl	r0, r0, #22
.LVL2452:
	.loc 36 779 0
	bic	r1, r1, #15
	.loc 36 784 0
	orr	r1, r1, #1024
	.loc 36 787 0
	orr	r5, r0, #1048576
	.loc 36 784 0
	orr	r1, r1, #3
.LVL2453:
	.loc 36 789 0
	orr	r6, r1, r6, lsl #6
.LVL2454:
	b	.L2403
.LVL2455:
.L2390:
.LBE9979:
.LBE9978:
.LBE9983:
.LBE10021:
.LBB10022:
.LBB10007:
.LBB10002:
.LBB10003:
	.loc 36 771 0
	cmp	r3, #0
	bne	.L2393
	.loc 36 779 0
	bic	r1, r1, #4080
.LVL2456:
	.loc 36 786 0
	lsl	r5, r0, #22
	.loc 36 779 0
	bic	r1, r1, #15
	.loc 36 784 0
	orr	r1, r1, #1024
	orr	r1, r1, #3
.LVL2457:
	.loc 36 789 0
	orr	r6, r1, lr, lsl #6
.LVL2458:
	b	.L2392
.LVL2459:
.L2420:
.LBE10003:
.LBE10002:
.LBE10007:
.LBE10022:
	.loc 11 1746 0
	movw	r3, #:lower16:current_syscall_error
	mov	ip, #6
	.loc 11 1753 0
	str	r6, [r4, #4]
	.loc 11 1746 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1748 0
	mov	r2, #0
	.loc 11 1753 0
	str	r5, [r4, #8]
	mov	r0, #3
.LVL2460:
	mov	r1, #16
.LVL2461:
.L2415:
	.loc 11 1748 0
	str	r2, [r3, #20]
.LVL2462:
	.loc 11 1746 0
	str	ip, [r3, #24]
	.loc 11 1753 0
	str	r0, [r4]
	str	r2, [r4, #12]
	str	r1, [r4, #16]
	b	.L2381
.LVL2463:
.L2418:
	.loc 11 1706 0
	movw	r3, #:lower16:current_syscall_error
.LVL2464:
	mov	ip, #6
	.loc 11 1713 0
	str	r6, [r4, #4]
	.loc 11 1706 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1708 0
	mov	r2, #0
	.loc 11 1713 0
	str	r5, [r4, #8]
	mov	r0, #3
.LVL2465:
	mov	r1, #1
.LVL2466:
	b	.L2415
.LVL2467:
.L2419:
.LBB10023:
.LBB10024:
	.loc 36 812 0
	ldr	r3, [r1, #4]
.LVL2468:
.LBE10024:
.LBE10023:
	.loc 11 1721 0
	tst	r3, #1048576
	beq	.L2396
	.loc 11 1724 0
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #8
.LVL2469:
	.loc 11 1728 0
	stm	r4, {r2, r6}
	.loc 11 1724 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1728 0
	mov	r2, #1
	str	r5, [r4, #8]
.LVL2470:
	str	r1, [r4, #12]
	.loc 11 1724 0
	str	r0, [r3, #24]
	.loc 11 1728 0
	str	r2, [r4, #16]
	b	.L2381
.LVL2471:
.L2393:
.LBB10025:
.LBB10008:
.LBB10004:
.LBB9999:
	.loc 36 771 0
	movw	r1, #:lower16:.LC37
.LVL2472:
	movw	r0, #:lower16:.LC65
	ldr	r3, .L2422+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC65
	movw	r2, #771
.LVL2473:
	bl	_assert_fail
.LVL2474:
.L2423:
	.align	2
.L2422:
	.word	.LANCHOR3+3856
	.word	.LANCHOR3+1576
.LBE9999:
.LBE10004:
.LBE10008:
.LBE10025:
	.cfi_endproc
.LFE445:
	.size	createSafeMappingEntries_PTE, .-createSafeMappingEntries_PTE
	.align	2
	.global	checkValidIPCBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkValidIPCBuffer, %function
checkValidIPCBuffer:
.LFB416:
	.loc 11 743 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2475:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 11 743 0
	add	r3, sp, #24
	stmdb	r3, {r1, r2}
	ldr	r1, [sp, #16]
.LVL2476:
.LBB10045:
.LBB10046:
	.loc 36 903 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r1
	.loc 36 904 0
	andne	r3, r1, #15
.LBE10046:
.LBE10045:
	.loc 11 744 0
	bic	r2, r3, #2
	cmp	r2, #1
	bne	.L2437
.LVL2477:
.LBB10047:
.LBB10048:
	.loc 38 302 0
	cmp	r3, #1
.LBB10049:
.LBB10050:
	.loc 36 1587 0
	and	r3, r1, #15
.LBE10050:
.LBE10049:
	.loc 38 302 0
	beq	.L2438
.LVL2478:
.LBB10052:
.LBB10053:
	.loc 36 1761 0
	cmp	r3, #3
	.loc 36 1764 0
	ubfxeq	r1, r1, #29, #1
	.loc 36 1761 0
	bne	.L2439
.L2431:
.LBE10053:
.LBE10052:
.LBE10048:
.LBE10047:
	.loc 11 750 0
	cmp	r1, #0
	bne	.L2440
	.loc 11 756 0
	ubfx	r3, r4, #0, #9
	cmp	r3, #0
	.loc 11 763 0
	moveq	r0, r1
.LVL2479:
	.loc 11 756 0
	bne	.L2441
.LVL2480:
.L2424:
	.loc 11 764 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2481:
.L2438:
	.cfi_restore_state
.LBB10059:
.LBB10057:
.LBB10055:
.LBB10051:
	.loc 36 1587 0
	cmp	r3, #1
	.loc 36 1590 0
	lsreq	r1, r1, #31
	.loc 36 1587 0
	beq	.L2431
	bl	cap_small_frame_cap_get_capFIsDevice.isra.164.part.165
.LVL2482:
.L2437:
.LBE10051:
.LBE10055:
.LBE10057:
.LBE10059:
	.loc 11 746 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2483:
	ldr	r2, .L2442
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
	movw	r3, #746
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL2484:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2485:
	movw	r0, #:lower16:.LC140
	movt	r0, #:upper16:.LC140
.L2436:
	.loc 11 751 0
	bl	kprintf
.LVL2486:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2487:
	.loc 11 752 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 11 753 0
	mov	r0, r2
	.loc 11 752 0
	str	r2, [r3, #24]
	.loc 11 753 0
	b	.L2424
.LVL2488:
.L2440:
	.loc 11 751 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2489:
	ldr	r2, .L2442
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
	movw	r3, #751
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL2490:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2491:
	movw	r0, #:lower16:.LC141
	movt	r0, #:upper16:.LC141
	b	.L2436
.LVL2492:
.L2441:
	.loc 11 757 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2442
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	movw	r3, #758
	ldr	lr, [ip, #68]
	add	r5, ip, #528
	str	ip, [sp]
	stmib	sp, {r5, lr}
	bl	kprintf
.LVL2493:
	movw	r0, #:lower16:.LC142
	mov	r1, r4
	movt	r0, #:upper16:.LC142
	bl	kprintf
.LVL2494:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2495:
	.loc 11 759 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	.loc 11 760 0
	mov	r0, #3
	.loc 11 759 0
	str	r2, [r3, #24]
	.loc 11 760 0
	b	.L2424
.LVL2496:
.L2439:
.LBB10060:
.LBB10058:
.LBB10056:
.LBB10054:
	bl	cap_frame_cap_get_capFIsDevice.isra.166.part.167
.LVL2497:
.L2443:
	.align	2
.L2442:
	.word	.LANCHOR3+3888
.LBE10054:
.LBE10056:
.LBE10058:
.LBE10060:
	.cfi_endproc
.LFE416:
	.size	checkValidIPCBuffer, .-checkValidIPCBuffer
	.align	2
	.global	Arch_userStackTrace
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_userStackTrace, %function
Arch_userStackTrace:
.LFB471:
	.loc 11 3186 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2498:
	.loc 11 3192 0
	bic	r3, r0, #1020
	.loc 11 3186 0
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 11 3192 0
	bic	r3, r3, #3
	ldr	r5, [r3, #16]
.LVL2499:
	.loc 11 3186 0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	lr, [sp, #24]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
.LBB10122:
.LBB10123:
	.loc 36 903 0
	and	r3, r5, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r5
.LVL2500:
	.loc 36 904 0
	andne	r3, r5, #15
.LBE10123:
.LBE10122:
	.loc 11 3195 0
	cmp	r3, #9
	.loc 11 3196 0
	movwne	r0, #:lower16:.LC143
.LVL2501:
	movtne	r0, #:upper16:.LC143
	.loc 11 3195 0
	beq	.L2459
.L2458:
	.loc 11 3220 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	lr, [sp, #24]
	.cfi_restore 14
	add	sp, sp, #28
	.cfi_def_cfa_offset 0
	.loc 11 3206 0
	b	kprintf
.LVL2502:
.L2459:
	.cfi_restore_state
.LBB10124:
.LBB10125:
.LBB10126:
.LBB10127:
.LBB10128:
.LBB10129:
	.loc 36 2035 0
	and	r3, r5, #15
	cmp	r3, #9
	bne	.L2460
.LVL2503:
.LBE10129:
.LBE10128:
.LBE10127:
.LBE10126:
.LBE10125:
.LBE10124:
.LBB10145:
.LBB10146:
	.loc 10 36 0
	ldr	r4, [r0, #52]
.LVL2504:
.LBE10146:
.LBE10145:
	.loc 11 3205 0
	tst	r4, #3
	bne	.L2461
.LBB10147:
.LBB10142:
.LBB10139:
.LBB10136:
.LBB10133:
.LBB10130:
	.loc 36 2038 0
	bic	r5, r5, #16320
.LVL2505:
.LBE10130:
.LBE10133:
.LBE10136:
.LBE10139:
.LBE10142:
.LBE10147:
.LBB10148:
	.loc 11 3215 0
	movw	r7, #:lower16:.LC146
	.loc 11 3217 0
	movw	r9, #:lower16:.LC145
.LBB10149:
.LBB10150:
.LBB10151:
.LBB10152:
	.loc 36 852 0
	mov	r8, #61440
.LBE10152:
.LBE10151:
.LBE10150:
.LBE10149:
.LBE10148:
.LBB10171:
.LBB10143:
.LBB10140:
.LBB10137:
.LBB10134:
.LBB10131:
	.loc 36 2038 0
	bic	r5, r5, #63
.LBE10131:
.LBE10134:
.LBE10137:
.LBE10140:
.LBE10143:
.LBE10171:
.LBB10172:
	.loc 11 3215 0
	movt	r7, #:upper16:.LC146
	.loc 11 3217 0
	movt	r9, #:upper16:.LC145
.LBB10167:
.LBB10163:
.LBB10155:
.LBB10153:
	.loc 36 852 0
	movt	r8, 65535
	add	r6, r4, #64
	b	.L2455
.LVL2506:
.L2464:
.LBE10153:
.LBE10155:
	.loc 11 3153 0
	mov	r2, r4
	mov	r1, r5
	mov	r0, sp
	bl	lookupPTSlot
.LVL2507:
	.loc 11 3155 0
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L2452
	.loc 11 3153 0
	ldr	r2, [sp, #4]
	ldr	r3, [r2]
.LVL2508:
.LBB10156:
.LBB10157:
	.loc 36 747 0
	and	r1, r3, #3
.LBE10157:
.LBE10156:
	.loc 11 3155 0
	cmp	r1, #3
	beq	.L2462
.LVL2509:
.L2452:
.LBE10163:
.LBE10167:
	.loc 11 3217 0
	mov	r1, r4
	mov	r0, r9
	add	r4, r4, #4
.LVL2510:
	bl	kprintf
.LVL2511:
.LBE10172:
	.loc 11 3210 0
	cmp	r6, r4
	beq	.L2463
.LVL2512:
.L2455:
.LBB10173:
.LBB10168:
.LBB10164:
.LBB10158:
.LBB10159:
	.loc 11 771 0
	lsr	r3, r4, #21
	ldr	r3, [r5, r3, lsl #3]
.LBE10159:
.LBE10158:
.LBB10160:
.LBB10161:
	.loc 36 2325 0
	and	r2, r3, #3
.LBE10161:
.LBE10160:
	.loc 11 3149 0
	cmp	r2, #1
	.loc 11 3150 0
	andeq	r3, r3, r8
	.loc 11 3151 0
	ubfxeq	r2, r4, #0, #21
	.loc 11 3149 0
	bne	.L2464
.L2451:
.LVL2513:
	.loc 11 3180 0
	add	r3, r2, r3
.LVL2514:
.LBE10164:
.LBE10168:
	.loc 11 3215 0
	mov	r1, r4
.LBB10169:
.LBB10165:
	.loc 11 3180 0
	add	r3, r3, #-2147483648
.LVL2515:
.LBE10165:
.LBE10169:
	.loc 11 3215 0
	mov	r0, r7
	ldr	r2, [r3]
	add	r4, r4, #4
.LVL2516:
	bl	kprintf
.LVL2517:
.LBE10173:
	.loc 11 3210 0
	cmp	r6, r4
	bne	.L2455
.LVL2518:
.L2463:
	.loc 11 3220 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2519:
.L2462:
	.cfi_restore_state
.LBB10174:
.LBB10170:
.LBB10166:
	.loc 11 3157 0
	ldr	r2, [r2, #4]
.LVL2520:
.LBB10162:
.LBB10154:
	.loc 36 852 0
	and	r3, r3, r8
.LBE10154:
.LBE10162:
	.loc 11 3157 0
	tst	r2, #1048576
	.loc 11 3158 0
	uxthne	r2, r4
.LVL2521:
	.loc 11 3160 0
	ubfxeq	r2, r4, #0, #12
.LVL2522:
	b	.L2451
.LVL2523:
.L2461:
.LBE10166:
.LBE10170:
.LBE10174:
	.loc 11 3206 0
	movw	r0, #:lower16:.LC144
	movt	r0, #:upper16:.LC144
	b	.L2458
.LVL2524:
.L2460:
.LBB10175:
.LBB10144:
.LBB10141:
.LBB10138:
.LBB10135:
.LBB10132:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL2525:
.LBE10132:
.LBE10135:
.LBE10138:
.LBE10141:
.LBE10144:
.LBE10175:
	.cfi_endproc
.LFE471:
	.size	Arch_userStackTrace, .-Arch_userStackTrace
	.align	2
	.global	Arch_deriveCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	Arch_deriveCap, %function
Arch_deriveCap:
.LFB498:
	.loc 13 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2526:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
	.loc 13 43 0
	add	r1, sp, #24
.LVL2527:
	stmdb	r1, {r2, r3}
	ldr	r3, [sp, #16]
.LVL2528:
	ldr	r1, [sp, #20]
.LVL2529:
.LBB10204:
.LBB10205:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
	.loc 36 904 0
	andne	r2, r3, #15
.LBE10205:
.LBE10204:
	.loc 13 46 0
	sub	r2, r2, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L2468
.L2470:
	.word	.L2469
	.word	.L2468
	.word	.L2471
	.word	.L2468
	.word	.L2475
	.word	.L2468
	.word	.L2473
	.word	.L2468
	.word	.L2474
	.word	.L2468
	.word	.L2475
	.word	.L2468
	.word	.L2468
	.word	.L2468
	.word	.L2475
.L2475:
.LVL2530:
	.loc 13 93 0
	mov	r2, #0
	strd	r2, [r0]
	str	r1, [r0, #8]
.LVL2531:
.L2465:
	.loc 13 119 0
	mov	r0, r4
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL2532:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2533:
.L2471:
	.cfi_restore_state
.LBB10206:
.LBB10207:
.LBB10208:
	.loc 36 1696 0
	and	r2, r3, #15
	cmp	r2, #3
	bne	.L2487
.LVL2534:
	.loc 36 1701 0
	bic	r1, r1, #1069547520
.LVL2535:
.LBE10208:
.LBE10207:
.LBB10211:
.LBB10212:
	.loc 36 1793 0
	bic	r3, r3, #532676608
.LBE10212:
.LBE10211:
.LBB10213:
.LBB10209:
	.loc 36 1701 0
	bic	r1, r1, #3145728
.LBE10209:
.LBE10213:
.LBE10206:
	.loc 13 81 0
	mov	r2, #0
	strd	r2, [r0]
	str	r1, [r0, #8]
	b	.L2465
.LVL2536:
.L2473:
.LBB10215:
.LBB10216:
	.loc 36 1883 0
	and	r2, r3, #15
	cmp	r2, #7
	bne	.L2488
	.loc 36 1886 0
	ubfx	r5, r1, #29, #1
.LBE10216:
.LBE10215:
	.loc 13 48 0
	cmp	r5, #0
	beq	.L2489
.LVL2537:
.L2484:
	.loc 13 62 0
	mov	r2, #0
.LVL2538:
.L2480:
	.loc 13 69 0
	strd	r2, [r4]
	str	r1, [r4, #8]
	b	.L2465
.LVL2539:
.L2474:
.LBB10218:
.LBB10219:
	.loc 36 2049 0
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L2490
	.loc 36 2052 0
	ubfx	r5, r3, #4, #1
.LBE10219:
.LBE10218:
	.loc 13 60 0
	cmp	r5, #0
	bne	.L2484
	.loc 13 64 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2540:
	ldr	r2, .L2492
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, r5
.LVL2541:
	mov	r3, #64
	ldr	lr, [ip, #68]
	add	r6, ip, #528
	str	ip, [sp]
	stmib	sp, {r6, lr}
	bl	kprintf
.LVL2542:
	movw	r0, #:lower16:.LC148
	movt	r0, #:upper16:.LC148
	b	.L2486
.LVL2543:
.L2469:
.LBB10221:
.LBB10222:
.LBB10223:
	.loc 36 1522 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L2491
.LVL2544:
.LBE10223:
.LBE10222:
.LBB10226:
.LBB10227:
	.loc 36 1619 0
	bic	r3, r3, #2130706432
.LBE10227:
.LBE10226:
.LBB10228:
.LBB10224:
	.loc 36 1527 0
	ubfx	r1, r1, #0, #22
.LVL2545:
.LBE10224:
.LBE10228:
.LBE10221:
	.loc 13 76 0
	mov	r2, #0
	strd	r2, [r0]
	str	r1, [r0, #8]
	b	.L2465
.LVL2546:
.L2468:
	.loc 13 117 0
	movw	r1, #:lower16:.LC28
.LVL2547:
	movw	r0, #:lower16:.LC149
.LVL2548:
	ldr	r3, .L2492
	movt	r1, #:upper16:.LC28
	movt	r0, #:upper16:.LC149
	mov	r2, #117
	bl	_fail
.LVL2549:
.L2489:
	.loc 13 52 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2550:
	ldr	r2, .L2492
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, r5
.LVL2551:
	mov	r3, #52
	ldr	lr, [ip, #68]
	add	r6, ip, #528
	str	ip, [sp]
	stmib	sp, {r6, lr}
	bl	kprintf
.LVL2552:
	movw	r0, #:lower16:.LC147
	movt	r0, #:upper16:.LC147
.LVL2553:
.L2486:
	.loc 13 64 0
	bl	kprintf
.LVL2554:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2555:
	.loc 13 65 0
	movw	r0, #:lower16:current_syscall_error
	mov	ip, #3
	movt	r0, #:upper16:current_syscall_error
.LBB10230:
.LBB10231:
	.loc 36 926 0
	mov	r1, r5
.LBE10231:
.LBE10230:
	.loc 13 67 0
	mov	r2, ip
.LBB10233:
.LBB10232:
	.loc 36 926 0
	mov	r3, r5
.LBE10232:
.LBE10233:
	.loc 13 65 0
	str	ip, [r0, #24]
.LVL2556:
	b	.L2480
.LVL2557:
.L2490:
.LBB10234:
.LBB10220:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL2558:
.L2488:
.LBE10220:
.LBE10234:
.LBB10235:
.LBB10217:
	bl	cap_page_table_cap_get_capPTIsMapped.part.144
.LVL2559:
.L2487:
.LBE10217:
.LBE10235:
.LBB10236:
.LBB10214:
.LBB10210:
	.loc 36 1696 0
	movw	r1, #:lower16:.LC37
.LVL2560:
	movw	r0, #:lower16:.LC58
.LVL2561:
	ldr	r3, .L2492+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1697
	bl	_assert_fail
.LVL2562:
.L2491:
.LBE10210:
.LBE10214:
.LBE10236:
.LBB10237:
.LBB10229:
.LBB10225:
	.loc 36 1522 0
	movw	r1, #:lower16:.LC37
.LVL2563:
	movw	r0, #:lower16:.LC57
.LVL2564:
	ldr	r3, .L2492+8
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1523
	bl	_assert_fail
.LVL2565:
.L2493:
	.align	2
.L2492:
	.word	.LANCHOR3+3908
	.word	.LANCHOR3+3968
	.word	.LANCHOR3+3924
.LBE10225:
.LBE10229:
.LBE10237:
	.cfi_endproc
.LFE498:
	.size	Arch_deriveCap, .-Arch_deriveCap
	.section	.boot.text
	.align	2
	.global	vcpu_boot_init
	.syntax unified
	.arm
	.fpu softvfp
	.type	vcpu_boot_init, %function
vcpu_boot_init:
.LFB629:
	.loc 25 475 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB10238:
.LBB10239:
	.loc 25 366 0
	movw	r3, #24831
.LBE10239:
.LBE10238:
	.loc 25 476 0
	movw	r2, #:lower16:.LANCHOR4
	.loc 25 475 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB10242:
.LBB10240:
	.loc 25 366 0
	movt	r3, 65520
.LBE10240:
.LBE10242:
	.loc 25 476 0
	movt	r2, #:upper16:.LANCHOR4
.LBB10243:
.LBB10241:
	.loc 25 366 0
	ldr	r3, [r3, #-251]
.LBE10241:
.LBE10243:
	.loc 25 481 0
	mov	r0, #0
	.loc 25 475 0
	str	lr, [sp, #4]
	.loc 25 476 0
	and	r3, r3, #63
	add	r3, r3, #1
	str	r3, [r2]
	.loc 25 481 0
	bl	vcpu_disable
.LVL2566:
	.loc 25 482 0
	movw	r2, #:lower16:armHSCurVCPU
	.loc 25 483 0
	movw	r3, #:lower16:armHSVCPUActive
	.loc 25 504 0
	ldr	r4, [sp]
	.cfi_restore 4
	.loc 25 482 0
	mov	r1, #0
	movt	r2, #:upper16:armHSCurVCPU
	.loc 25 483 0
	movt	r3, #:upper16:armHSVCPUActive
	.loc 25 504 0
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 25 482 0
	str	r1, [r2]
	.loc 25 483 0
	str	r1, [r3]
	.loc 25 504 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE629:
	.size	vcpu_boot_init, .-vcpu_boot_init
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeARMFrameInvocation.isra.284, %function
decodeARMFrameInvocation.isra.284:
.LFB1159:
	.loc 11 2430 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2567:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 11 2434 0
	sub	ip, r0, #38
	.loc 11 2430 0
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	mov	r5, r0
	mov	r4, r3
	strd	r6, [sp, #8]
	mov	r6, r2
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #92
	.cfi_def_cfa_offset 136
.LVL2568:
	ldr	fp, [sp, #136]
.LVL2569:
	.loc 11 2430 0
	ldr	r0, [sp, #140]
.LVL2570:
	str	r3, [sp, #132]
.LVL2571:
	.loc 11 2434 0
	cmp	ip, #7
	ldrls	pc, [pc, ip, asl #2]
	b	.L2497
.L2499:
	.word	.L2498
	.word	.L2500
	.word	.L2501
	.word	.L2502
	.word	.L2502
	.word	.L2502
	.word	.L2502
	.word	.L2503
.L2503:
	.loc 11 2806 0
	movw	r8, #:lower16:ksCurThread
	mov	r1, #2
.LVL2572:
	movt	r8, #:upper16:ksCurThread
	ldr	r0, [r8]
.LVL2573:
	bl	setThreadState
.LVL2574:
.LBB10733:
.LBB10734:
.LBB10735:
.LBB10736:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r4
	.loc 36 904 0
	andne	r3, r4, #15
.LBE10736:
.LBE10735:
	.loc 38 235 0
	bic	r2, r3, #2
	cmp	r2, #1
	bne	.L2742
	.loc 38 238 0
	cmp	r3, #1
	beq	.L2676
	cmp	r3, #3
	bne	.L2743
.LVL2575:
.LBB10737:
.LBB10738:
	.loc 36 1801 0
	and	r3, r4, #15
	cmp	r3, #3
	bne	.L2611
	.loc 36 1804 0
	mov	r3, #49152
	movt	r3, 65535
	and	r4, r3, r4, lsl #10
	add	r4, r4, #-2147483648
.L2675:
.LVL2576:
.LBE10738:
.LBE10737:
.LBE10734:
.LBE10733:
.LBB10743:
.LBB10744:
	.loc 11 2153 0
	ldr	r3, [r8]
.LVL2577:
.LBB10745:
.LBB10746:
	.loc 10 30 0
	mov	r2, #1
.LBE10746:
.LBE10745:
.LBE10744:
.LBE10743:
	.loc 11 2807 0
	mov	r7, #0
.LBB10750:
.LBB10749:
.LBB10747:
.LBB10748:
	.loc 10 30 0
	stmib	r3, {r2, r4}
.LVL2578:
.L2496:
.LBE10748:
.LBE10747:
.LBE10749:
.LBE10750:
	.loc 11 2816 0
	mov	r0, r7
	add	sp, sp, #92
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL2579:
.L2501:
	.cfi_restore_state
	.loc 11 2716 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, #2
.LVL2580:
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2581:
	bl	setThreadState
.LVL2582:
.LBB10751:
.LBB10752:
.LBB10753:
.LBB10754:
.LBB10755:
.LBB10756:
.LBB10757:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r2, r4
	.loc 36 904 0
	andne	r2, r4, #15
.LBE10757:
.LBE10756:
	.loc 38 171 0
	bic	r3, r2, #2
	cmp	r3, #1
	bne	.L2640
	.loc 38 174 0
	cmp	r2, #1
.LBB10758:
.LBB10759:
.LBB10760:
.LBB10761:
	.loc 36 1601 0
	and	r3, r4, #15
.LBE10761:
.LBE10760:
.LBE10759:
.LBE10758:
	.loc 38 174 0
	beq	.L2744
.LVL2583:
.LBB10765:
.LBB10766:
.LBB10767:
.LBB10768:
	.loc 36 1775 0
	cmp	r3, #3
	bne	.L2586
.LVL2584:
	.loc 36 1778 0
	lsr	r3, r4, #22
.LBE10768:
.LBE10767:
.LBB10769:
.LBB10770:
	.loc 36 1686 0
	lsr	ip, fp, #20
.LBE10770:
.LBE10769:
	.loc 38 160 0
	lsl	r0, r3, #10
.LBB10772:
.LBB10771:
	.loc 36 1686 0
	ubfx	r1, ip, #0, #10
.LBE10771:
.LBE10772:
	.loc 38 160 0
	and	r0, r0, #130048
.LBE10766:
.LBE10765:
.LBE10755:
.LBE10754:
.LBE10753:
	.loc 11 2112 0
	orrs	r1, r0, r1
	bne	.L2745
.L2643:
.LVL2585:
	ldr	r3, [r6]
.LVL2586:
	ldr	r2, [r6, #4]
.LVL2587:
.LBB10776:
.LBB10777:
.LBB10778:
.LBB10779:
.LBB10780:
.LBB10781:
	.loc 36 903 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL2588:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE10781:
.LBE10780:
	.loc 38 187 0
	bic	r0, r1, #2
	cmp	r0, #1
	bne	.L2746
	.loc 38 190 0
	cmp	r1, #1
.LBB10782:
.LBB10783:
.LBB10784:
	.loc 36 1522 0
	and	r1, r3, #15
.LBE10784:
.LBE10783:
.LBE10782:
	.loc 38 190 0
	beq	.L2747
.LVL2589:
.LBB10789:
.LBB10790:
.LBB10791:
	.loc 36 1696 0
	cmp	r1, #3
	bne	.L2654
.LVL2590:
.LBE10791:
.LBE10790:
.LBE10789:
.LBB10794:
.LBB10795:
	.loc 36 1753 0
	mov	r1, #0
.LBE10795:
.LBE10794:
.LBB10797:
.LBB10792:
.LBB10793:
	.loc 36 1793 0
	bic	r3, r3, #532676608
.LVL2591:
.LBE10793:
.LBE10792:
.LBE10797:
.LBB10798:
.LBB10796:
	.loc 36 1753 0
	movt	r1, 49164
	and	r2, r2, r1
.LVL2592:
.L2653:
.LBE10796:
.LBE10798:
.LBE10779:
.LBE10778:
.LBE10777:
.LBE10776:
.LBE10752:
.LBE10751:
	.loc 11 2717 0
	mov	r7, #0
.LBB10873:
.LBB10869:
.LBB10811:
.LBB10808:
	.loc 38 205 0
	str	r3, [r6]
	str	r2, [r6, #4]
.LVL2593:
	b	.L2496
.LVL2594:
.L2502:
.LBE10808:
.LBE10811:
.LBE10869:
.LBE10873:
.LBB10874:
	.loc 11 2739 0
	cmp	r1, #1
	bls	.L2748
.LVL2595:
.LBB10875:
.LBB10876:
.LBB10877:
.LBB10878:
	.loc 36 903 0
	and	r3, r3, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r6, r4
	.loc 36 904 0
	andne	r6, r4, #15
.LBE10878:
.LBE10877:
	.loc 38 171 0
	bic	r3, r6, #2
	cmp	r3, #1
	bne	.L2640
	.loc 38 174 0
	cmp	r6, #1
.LBB10879:
.LBB10880:
.LBB10881:
.LBB10882:
	.loc 36 1601 0
	and	r10, r4, #15
.LBE10882:
.LBE10881:
.LBE10880:
.LBE10879:
	.loc 38 174 0
	beq	.L2749
.LVL2596:
.LBB10888:
.LBB10889:
.LBB10890:
.LBB10891:
	.loc 36 1775 0
	cmp	r10, #3
	bne	.L2586
.LVL2597:
.LBE10891:
.LBE10890:
	.loc 38 160 0
	lsr	r3, r4, #12
.LBE10889:
.LBE10888:
.LBE10876:
.LBE10875:
.LBB10907:
.LBB10908:
	.loc 38 238 0
	cmp	r6, #3
.LBE10908:
.LBE10907:
.LBB10920:
.LBB10901:
.LBB10896:
.LBB10894:
.LBB10892:
.LBB10893:
	.loc 36 1686 0
	ubfx	r1, fp, #20, #10
.LVL2598:
.LBE10893:
.LBE10892:
	.loc 38 160 0
	and	r3, r3, #130048
.LBE10894:
.LBE10896:
.LBE10901:
.LBE10920:
.LBB10921:
.LBB10915:
	.loc 38 246 0
	movne	r4, #0
.LBE10915:
.LBE10921:
.LBB10922:
.LBB10902:
.LBB10897:
.LBB10895:
	.loc 38 160 0
	orr	r1, r3, r1
.LVL2599:
.LBE10895:
.LBE10897:
.LBE10902:
.LBE10922:
.LBB10923:
.LBB10916:
.LBB10909:
.LBB10910:
	.loc 36 1804 0
	moveq	r3, #49152
	movteq	r3, 65535
.LBE10910:
.LBE10909:
.LBE10916:
.LBE10923:
.LBB10924:
.LBB10903:
	.loc 38 177 0
	mov	r7, r1
.LBE10903:
.LBE10924:
.LBB10925:
.LBB10917:
.LBB10912:
.LBB10911:
	.loc 36 1804 0
	andeq	r4, r3, r4, lsl #10
.LVL2600:
.L2660:
.LBE10911:
.LBE10912:
.LBE10917:
.LBE10925:
	.loc 11 2753 0
	cmp	r1, #0
	beq	.L2750
	.loc 11 2759 0
	mov	r1, r7
	add	r0, sp, #68
.LVL2601:
	bl	findPDForASID
.LVL2602:
	.loc 11 2760 0
	ldr	r1, [sp, #68]
	.loc 11 2761 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 2760 0
	cmp	r1, #0
	bne	.L2751
.LVL2603:
.LBB10926:
.LBB10927:
	.loc 43 31 0
	movt	r3, #:upper16:ksCurThread
	ldr	ip, [r3]
.LVL2604:
.LBB10928:
.LBB10929:
	.loc 10 36 0
	ldr	r3, [ip, #8]
.LVL2605:
.LBE10929:
.LBE10928:
.LBE10927:
.LBE10926:
.LBB10930:
.LBB10931:
.LBB10932:
.LBB10933:
	ldr	r8, [ip, #12]
.LVL2606:
.LBE10933:
.LBE10932:
.LBE10931:
.LBE10930:
	.loc 11 2772 0
	cmp	r3, r8
	bcs	.L2752
.LVL2607:
.LBB10934:
.LBB10935:
	.loc 38 259 0
	cmp	r6, #3
	bne	.L2719
.LVL2608:
.LBB10936:
.LBB10937:
	.loc 36 1669 0
	cmp	r10, #3
	bne	.L2594
.LVL2609:
	.loc 36 1672 0
	lsr	r2, fp, #30
.LBE10937:
.LBE10936:
.LBE10935:
.LBE10934:
.LBB10939:
.LBB10940:
	.loc 40 148 0
	cmp	r2, #2
	moveq	r2, #2097152
	beq	.L2666
	cmp	r2, #3
	moveq	r2, #33554432
	beq	.L2666
	cmp	r2, #1
	moveq	r2, #65536
	movne	r2, #4096
.L2666:
.LVL2610:
.LBE10940:
.LBE10939:
	.loc 11 2784 0
	cmp	r8, r2
	cmpls	r3, r2
	bcc	.L2671
	.loc 11 2785 0
	ldr	lr, [ip, #68]
	add	r2, ip, #528
	movw	r0, #:lower16:.LC14
	movt	r0, #:upper16:.LC14
	movw	r3, #2785
	str	ip, [sp]
	mov	r1, #0
	.loc 11 2788 0
	mov	r7, #3
	.loc 11 2785 0
	stmib	sp, {r2, lr}
	ldr	r2, .L2779+4
	bl	kprintf
.LVL2611:
	movw	r0, #:lower16:.LC172
	movt	r0, #:upper16:.LC172
	bl	kprintf
.LVL2612:
.L2726:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2613:
	.loc 11 2786 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2787 0
	mov	r1, #0
	str	r1, [r3]
	.loc 11 2786 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2614:
.L2498:
.LBE10874:
.LBB10952:
	.loc 11 2445 0
	cmp	r0, #0
	cmpne	r1, #2
	bls	.L2753
.LVL2615:
.LBB10953:
.LBB10954:
	.loc 43 31 0
	movw	r8, #:lower16:ksCurThread
.LBE10954:
.LBE10953:
.LBB10960:
.LBB10961:
.LBB10962:
.LBB10963:
	.loc 36 903 0
	and	r3, r3, #14
.LBE10963:
.LBE10962:
.LBE10961:
.LBE10960:
	.loc 11 2456 0
	ldr	r7, [r0]
.LBB10982:
.LBB10957:
	.loc 43 31 0
	movt	r8, #:upper16:ksCurThread
.LBE10957:
.LBE10982:
.LBB10983:
.LBB10972:
.LBB10966:
.LBB10964:
	.loc 36 903 0
	cmp	r3, #14
.LBE10964:
.LBE10966:
.LBE10972:
.LBE10983:
.LBB10984:
.LBB10958:
	.loc 43 31 0
	ldr	r2, [r8]
.LVL2616:
.LBE10958:
.LBE10984:
.LBB10985:
.LBB10973:
.LBB10967:
.LBB10965:
	.loc 36 905 0
	uxtbeq	r9, r4
	.loc 36 904 0
	andne	r9, r4, #15
.LBE10965:
.LBE10967:
.LBE10973:
.LBE10985:
.LBB10986:
.LBB10959:
.LBB10955:
.LBB10956:
	.loc 10 36 0
	ldr	r3, [r2, #8]
	str	r3, [sp, #20]
.LVL2617:
.LBE10956:
.LBE10955:
.LBE10959:
.LBE10986:
.LBB10987:
.LBB10988:
.LBB10989:
.LBB10990:
	ldr	r3, [r2, #12]
	str	r3, [sp, #32]
.LVL2618:
	ldr	r3, [r2, #16]
.LVL2619:
	str	r3, [sp, #36]
.LVL2620:
.LBE10990:
.LBE10989:
.LBE10988:
.LBE10987:
.LBB10991:
.LBB10974:
	.loc 38 256 0
	bic	r3, r9, #2
.LVL2621:
	cmp	r3, #1
	bne	.L2754
	.loc 38 259 0
	cmp	r9, #3
	beq	.L2755
.LVL2622:
.LBE10974:
.LBE10991:
.LBB10992:
.LBB10993:
	.loc 38 217 0
	cmp	r9, #1
	beq	.L2514
	cmp	r9, #3
	beq	.L2756
.LVL2623:
.LBE10993:
.LBE10992:
.LBB11007:
.LBB11008:
.LBB11009:
	.loc 38 174 0
	cmp	r9, #1
.LBB11010:
.LBB11011:
.LBB11012:
.LBB11013:
	.loc 36 1601 0
	and	r10, r4, #15
.LBE11013:
.LBE11012:
.LBE11011:
.LBE11010:
	.loc 38 174 0
	beq	.L2757
.LVL2624:
.LBB11020:
.LBB11021:
.LBB11022:
.LBB11023:
	.loc 36 1775 0
	cmp	r10, #3
.LBE11023:
.LBE11022:
.LBE11021:
.LBE11020:
.LBE11009:
.LBE11008:
.LBE11007:
.LBB11048:
.LBB11002:
	.loc 38 225 0
	moveq	r3, #0
.LBE11002:
.LBE11048:
.LBB11049:
.LBB10975:
	.loc 38 261 0
	streq	r3, [sp, #24]
.LBE10975:
.LBE11049:
.LBB11050:
.LBB11042:
.LBB11036:
.LBB11030:
.LBB11028:
.LBB11025:
.LBB11024:
	.loc 36 1775 0
	beq	.L2518
.LVL2625:
.L2586:
.LBE11024:
.LBE11025:
	bl	cap_frame_cap_get_capFMappedASID.part.157
.LVL2626:
.L2500:
.LBE11028:
.LBE11030:
.LBE11036:
.LBE11042:
.LBE11050:
.LBE10952:
.LBB11254:
	.loc 11 2592 0
	cmp	r0, #0
	cmpne	r1, #1
	bls	.L2758
.LVL2627:
.LBB11255:
.LBB11256:
	.loc 43 31 0
	movw	r8, #:lower16:ksCurThread
.LBE11256:
.LBE11255:
	.loc 11 2602 0
	ldr	r5, [r0]
.LVL2628:
.LBB11261:
.LBB11259:
	.loc 43 31 0
	movt	r8, #:upper16:ksCurThread
	ldr	r1, [r8]
.LVL2629:
.LBE11259:
.LBE11261:
.LBB11262:
.LBB11263:
	.loc 36 903 0
	and	r3, r5, #14
	cmp	r3, #14
.LBE11263:
.LBE11262:
.LBB11265:
.LBB11260:
.LBB11257:
.LBB11258:
	.loc 10 36 0
	ldr	r3, [r1, #8]
	str	r3, [sp, #20]
.LVL2630:
	ldr	r3, [r1, #12]
.LVL2631:
	str	r3, [sp, #28]
.LVL2632:
.LBE11258:
.LBE11257:
.LBE11260:
.LBE11265:
.LBB11266:
.LBB11264:
	.loc 36 905 0
	uxtbeq	r3, r5
.LVL2633:
	.loc 36 904 0
	andne	r3, r5, #15
.LBE11264:
.LBE11266:
	.loc 11 2604 0
	cmp	r3, #9
	bne	.L2576
.LVL2634:
.LBB11267:
.LBB11268:
	.loc 36 2049 0
	and	r3, r5, #15
	cmp	r3, #9
	bne	.L2577
.LVL2635:
.LBE11268:
.LBE11267:
	.loc 11 2604 0
	tst	r5, #16
	beq	.L2576
.LVL2636:
.LBB11269:
.LBB11270:
.LBB11271:
.LBB11272:
.LBB11273:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r7, r4
	.loc 36 904 0
	andne	r7, r4, #15
.LBE11273:
.LBE11272:
	.loc 38 171 0
	bic	r3, r7, #2
	cmp	r3, #1
	bne	.L2640
	.loc 38 174 0
	cmp	r7, #1
.LBB11274:
.LBB11275:
.LBB11276:
.LBB11277:
	.loc 36 1601 0
	and	r10, r4, #15
.LBE11277:
.LBE11276:
.LBE11275:
.LBE11274:
	.loc 38 174 0
	beq	.L2759
.LVL2637:
.LBB11281:
.LBB11282:
.LBB11283:
.LBB11284:
	.loc 36 1775 0
	cmp	r10, #3
	bne	.L2586
.LVL2638:
.LBE11284:
.LBE11283:
	.loc 38 160 0
	lsr	r3, r4, #12
.LBB11285:
.LBB11286:
	.loc 36 1686 0
	ubfx	r6, fp, #20, #10
.LBE11286:
.LBE11285:
	.loc 38 160 0
	and	r3, r3, #130048
.LBE11282:
.LBE11281:
.LBE11271:
.LBE11270:
.LBE11269:
	.loc 11 2614 0
	orrs	r6, r3, r6
.LBB11292:
.LBB11293:
.LBB11294:
.LBB11295:
	.loc 36 1738 0
	lslne	r3, fp, #14
.LBE11295:
.LBE11294:
.LBE11293:
.LBE11292:
.LBB11305:
.LBB11306:
	.loc 36 2038 0
	bicne	r5, r5, #16320
.LVL2639:
	bicne	r5, r5, #63
.LVL2640:
.LBE11306:
.LBE11305:
.LBB11308:
.LBB11302:
.LBB11297:
.LBB11296:
	.loc 36 1738 0
	strne	r3, [sp, #24]
.LBE11296:
.LBE11297:
.LBE11302:
.LBE11308:
	.loc 11 2614 0
	beq	.L2584
.LVL2641:
.L2678:
	.loc 11 2602 0
	ldr	r3, [r0, #4]
.LBB11309:
	.loc 11 2631 0
	mov	r1, r6
	add	r0, sp, #68
.LVL2642:
.LBE11309:
	.loc 11 2602 0
	str	r3, [sp, #32]
.LBB11312:
	.loc 11 2631 0
	bl	findPDForASID
.LVL2643:
	.loc 11 2632 0
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L2760
	.loc 11 2641 0
	ldr	r9, [sp, #72]
	cmp	r9, r5
	bne	.L2590
.LVL2644:
.LBB11310:
.LBB11311:
	.loc 36 2011 0
	ldr	r2, [sp, #32]
	ubfx	r2, r2, #0, #17
.LBE11311:
.LBE11310:
	.loc 11 2641 0
	cmp	r2, r6
	bne	.L2590
.LVL2645:
.LBE11312:
.LBB11313:
.LBB11314:
	.loc 38 259 0
	cmp	r7, #3
	bne	.L2712
.LVL2646:
.LBB11315:
.LBB11316:
	.loc 36 1669 0
	cmp	r10, #3
	bne	.L2594
	.loc 36 1672 0
	lsr	r5, fp, #30
.LVL2647:
.L2595:
.LBE11316:
.LBE11315:
.LBE11314:
.LBE11313:
	.loc 11 2655 0
	ubfx	r0, fp, #18, #2
	ldr	r1, [sp, #20]
	bl	maskVMRights
.LVL2648:
.LBB11321:
.LBB11322:
.LBB11323:
.LBB11324:
	.loc 40 148 0
	cmp	r5, #2
	beq	.L2602
	cmp	r5, #3
	mvneq	r3, #-33554432
	beq	.L2604
	cmp	r5, #1
	beq	.L2761
.L2600:
.LBE11324:
.LBE11323:
.LBE11322:
.LBE11321:
.LBB11328:
.LBB11317:
	.loc 38 261 0
	movw	r3, #4095
.L2604:
.LBE11317:
.LBE11328:
	.loc 11 2658 0
	ldr	r2, [sp, #24]
	tst	r2, r3
	bne	.L2762
.LVL2649:
.LBB11329:
.LBB11330:
	.loc 38 238 0
	cmp	r7, #1
	beq	.L2608
	cmp	r7, #3
	bne	.L2763
.LBB11331:
.LBB11332:
	.loc 36 1801 0
	cmp	r10, #3
	bne	.L2611
	.loc 36 1804 0
	mov	r1, #49152
	movt	r1, 65535
	and	r1, r1, r4, lsl #10
	add	r1, r1, #-2147483648
.L2607:
.LBE11332:
.LBE11331:
.LBE11330:
.LBE11329:
.LBB11336:
	.loc 11 2671 0
	str	r0, [sp]
.LBE11336:
	.loc 11 2669 0
	cmp	r5, #1
.LBB11363:
	.loc 11 2671 0
	mov	r3, r5
	ldr	r0, [sp, #28]
.LVL2650:
	ldr	r2, [sp, #24]
.LVL2651:
	str	r0, [sp, #4]
	add	r0, sp, #68
.LVL2652:
	str	r9, [sp, #8]
.LBE11363:
	.loc 11 2669 0
	bls	.L2764
.LBB11364:
	.loc 11 2690 0
	bl	createSafeMappingEntries_PDE
.LVL2653:
	ldr	r7, [sp, #68]
.LVL2654:
	.loc 11 2693 0
	cmp	r7, #0
	beq	.L2626
	.loc 11 2695 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	ldr	r3, [r3, #24]
	cmp	r3, #8
	bne	.L2496
	.loc 11 2696 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2696
	ldr	r2, .L2779+4
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2655:
	movw	r0, #:lower16:.LC167
	movt	r0, #:upper16:.LC167
	bl	kprintf
.LVL2656:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2657:
	b	.L2496
.LVL2658:
.L2497:
.LBE11364:
.LBE11254:
	.loc 11 2811 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2659:
	ldr	r2, .L2779+4
.LVL2660:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
.LVL2661:
	movw	r3, #2811
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2662:
	movw	r0, #:lower16:.LC173
	movt	r0, #:upper16:.LC173
.LVL2663:
.L2725:
	bl	kprintf
.LVL2664:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2665:
	.loc 11 2812 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2814 0
	mov	r7, r2
	.loc 11 2812 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2666:
.L2755:
.LBB11417:
.LBB11051:
.LBB10976:
.LBB10968:
.LBB10969:
	.loc 36 1669 0
	and	r10, r4, #15
	cmp	r10, #3
	.loc 36 1672 0
	lsreq	r3, fp, #30
	streq	r3, [sp, #24]
	.loc 36 1669 0
	bne	.L2594
.LVL2667:
.L2512:
.LBE10969:
.LBE10968:
.LBE10976:
.LBE11051:
.LBB11052:
.LBB11003:
.LBB10994:
.LBB10995:
	.loc 36 1712 0
	ubfx	r3, fp, #18, #2
.LVL2668:
.L2518:
.LBE10995:
.LBE10994:
.LBE11003:
.LBE11052:
.LBB11053:
.LBB11043:
.LBB11037:
.LBB11031:
.LBB11029:
	.loc 38 160 0
	lsr	r1, r4, #12
.LVL2669:
.LBB11026:
.LBB11027:
	.loc 36 1686 0
	ubfx	r5, fp, #20, #10
.LVL2670:
.LBE11027:
.LBE11026:
	.loc 38 160 0
	and	r1, r1, #130048
	orr	r5, r1, r5
.LVL2671:
.L2520:
.LBE11029:
.LBE11031:
.LBE11037:
.LBE11043:
.LBE11053:
	.loc 11 2461 0
	cmp	r5, #0
	bne	.L2765
.LVL2672:
.LBB11054:
.LBB11055:
	.loc 36 903 0
	and	r1, r7, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r7
.LVL2673:
	.loc 36 904 0
	andne	r1, r7, #15
.LBE11055:
.LBE11054:
	.loc 11 2470 0
	cmp	r1, #9
	bne	.L2524
.LVL2674:
.LBB11056:
.LBB11057:
	.loc 36 2049 0
	and	r1, r7, #15
	cmp	r1, #9
	bne	.L2577
.LVL2675:
.LBE11057:
.LBE11056:
	.loc 11 2470 0
	tst	r7, #16
	beq	.L2524
	str	r3, [sp, #28]
	.loc 11 2456 0
	ldr	r3, [r0, #4]
.LBB11059:
	.loc 11 2486 0
	add	r0, sp, #68
.LVL2676:
.LBE11059:
.LBB11060:
.LBB11061:
	.loc 36 2038 0
	bic	r7, r7, #16320
.LVL2677:
	bic	r7, r7, #63
.LBE11061:
.LBE11060:
	.loc 11 2456 0
	str	r3, [sp, #44]
.LVL2678:
.LBB11062:
.LBB11063:
	.loc 36 2011 0
	ubfx	r3, r3, #0, #17
.LBE11063:
.LBE11062:
.LBB11065:
	.loc 11 2486 0
	mov	r1, r3
.LBE11065:
.LBB11066:
.LBB11064:
	.loc 36 2011 0
	str	r3, [sp, #40]
.LBE11064:
.LBE11066:
.LBB11067:
	.loc 11 2486 0
	bl	findPDForASID
.LVL2679:
	.loc 11 2487 0
	ldr	r3, [sp, #28]
	ldr	r1, [sp, #68]
	cmp	r1, #0
	bne	.L2766
	.loc 11 2497 0
	ldr	r2, [sp, #72]
	cmp	r7, r2
	bne	.L2767
.LVL2680:
.LBE11067:
.LBB11068:
.LBB11069:
	.loc 40 148 0
	ldr	r2, [sp, #24]
	cmp	r2, #2
	beq	.L2531
	cmp	r2, #3
	beq	.L2532
	cmp	r2, #1
	moveq	r2, #16
	movne	r2, #12
	moveq	r1, #65536
	movne	r1, #4096
	str	r2, [sp, #28]
.L2533:
.LVL2681:
.LBE11069:
.LBE11068:
	.loc 11 2507 0
	ldr	r2, [sp, #20]
	sub	r2, r2, #1
	add	r2, r2, r1
	.loc 11 2509 0
	cmn	r2, #536870913
	bhi	.L2768
	.loc 11 2518 0
	mov	r0, r3
	ldr	r1, [sp, #32]
.LVL2682:
	bl	maskVMRights
.LVL2683:
	.loc 11 2521 0
	ldr	r1, [sp, #20]
.LBB11072:
.LBB11073:
	.loc 11 1665 0
	mvn	r3, #0
.LBE11073:
.LBE11072:
	.loc 11 2521 0
	ldr	r2, [sp, #28]
	bics	r3, r1, r3, lsl r2
	bne	.L2769
.LVL2684:
.LBB11074:
.LBB11075:
	.loc 38 238 0
	cmp	r9, #1
	beq	.L2538
	cmp	r9, #3
	bne	.L2770
.LBB11076:
.LBB11077:
	.loc 36 1801 0
	cmp	r10, #3
	bne	.L2611
	.loc 36 1804 0
	mov	r1, #49152
	movt	r1, 65535
	and	r1, r1, r4, lsl #10
.LBE11077:
.LBE11076:
.LBE11075:
.LBE11074:
.LBB11087:
.LBB11088:
	.loc 19 29 0
	add	r1, r1, #-2147483648
.LVL2685:
.L2543:
.LBE11088:
.LBE11087:
.LBB11092:
.LBB11093:
.LBB11094:
.LBB11095:
	.loc 38 154 0
	ldr	r3, [sp, #40]
.LBB11096:
.LBB11097:
	.loc 36 1701 0
	bic	ip, fp, #1069547520
	.loc 36 1702 0
	ldr	lr, [sp, #44]
	.loc 36 1701 0
	bic	ip, ip, #3145728
.LBE11097:
.LBE11096:
	.loc 38 154 0
	lsr	r2, r3, #10
.LBB11103:
.LBB11104:
	.loc 36 1793 0
	bic	r3, r4, #532676608
	.loc 36 1794 0
	orr	r4, r3, r2, lsl #22
.LBE11104:
.LBE11103:
.LBB11105:
.LBB11098:
	.loc 36 1702 0
	mov	r3, #0
	movt	r3, 16368
.LBE11098:
.LBE11105:
.LBE11095:
.LBE11094:
.LBB11114:
.LBB11115:
	.loc 36 1748 0
	and	r2, r4, #15
.LBE11115:
.LBE11114:
.LBB11119:
.LBB11110:
.LBB11106:
.LBB11099:
	.loc 36 1702 0
	and	r9, r3, lr, lsl #20
.LBE11099:
.LBE11106:
.LBE11110:
.LBE11119:
.LBB11120:
.LBB11116:
	.loc 36 1748 0
	cmp	r2, #3
.LBE11116:
.LBE11120:
.LBB11121:
.LBB11111:
.LBB11107:
.LBB11100:
	.loc 36 1702 0
	orr	r9, r9, ip
.LVL2686:
.LBE11100:
.LBE11107:
.LBE11111:
.LBE11121:
.LBB11122:
.LBB11117:
	.loc 36 1748 0
	bne	.L2771
.LVL2687:
	.loc 36 1753 0
	lsr	r9, r9, #18
.LVL2688:
	.loc 36 1754 0
	ldr	r3, [sp, #20]
.LVL2689:
	.loc 36 1753 0
	lsl	r9, r9, #18
	.loc 36 1754 0
	orr	r9, r9, r3, lsr #14
.LVL2690:
.L2546:
.LBE11117:
.LBE11122:
.LBE11093:
.LBE11092:
	.loc 11 2534 0
	ldr	r3, [sp, #24]
.LBB11149:
	.loc 11 2536 0
	str	r0, [sp]
.LBE11149:
	.loc 11 2534 0
	cmp	r3, #1
	bls	.L2772
.LBB11184:
	.loc 11 2554 0
	ldrd	r2, [sp, #20]
	ldr	r0, [sp, #36]
.LVL2691:
	stmib	sp, {r0, r7}
	add	r0, sp, #48
	bl	createSafeMappingEntries_PDE
.LVL2692:
	ldr	r7, [sp, #48]
.LVL2693:
	.loc 11 2557 0
	cmp	r7, #0
	bne	.L2773
	.loc 11 2566 0
	mov	r1, #2
	ldr	r0, [r8]
	bl	setThreadState
.LVL2694:
	ldr	r3, [sp, #52]
.LVL2695:
.LBB11185:
.LBB11186:
	.loc 11 2017 0
	stm	r6, {r4, r9}
	ldr	r1, [sp, #60]
	ldr	r9, [sp, #56]
.LVL2696:
	ldr	r0, [sp, #64]
.LVL2697:
.LBB11187:
.LBB11188:
	.loc 36 2433 0
	and	r2, r3, #3
.LBE11188:
.LBE11187:
.LBB11193:
.LBB11194:
.LBB11195:
	.loc 36 2325 0
	ldr	ip, [r1]
.LBE11195:
.LBE11194:
.LBE11193:
.LBB11198:
.LBB11189:
	.loc 36 2433 0
	cmp	r2, #1
.LBE11189:
.LBE11198:
.LBB11199:
.LBB11197:
.LBB11196:
	.loc 36 2325 0
	and	ip, ip, #3
.LVL2698:
.LBE11196:
.LBE11197:
.LBE11199:
.LBB11200:
.LBB11190:
	.loc 36 2433 0
	bne	.L2628
.LBE11190:
.LBE11200:
	.loc 11 2029 0
	cmp	r0, #0
.LBB11201:
.LBB11191:
	.loc 36 2436 0
	mov	r6, #61440
.LVL2699:
	movt	r6, 65535
	movne	r4, r1
.LVL2700:
	and	lr, r3, r6
.LVL2701:
.LBE11191:
.LBE11201:
	.loc 11 2029 0
	bne	.L2566
	b	.L2568
.LVL2702:
.L2567:
.LBB11202:
.LBB11203:
	.loc 36 2446 0
	and	r2, r3, #3
	add	lr, lr, #2097152
.LVL2703:
	cmp	r2, #1
	add	r4, r4, #8
	bne	.L2632
.LVL2704:
.L2566:
	.loc 36 2451 0
	ubfx	r3, r3, #0, #12
.LVL2705:
	.loc 36 2452 0
	and	r2, lr, r6
	orr	r3, r3, r2
.LVL2706:
.LBE11203:
.LBE11202:
	.loc 11 2033 0
	str	r3, [r1, r5, lsl #3]
	.loc 11 2029 0
	add	r5, r5, #1
.LVL2707:
	cmp	r0, r5
	.loc 11 2033 0
	str	r9, [r4, #4]
	.loc 11 2029 0
	bne	.L2567
.LVL2708:
.L2568:
	.loc 11 2036 0
	add	r2, r1, r0, lsl #3
.LBB11205:
.LBB11206:
	.loc 16 96 0
	lsr	r3, r1, #6
.LVL2709:
.LBE11206:
.LBE11205:
	.loc 11 2035 0
	sub	r2, r2, #1
.LBB11212:
.LBB11211:
	.loc 16 96 0
	lsr	r2, r2, #6
	add	r2, r2, #1
	cmp	r3, r2
	lslcc	r3, r3, #6
.LVL2710:
	lslcc	r2, r2, #6
	bcs	.L2565
.LVL2711:
.L2570:
.LBB11207:
.LBB11208:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB11209:
.LBB11210:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2712:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL2713:
.LBE11210:
.LBE11209:
.LBE11208:
.LBE11207:
	.loc 16 96 0
	cmp	r3, r2
	bne	.L2570
.LVL2714:
.L2565:
.LBE11211:
.LBE11212:
	.loc 11 2038 0
	cmp	ip, #0
	beq	.L2496
	.loc 11 2039 0
	ldr	r0, [sp, #40]
	bl	invalidateTLBByASID
.LVL2715:
	b	.L2496
.LVL2716:
.L2743:
.LBE11186:
.LBE11185:
.LBE11184:
.LBE11417:
.LBB11418:
.LBB10741:
	.loc 38 238 0
	mov	r4, #-2147483648
	b	.L2675
.L2676:
.LVL2717:
.LBB10739:
.LBB10740:
	.loc 36 1627 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L2610
	.loc 36 1630 0
	mov	r3, #61440
	movt	r3, 65535
	and	r4, r3, r4, lsl #8
	add	r4, r4, #-2147483648
	b	.L2675
.LVL2718:
.L2719:
.LBE10740:
.LBE10739:
.LBE10741:
.LBE11418:
.LBB11419:
.LBB10941:
.LBB10938:
	.loc 38 259 0
	mov	r2, #4096
	b	.L2666
.LVL2719:
.L2712:
.LBE10938:
.LBE10941:
.LBE11419:
.LBB11420:
.LBB11391:
.LBB11392:
	.loc 38 217 0
	cmp	r7, #1
	beq	.L2597
	cmp	r7, #3
	beq	.L2774
.LBE11392:
.LBE11391:
	.loc 11 2655 0
	mov	r0, r3
	ldr	r1, [sp, #20]
	str	r3, [sp, #20]
	bl	maskVMRights
.LVL2720:
.LBB11399:
.LBB11318:
	.loc 38 261 0
	ldr	r3, [sp, #20]
	mov	r5, r3
.LVL2721:
	b	.L2600
.LVL2722:
.L2671:
.LBE11318:
.LBE11399:
.LBE11420:
.LBB11421:
	.loc 11 2796 0
	mov	r0, ip
	mov	r1, #2
	.loc 11 2793 0
	add	r6, r3, r4
	.loc 11 2792 0
	add	r9, r3, #-2147483648
	.loc 11 2796 0
	bl	setThreadState
.LVL2723:
	.loc 11 2797 0
	ldr	r1, [sp, #72]
	sub	r8, r8, #1
	.loc 11 2792 0
	add	r9, r9, r4
.LVL2724:
	.loc 11 2797 0
	mov	r3, r6
	add	r4, r8, r4
	mov	r2, r7
	mov	r0, r5
	str	r4, [sp, #136]
	str	r9, [sp, #140]
.LVL2725:
.LBE11421:
	.loc 11 2816 0
	add	sp, sp, #92
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL2726:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB11422:
	.loc 11 2797 0
	b	performPageFlush
.LVL2727:
.L2514:
	.cfi_restore_state
.LBE11422:
.LBB11423:
.LBB11219:
.LBB11004:
.LBB10997:
.LBB10998:
	.loc 36 1535 0
	and	r10, r4, #15
	cmp	r10, #1
	.loc 36 1538 0
	ubfxeq	r3, fp, #20, #2
	.loc 36 1535 0
	bne	.L2599
.LVL2728:
.L2517:
.LBE10998:
.LBE10997:
.LBE11004:
.LBE11219:
.LBB11220:
.LBB11044:
.LBB11038:
.LBB11032:
.LBB11016:
	.loc 38 144 0
	lsr	r5, r4, #14
.LVL2729:
.LBE11016:
.LBE11032:
.LBE11038:
.LBE11044:
.LBE11220:
.LBB11221:
.LBB10977:
	.loc 38 261 0
	mov	r1, #0
.LVL2730:
.LBE10977:
.LBE11221:
.LBB11222:
.LBB11045:
.LBB11039:
.LBB11033:
.LBB11017:
	.loc 38 144 0
	and	r5, r5, #130048
.LBE11017:
.LBE11033:
.LBE11039:
.LBE11045:
.LBE11222:
.LBB11223:
.LBB10978:
	.loc 38 261 0
	str	r1, [sp, #24]
.LBE10978:
.LBE11223:
.LBB11224:
.LBB11046:
.LBB11040:
.LBB11034:
.LBB11018:
	.loc 38 144 0
	add	r5, r5, fp, lsr #22
.LVL2731:
	b	.L2520
.LVL2732:
.L2532:
.LBE11018:
.LBE11034:
.LBE11040:
.LBE11046:
.LBE11224:
.LBB11225:
.LBB11070:
	.loc 40 159 0
	mov	r2, #25
.LVL2733:
	mov	r1, #33554432
	str	r2, [sp, #28]
	b	.L2533
.LVL2734:
.L2745:
.LBE11070:
.LBE11225:
.LBE11423:
.LBB11424:
.LBB10870:
.LBB10812:
.LBB10813:
	.loc 38 259 0
	cmp	r2, #3
.LVL2735:
.LBE10813:
.LBE10812:
.LBB10817:
.LBB10818:
.LBB10819:
.LBB10820:
	.loc 38 160 0
	lsl	r1, r3, #10
.LBE10820:
.LBE10819:
.LBE10818:
.LBE10817:
.LBB10832:
.LBB10816:
.LBB10814:
.LBB10815:
	.loc 36 1672 0
	lsreq	r0, fp, #30
.LVL2736:
.LBE10815:
.LBE10814:
	.loc 38 259 0
	movne	r0, #0
.LVL2737:
.LBE10816:
.LBE10832:
.LBB10833:
.LBB10834:
	.loc 38 238 0
	cmp	r2, #3
.LBE10834:
.LBE10833:
.LBB10851:
.LBB10829:
.LBB10826:
.LBB10823:
.LBB10821:
.LBB10822:
	.loc 36 1686 0
	ubfx	ip, ip, #0, #10
.LBE10822:
.LBE10821:
.LBE10823:
.LBE10826:
.LBE10829:
.LBE10851:
.LBB10852:
.LBB10845:
.LBB10835:
.LBB10836:
	.loc 36 1804 0
	moveq	r3, #49152
.LBE10836:
.LBE10835:
.LBE10845:
.LBE10852:
.LBB10853:
.LBB10830:
.LBB10827:
.LBB10824:
	.loc 38 160 0
	and	r1, r1, #130048
.LBE10824:
.LBE10827:
.LBE10830:
.LBE10853:
.LBB10854:
.LBB10846:
.LBB10839:
.LBB10837:
	.loc 36 1804 0
	movteq	r3, 65535
.LBE10837:
.LBE10839:
.LBE10846:
.LBE10854:
.LBB10855:
.LBB10856:
.LBB10857:
.LBB10858:
	.loc 36 1738 0
	lsl	r2, fp, #14
.LBE10858:
.LBE10857:
.LBE10856:
.LBE10855:
.LBB10860:
.LBB10847:
.LBB10840:
.LBB10838:
	.loc 36 1804 0
	andeq	r3, r3, r4, lsl #10
.LBE10838:
.LBE10840:
.LBE10847:
.LBE10860:
.LBB10861:
.LBB10831:
.LBB10828:
.LBB10825:
	.loc 38 160 0
	orr	r1, r1, ip
.LVL2738:
.LBE10825:
.LBE10828:
.LBE10831:
.LBE10861:
.LBB10862:
.LBB10848:
	.loc 38 238 0
	movne	r3, #0
.LVL2739:
.L2646:
.LBE10848:
.LBE10862:
	.loc 11 2113 0
	bl	unmapPage
.LVL2740:
	b	.L2643
.LVL2741:
.L2744:
.LBB10863:
.LBB10775:
.LBB10774:
.LBB10773:
.LBB10764:
.LBB10763:
.LBB10762:
	.loc 36 1601 0
	cmp	r3, #1
	bne	.L2583
.LVL2742:
.LBE10762:
.LBE10763:
	.loc 38 144 0
	lsr	r3, r4, #14
	and	r3, r3, #130048
.LBE10764:
.LBE10773:
.LBE10774:
.LBE10775:
.LBE10863:
	.loc 11 2112 0
	adds	r1, r3, fp, lsr #22
	beq	.L2643
.LVL2743:
.LBB10864:
.LBB10849:
.LBB10841:
.LBB10842:
	.loc 36 1630 0
	mov	r3, #61440
.LVL2744:
.LBE10842:
.LBE10841:
.LBE10849:
.LBE10864:
.LBB10865:
.LBB10859:
	.loc 38 287 0
	lsl	r2, fp, #12
.LBE10859:
.LBE10865:
.LBB10866:
.LBB10850:
.LBB10844:
.LBB10843:
	.loc 36 1630 0
	movt	r3, 65535
	and	r3, r3, r4, lsl #8
	mov	r0, #0
	b	.L2646
.LVL2745:
.L2749:
.LBE10843:
.LBE10844:
.LBE10850:
.LBE10866:
.LBE10870:
.LBE11424:
.LBB11425:
.LBB10942:
.LBB10904:
.LBB10898:
.LBB10885:
.LBB10884:
.LBB10883:
	.loc 36 1601 0
	cmp	r10, #1
	bne	.L2583
.LVL2746:
.LBE10883:
.LBE10884:
	.loc 38 144 0
	lsr	r7, r4, #14
.LBE10885:
.LBE10898:
.LBE10904:
.LBE10942:
.LBB10943:
.LBB10918:
.LBB10913:
.LBB10914:
	.loc 36 1630 0
	mov	r3, #61440
	movt	r3, 65535
.LBE10914:
.LBE10913:
.LBE10918:
.LBE10943:
.LBB10944:
.LBB10905:
.LBB10899:
.LBB10886:
	.loc 38 144 0
	and	r7, r7, #130048
.LBE10886:
.LBE10899:
.LBE10905:
.LBE10944:
.LBB10945:
.LBB10919:
	.loc 38 240 0
	and	r4, r3, r4, lsl #8
.LBE10919:
.LBE10945:
.LBB10946:
.LBB10906:
.LBB10900:
.LBB10887:
	.loc 38 144 0
	add	r7, r7, fp, lsr #22
.LVL2747:
.LBE10887:
.LBE10900:
.LBE10906:
.LBE10946:
.LBB10947:
.LBB10948:
.LBB10949:
.LBB10950:
.LBB10951:
	mov	r1, r7
.LVL2748:
	b	.L2660
.LVL2749:
.L2752:
.LBE10951:
.LBE10950:
.LBE10949:
.LBE10948:
.LBE10947:
	.loc 11 2773 0
	ldr	lr, [ip, #68]
	add	r3, ip, #528
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2779+4
	str	ip, [sp]
	movt	r0, #:upper16:.LC14
	.loc 11 2776 0
	mov	r7, #3
	.loc 11 2773 0
	stmib	sp, {r3, lr}
	movw	r3, #2773
	bl	kprintf
.LVL2750:
	movw	r0, #:lower16:.LC171
	movt	r0, #:upper16:.LC171
	bl	kprintf
.LVL2751:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2752:
	.loc 11 2774 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2775 0
	str	r2, [r3]
	.loc 11 2774 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2753:
.L2747:
.LBE11425:
.LBB11426:
.LBB10871:
.LBB10867:
.LBB10809:
.LBB10806:
.LBB10804:
.LBB10799:
.LBB10786:
.LBB10785:
	.loc 36 1522 0
	cmp	r1, #1
	bne	.L2652
.LVL2754:
.LBE10785:
.LBE10786:
.LBB10787:
.LBB10788:
	.loc 36 1619 0
	bic	r3, r3, #2130706432
.LVL2755:
.LBE10788:
.LBE10787:
.LBE10799:
.LBB10800:
.LBB10801:
	.loc 36 1579 0
	and	r2, r2, #3145728
.LVL2756:
	b	.L2653
.LVL2757:
.L2758:
.LBE10801:
.LBE10800:
.LBE10804:
.LBE10806:
.LBE10809:
.LBE10867:
.LBE10871:
.LBE11426:
.LBB11427:
	.loc 11 2593 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2758:
	ldr	r2, .L2779+4
.LVL2759:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
.LVL2760:
	movw	r3, #2593
	.loc 11 2597 0
	mov	r7, #3
	.loc 11 2593 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2761:
	movw	r0, #:lower16:.LC159
	movt	r0, #:upper16:.LC159
.L2722:
	bl	kprintf
.LVL2762:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2763:
	.loc 11 2594 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	b	.L2496
.LVL2764:
.L2753:
.LBE11427:
.LBB11428:
	.loc 11 2446 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2765:
	ldr	r2, .L2779+4
.LVL2766:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
.LVL2767:
	movw	r3, #2446
	.loc 11 2450 0
	mov	r7, #3
	.loc 11 2446 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2768:
	movw	r0, #:lower16:.LC150
	movt	r0, #:upper16:.LC150
	b	.L2722
.LVL2769:
.L2759:
.LBE11428:
.LBB11429:
.LBB11400:
.LBB11290:
.LBB11288:
.LBB11287:
.LBB11280:
.LBB11279:
.LBB11278:
	.loc 36 1601 0
	cmp	r10, #1
	bne	.L2583
.LVL2770:
.LBE11278:
.LBE11279:
	.loc 38 144 0
	lsr	r6, r4, #14
	and	r6, r6, #130048
.LBE11280:
.LBE11287:
.LBE11288:
.LBE11290:
.LBE11400:
	.loc 11 2614 0
	adds	r6, r6, fp, lsr #22
.LBB11401:
.LBB11303:
.LBB11298:
.LBB11299:
	.loc 36 1564 0
	lslne	r3, fp, #12
.LBE11299:
.LBE11298:
.LBE11303:
.LBE11401:
.LBB11402:
.LBB11307:
	.loc 36 2038 0
	bicne	r5, r5, #16320
.LVL2771:
	bicne	r5, r5, #63
.LVL2772:
.LBE11307:
.LBE11402:
.LBB11403:
.LBB11304:
.LBB11301:
.LBB11300:
	.loc 36 1564 0
	strne	r3, [sp, #24]
.LBE11300:
.LBE11301:
.LBE11304:
.LBE11403:
	.loc 11 2614 0
	bne	.L2678
.LVL2773:
.L2584:
	.loc 11 2615 0
	ldr	ip, [r1, #68]
.LVL2774:
	add	r2, r1, #528
.LVL2775:
	movw	r0, #:lower16:.LC14
.LVL2776:
	movt	r0, #:upper16:.LC14
	movw	r3, #2615
	.loc 11 2620 0
	mov	r7, #3
	.loc 11 2615 0
	stm	sp, {r1, r2, ip}
.LVL2777:
	mov	r1, #0
	ldr	r2, .L2779+4
	bl	kprintf
.LVL2778:
	movw	r0, #:lower16:.LC161
	movt	r0, #:upper16:.LC161
.LVL2779:
.L2723:
	bl	kprintf
.LVL2780:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2781:
	.loc 11 2616 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2618 0
	mov	r1, #0
	str	r1, [r3, #4]
	.loc 11 2616 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2782:
.L2576:
	.loc 11 2606 0
	ldr	ip, [r1, #68]
	add	r2, r1, #528
.LVL2783:
	movw	r0, #:lower16:.LC14
.LVL2784:
	movt	r0, #:upper16:.LC14
	movw	r3, #2606
	.loc 11 2611 0
	mov	r7, #3
	.loc 11 2606 0
	stm	sp, {r1, r2, ip}
.LVL2785:
	mov	r1, #0
	ldr	r2, .L2779+4
	bl	kprintf
.LVL2786:
	movw	r0, #:lower16:.LC160
	movt	r0, #:upper16:.LC160
.LVL2787:
.L2724:
	bl	kprintf
.LVL2788:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2789:
	.loc 11 2607 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2609 0
	mov	r1, #1
	str	r1, [r3, #4]
	.loc 11 2607 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2790:
.L2597:
.LBB11404:
.LBB11397:
.LBB11393:
.LBB11394:
	.loc 36 1535 0
	cmp	r10, #1
	str	r3, [sp, #32]
.LVL2791:
	bne	.L2599
.LVL2792:
.LBE11394:
.LBE11393:
.LBE11397:
.LBE11404:
	.loc 11 2655 0
	ubfx	r0, fp, #20, #2
	ldr	r1, [sp, #20]
	bl	maskVMRights
.LVL2793:
.LBB11405:
.LBB11319:
	.loc 38 261 0
	ldr	r3, [sp, #32]
	mov	r5, r3
.LVL2794:
	b	.L2600
.LVL2795:
.L2524:
.LBE11319:
.LBE11405:
.LBE11429:
.LBB11430:
	.loc 11 2472 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
.LVL2796:
	str	r2, [sp]
.LVL2797:
	movt	r0, #:upper16:.LC14
	movw	r3, #2472
	ldr	r2, .L2779+4
	.loc 11 2477 0
	mov	r7, #3
.LVL2798:
	.loc 11 2472 0
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL2799:
	movw	r0, #:lower16:.LC152
	movt	r0, #:upper16:.LC152
	b	.L2724
.LVL2800:
.L2748:
.LBE11430:
.LBB11431:
	.loc 11 2740 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2801:
	ldr	r2, .L2779+4
.LVL2802:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r1, #0
.LVL2803:
	movw	r3, #2740
	.loc 11 2742 0
	mov	r7, #3
	.loc 11 2740 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2804:
	movw	r0, #:lower16:.LC168
	movt	r0, #:upper16:.LC168
	b	.L2722
.LVL2805:
.L2538:
.LBE11431:
.LBB11432:
.LBB11226:
.LBB11084:
.LBB11079:
.LBB11080:
	.loc 36 1627 0
	cmp	r10, #1
	bne	.L2610
	.loc 36 1630 0
	mov	r1, #61440
	movt	r1, 65535
	and	r1, r1, r4, lsl #8
.LBE11080:
.LBE11079:
.LBE11084:
.LBE11226:
.LBB11227:
.LBB11089:
	.loc 19 29 0
	add	r1, r1, #-2147483648
.LVL2806:
.L2541:
.LBE11089:
.LBE11227:
.LBB11228:
.LBB11144:
.LBB11123:
.LBB11124:
	.loc 38 138 0
	ldr	r3, [sp, #40]
.LBB11125:
.LBB11126:
	.loc 36 1619 0
	bic	r4, r4, #2130706432
.LBE11126:
.LBE11125:
.LBB11128:
.LBB11129:
	.loc 36 1527 0
	ubfx	r2, fp, #0, #22
.LBE11129:
.LBE11128:
	.loc 38 138 0
	lsr	r3, r3, #10
.LBB11132:
.LBB11127:
	.loc 36 1620 0
	orr	r4, r4, r3, lsl #24
.LBE11127:
.LBE11132:
.LBB11133:
.LBB11130:
	.loc 36 1528 0
	ldr	r3, [sp, #44]
	orr	r9, r2, r3, lsl #22
.LVL2807:
.LBE11130:
.LBE11133:
.LBE11124:
.LBE11123:
.LBB11136:
.LBB11137:
	.loc 36 1574 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L2775
.LVL2808:
	.loc 36 1579 0
	lsr	r9, r9, #20
.LVL2809:
	.loc 36 1580 0
	ldr	r3, [sp, #20]
	.loc 36 1579 0
	lsl	r9, r9, #20
	.loc 36 1580 0
	orr	r9, r9, r3, lsr #12
.LVL2810:
	b	.L2546
.LVL2811:
.L2770:
.LBE11137:
.LBE11136:
	.loc 38 190 0
	cmp	r9, #1
	beq	.L2776
.LVL2812:
.LBB11139:
.LBB11112:
.LBB11108:
.LBB11101:
	.loc 36 1696 0
	cmp	r10, #3
.LBE11101:
.LBE11108:
.LBE11112:
.LBE11139:
.LBE11144:
.LBE11228:
.LBB11229:
.LBB11090:
	.loc 19 29 0
	moveq	r1, #-2147483648
.LBE11090:
.LBE11229:
.LBB11230:
.LBB11145:
.LBB11140:
.LBB11113:
.LBB11109:
.LBB11102:
	.loc 36 1696 0
	beq	.L2543
.LVL2813:
.L2654:
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
	ldr	r3, .L2779
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1697
	bl	_assert_fail
.LVL2814:
.L2763:
.LBE11102:
.LBE11109:
.LBE11113:
.LBE11140:
.LBE11145:
.LBE11230:
.LBE11432:
.LBB11433:
.LBB11406:
.LBB11335:
	.loc 38 238 0
	mov	r1, #-2147483648
	b	.L2607
.L2608:
.LBB11333:
.LBB11334:
	.loc 36 1627 0
	cmp	r10, #1
	bne	.L2610
	.loc 36 1630 0
	mov	r1, #61440
	movt	r1, 65535
	and	r1, r1, r4, lsl #8
	add	r1, r1, #-2147483648
	b	.L2607
.LVL2815:
.L2590:
.LBE11334:
.LBE11333:
.LBE11335:
.LBE11406:
.LBB11407:
	.loc 11 2644 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2644
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2816:
	movw	r0, #:lower16:.LC163
	movt	r0, #:upper16:.LC163
.LVL2817:
.L2729:
	bl	kprintf
.LVL2818:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2819:
	.loc 11 2645 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2647 0
	mov	r1, #1
	str	r1, [r3, #4]
	.loc 11 2645 0
	str	r2, [r3, #24]
.L2589:
	.loc 11 2638 0
	mov	r7, #3
	b	.L2496
.LVL2820:
.L2531:
.LBE11407:
.LBE11433:
.LBB11434:
.LBB11231:
.LBB11071:
	.loc 40 156 0
	mov	r2, #21
.LVL2821:
	.loc 40 148 0
	mov	r1, #2097152
	.loc 40 156 0
	str	r2, [sp, #28]
	b	.L2533
.LVL2822:
.L2750:
.LBE11071:
.LBE11231:
.LBE11434:
.LBB11435:
	.loc 11 2754 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL2823:
	ldr	r2, .L2779+4
.LVL2824:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	movw	r3, #2754
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2825:
	movw	r0, #:lower16:.LC169
	movt	r0, #:upper16:.LC169
	b	.L2725
.LVL2826:
.L2764:
.LBE11435:
.LBB11436:
.LBB11408:
	.loc 11 2671 0
	bl	createSafeMappingEntries_PTE
.LVL2827:
	ldr	r7, [sp, #68]
.LVL2828:
	.loc 11 2674 0
	cmp	r7, #0
	beq	.L2613
	.loc 11 2676 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	ldr	r3, [r3, #24]
	cmp	r3, #6
	beq	.L2777
	.loc 11 2678 0
	cmp	r3, #8
	bne	.L2496
	.loc 11 2679 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2679
	ldr	r2, .L2779+4
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2829:
	movw	r0, #:lower16:.LC166
	movt	r0, #:upper16:.LC166
	bl	kprintf
.LVL2830:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2831:
	b	.L2496
.LVL2832:
.L2772:
.LBE11408:
.LBE11436:
.LBB11437:
.LBB11232:
	.loc 11 2536 0
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #36]
.LVL2833:
	stmib	sp, {r0, r7}
	add	r0, sp, #48
	bl	createSafeMappingEntries_PTE
.LVL2834:
	ldr	r7, [sp, #48]
.LVL2835:
	.loc 11 2539 0
	cmp	r7, #0
	bne	.L2778
	.loc 11 2548 0
	mov	r1, #2
	ldr	r0, [r8]
	bl	setThreadState
.LVL2836:
	ldr	r3, [sp, #52]
.LVL2837:
.LBB11150:
.LBB11151:
	.loc 11 1982 0
	stm	r6, {r4, r9}
	ldr	r1, [sp, #60]
	ldr	r9, [sp, #56]
.LVL2838:
	ldr	r0, [sp, #64]
.LVL2839:
.LBB11152:
.LBB11153:
	.loc 36 823 0
	and	r2, r3, #3
.LBE11153:
.LBE11152:
.LBB11158:
.LBB11159:
.LBB11160:
	.loc 36 747 0
	ldr	ip, [r1]
.LBE11160:
.LBE11159:
.LBE11158:
.LBB11163:
.LBB11154:
	.loc 36 823 0
	cmp	r2, #3
.LBE11154:
.LBE11163:
.LBB11164:
.LBB11162:
.LBB11161:
	.loc 36 747 0
	and	ip, ip, #3
.LVL2840:
.LBE11161:
.LBE11162:
.LBE11164:
.LBB11165:
.LBB11155:
	.loc 36 823 0
	bne	.L2616
.LVL2841:
.LBE11155:
.LBE11165:
	.loc 11 1994 0
	cmp	r0, #0
.LBB11166:
.LBB11156:
	.loc 36 826 0
	mov	r6, #61440
.LVL2842:
	movt	r6, 65535
	movne	r4, r1
.LVL2843:
	and	lr, r3, r6
.LVL2844:
.LBE11156:
.LBE11166:
	.loc 11 1994 0
	bne	.L2555
	b	.L2557
.LVL2845:
.L2556:
.LBB11167:
.LBB11168:
	.loc 36 836 0
	and	r2, r3, #3
	add	lr, lr, #4096
.LVL2846:
	cmp	r2, #3
	add	r4, r4, #8
	bne	.L2620
.LVL2847:
.L2555:
	.loc 36 841 0
	ubfx	r3, r3, #0, #12
.LVL2848:
	.loc 36 842 0
	and	r2, lr, r6
	orr	r3, r3, r2
.LVL2849:
.LBE11168:
.LBE11167:
	.loc 11 1998 0
	str	r3, [r1, r5, lsl #3]
	.loc 11 1994 0
	add	r5, r5, #1
.LVL2850:
	cmp	r5, r0
	.loc 11 1998 0
	str	r9, [r4, #4]
	.loc 11 1994 0
	bne	.L2556
.LVL2851:
.L2557:
	.loc 11 2001 0
	add	r2, r1, r0, lsl #3
.LBB11170:
.LBB11171:
	.loc 16 96 0
	lsr	r3, r1, #6
.LVL2852:
.LBE11171:
.LBE11170:
	.loc 11 2000 0
	sub	r2, r2, #1
.LBB11177:
.LBB11176:
	.loc 16 96 0
	lsr	r2, r2, #6
	add	r2, r2, #1
	cmp	r2, r3
	lslhi	r3, r3, #6
.LVL2853:
	lslhi	r2, r2, #6
	bls	.L2565
.LVL2854:
.L2559:
.LBB11172:
.LBB11173:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB11174:
.LBB11175:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2855:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL2856:
.LBE11175:
.LBE11174:
.LBE11173:
.LBE11172:
	.loc 16 96 0
	cmp	r2, r3
	bne	.L2559
	b	.L2565
.LVL2857:
.L2765:
.LBE11176:
.LBE11177:
.LBE11151:
.LBE11150:
.LBE11232:
	.loc 11 2462 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
.LVL2858:
	str	r2, [sp]
.LVL2859:
	movt	r0, #:upper16:.LC14
	movw	r3, #2462
	ldr	r2, .L2779+4
	.loc 11 2467 0
	mov	r7, #3
.LVL2860:
	.loc 11 2462 0
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL2861:
	movw	r0, #:lower16:.LC151
	movt	r0, #:upper16:.LC151
	b	.L2723
.LVL2862:
.L2751:
.LBE11437:
.LBB11438:
	.loc 11 2761 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2779+4
	ldr	ip, [r3]
	mov	r1, #0
	movw	r3, #2761
	movt	r0, #:upper16:.LC14
	.loc 11 2765 0
	mov	r7, #3
	.loc 11 2761 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2863:
	movw	r0, #:lower16:.LC170
	movt	r0, #:upper16:.LC170
	bl	kprintf
.LVL2864:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2865:
	.loc 11 2762 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2764 0
	mov	r1, #0
	str	r1, [r3, #20]
	.loc 11 2762 0
	str	r2, [r3, #24]
	b	.L2496
.LVL2866:
.L2626:
.LBE11438:
.LBB11439:
.LBB11409:
	.loc 11 2702 0
	mov	r1, #2
	ldr	r0, [r8]
	bl	setThreadState
.LVL2867:
	ldr	r3, [sp, #72]
.LVL2868:
	ldr	r1, [sp, #80]
	ldr	r9, [sp, #76]
.LVL2869:
	ldr	ip, [sp, #84]
.LVL2870:
.LBB11365:
.LBB11366:
.LBB11367:
.LBB11368:
	.loc 36 2433 0
	and	r2, r3, #3
.LBE11368:
.LBE11367:
.LBB11372:
.LBB11373:
.LBB11374:
	.loc 36 2325 0
	ldr	lr, [r1]
.LBE11374:
.LBE11373:
.LBE11372:
.LBB11377:
.LBB11369:
	.loc 36 2433 0
	cmp	r2, #1
.LBE11369:
.LBE11377:
.LBB11378:
.LBB11376:
.LBB11375:
	.loc 36 2325 0
	and	lr, lr, #3
.LVL2871:
.LBE11375:
.LBE11376:
.LBE11378:
.LBB11379:
.LBB11370:
	.loc 36 2433 0
	bne	.L2628
.LBE11370:
.LBE11379:
	.loc 11 2093 0
	cmp	ip, #0
.LBB11380:
.LBB11371:
	.loc 36 2436 0
	mov	r8, #61440
	movt	r8, 65535
	movne	r5, r1
	and	r4, r3, r8
.LVL2872:
.LBE11371:
.LBE11380:
	.loc 11 2093 0
	movne	r0, r7
	bne	.L2633
	b	.L2635
.LVL2873:
.L2634:
.LBB11381:
.LBB11382:
	.loc 36 2446 0
	and	r2, r3, #3
	add	r4, r4, #2097152
.LVL2874:
	cmp	r2, #1
	add	r5, r5, #8
	bne	.L2632
.LVL2875:
.L2633:
	.loc 36 2451 0
	ubfx	r3, r3, #0, #12
.LVL2876:
	.loc 36 2452 0
	and	r2, r4, r8
	orr	r3, r3, r2
.LVL2877:
.LBE11382:
.LBE11381:
	.loc 11 2097 0
	str	r3, [r1, r0, lsl #3]
	.loc 11 2093 0
	add	r0, r0, #1
.LVL2878:
	cmp	ip, r0
	.loc 11 2097 0
	str	r9, [r5, #4]
	.loc 11 2093 0
	bne	.L2634
.LVL2879:
.L2635:
	.loc 11 2100 0
	add	r2, r1, ip, lsl #3
.LBB11383:
.LBB11384:
	.loc 16 96 0
	lsr	r3, r1, #6
.LVL2880:
.LBE11384:
.LBE11383:
	.loc 11 2099 0
	sub	r2, r2, #1
.LBB11390:
.LBB11389:
	.loc 16 96 0
	lsr	r2, r2, #6
	add	r2, r2, #1
	cmp	r3, r2
	lslcc	r3, r3, #6
.LVL2881:
	lslcc	r2, r2, #6
	bcs	.L2631
.LVL2882:
.L2637:
.LBB11385:
.LBB11386:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB11387:
.LBB11388:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2883:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL2884:
.LBE11388:
.LBE11387:
.LBE11386:
.LBE11385:
	.loc 16 96 0
	cmp	r2, r3
	bne	.L2637
.LVL2885:
.L2631:
.LBE11389:
.LBE11390:
	.loc 11 2102 0
	cmp	lr, #0
	beq	.L2496
	.loc 11 2103 0
	mov	r0, r6
	bl	invalidateTLBByASID
.LVL2886:
	b	.L2496
.LVL2887:
.L2766:
.LBE11366:
.LBE11365:
.LBE11409:
.LBE11439:
.LBB11440:
.LBB11233:
	.loc 11 2488 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2488
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2888:
	movw	r0, #:lower16:.LC153
	movt	r0, #:upper16:.LC153
.LVL2889:
.L2730:
.LBE11233:
.LBE11440:
.LBB11441:
.LBB11410:
	.loc 11 2633 0
	bl	kprintf
.LVL2890:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2891:
	.loc 11 2634 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2636 0
	mov	r1, #0
	str	r1, [r3, #20]
	.loc 11 2634 0
	str	r2, [r3, #24]
	b	.L2589
.LVL2892:
.L2760:
	.loc 11 2633 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2633
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2893:
	movw	r0, #:lower16:.LC162
	movt	r0, #:upper16:.LC162
	b	.L2730
.LVL2894:
.L2767:
.LBE11410:
.LBE11441:
.LBB11442:
.LBB11234:
	.loc 11 2498 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2498
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2895:
	movw	r0, #:lower16:.LC154
	movt	r0, #:upper16:.LC154
	b	.L2729
.LVL2896:
.L2602:
.LBE11234:
.LBE11442:
.LBB11443:
.LBB11411:
.LBB11327:
.LBB11326:
.LBB11325:
	.loc 40 148 0
	movw	r3, #65535
	movt	r3, 31
	b	.L2604
.L2761:
	movw	r3, #65535
	b	.L2604
.LVL2897:
.L2768:
.LBE11325:
.LBE11326:
.LBE11327:
.LBE11411:
.LBE11443:
.LBB11444:
	.loc 11 2510 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2510
	ldr	r2, .L2779+4
	mov	r1, #0
.LVL2898:
	movt	r0, #:upper16:.LC14
	.loc 11 2515 0
	mov	r7, #3
.LVL2899:
	.loc 11 2510 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2900:
	movw	r0, #:lower16:.LC155
	mov	r2, #-536870912
	ldr	r1, [sp, #20]
	movt	r0, #:upper16:.LC155
	bl	kprintf
.LVL2901:
	b	.L2726
.LVL2902:
.L2769:
	.loc 11 2522 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
.LVL2903:
	movw	r3, #2522
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	mov	r1, #0
	.loc 11 2526 0
	mov	r7, #3
.LVL2904:
	.loc 11 2522 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2905:
	movw	r0, #:lower16:.LC156
	movt	r0, #:upper16:.LC156
.LVL2906:
.L2727:
.LBE11444:
.LBB11445:
	.loc 11 2659 0
	bl	kprintf
.LVL2907:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2908:
	.loc 11 2660 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	b	.L2496
.LVL2909:
.L2762:
	.loc 11 2659 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
.LVL2910:
	movw	r3, #2659
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2779+4
	mov	r1, #0
	.loc 11 2663 0
	mov	r7, #3
	.loc 11 2659 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2911:
	movw	r0, #:lower16:.LC164
	movt	r0, #:upper16:.LC164
	b	.L2727
.LVL2912:
.L2613:
.LBB11412:
	.loc 11 2685 0
	mov	r1, #2
	ldr	r0, [r8]
	bl	setThreadState
.LVL2913:
	ldr	r3, [sp, #72]
.LVL2914:
	ldr	r1, [sp, #80]
	ldr	r9, [sp, #76]
.LVL2915:
	ldr	ip, [sp, #84]
.LVL2916:
.LBB11337:
.LBB11338:
.LBB11339:
.LBB11340:
	.loc 36 823 0
	and	r2, r3, #3
.LBE11340:
.LBE11339:
.LBB11344:
.LBB11345:
.LBB11346:
	.loc 36 747 0
	ldr	lr, [r1]
.LBE11346:
.LBE11345:
.LBE11344:
.LBB11349:
.LBB11341:
	.loc 36 823 0
	cmp	r2, #3
.LBE11341:
.LBE11349:
.LBB11350:
.LBB11348:
.LBB11347:
	.loc 36 747 0
	and	lr, lr, #3
.LVL2917:
.LBE11347:
.LBE11348:
.LBE11350:
.LBB11351:
.LBB11342:
	.loc 36 823 0
	bne	.L2616
.LBE11342:
.LBE11351:
	.loc 11 2061 0
	cmp	ip, #0
.LBB11352:
.LBB11343:
	.loc 36 826 0
	mov	r8, #61440
	movt	r8, 65535
	movne	r5, r1
	and	r4, r3, r8
.LVL2918:
.LBE11343:
.LBE11352:
	.loc 11 2061 0
	movne	r0, r7
	bne	.L2621
	b	.L2623
.L2780:
	.align	2
.L2779:
	.word	.LANCHOR3+3968
	.word	.LANCHOR3+4004
	.word	.LANCHOR5-4072
	.word	.LANCHOR3+4032
	.word	.LANCHOR3+3924
	.word	.LANCHOR3+4076
.LVL2919:
.L2622:
.LBB11353:
.LBB11354:
	.loc 36 836 0
	and	r2, r3, #3
	add	r4, r4, #4096
.LVL2920:
	cmp	r2, #3
	add	r5, r5, #8
	bne	.L2620
.LVL2921:
.L2621:
	.loc 36 841 0
	ubfx	r3, r3, #0, #12
.LVL2922:
	.loc 36 842 0
	and	r2, r4, r8
	orr	r3, r3, r2
.LVL2923:
.LBE11354:
.LBE11353:
	.loc 11 2065 0
	str	r3, [r1, r0, lsl #3]
	.loc 11 2061 0
	add	r0, r0, #1
.LVL2924:
	cmp	ip, r0
	.loc 11 2065 0
	str	r9, [r5, #4]
	.loc 11 2061 0
	bne	.L2622
.LVL2925:
.L2623:
	.loc 11 2068 0
	add	r2, r1, ip, lsl #3
.LBB11355:
.LBB11356:
	.loc 16 96 0
	lsr	r3, r1, #6
.LVL2926:
.LBE11356:
.LBE11355:
	.loc 11 2067 0
	sub	r2, r2, #1
.LBB11362:
.LBB11361:
	.loc 16 96 0
	lsr	r2, r2, #6
	add	r2, r2, #1
	cmp	r2, r3
	lslhi	r3, r3, #6
.LVL2927:
	lslhi	r2, r2, #6
	bls	.L2631
.LVL2928:
.L2625:
.LBB11357:
.LBB11358:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB11359:
.LBB11360:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2929:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL2930:
.LBE11360:
.LBE11359:
.LBE11358:
.LBE11357:
	.loc 16 96 0
	cmp	r3, r2
	bne	.L2625
	b	.L2631
.LVL2931:
.L2773:
.LBE11361:
.LBE11362:
.LBE11338:
.LBE11337:
.LBE11412:
.LBE11445:
.LBB11446:
.LBB11235:
	.loc 11 2559 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	ldr	r3, [r3, #24]
	cmp	r3, #8
	bne	.L2496
	.loc 11 2560 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	mov	r3, #2560
	ldr	r2, .L2779+4
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL2932:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2933:
	movw	r0, #:lower16:.LC158
	movt	r0, #:upper16:.LC158
	bl	kprintf
.LVL2934:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2935:
	b	.L2496
.LVL2936:
.L2777:
.LBE11235:
.LBE11446:
.LBB11447:
.LBB11413:
	.loc 11 2677 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2677
	ldr	r2, .L2779+4
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2937:
	movw	r0, #:lower16:.LC165
	movt	r0, #:upper16:.LC165
	bl	kprintf
.LVL2938:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2939:
	b	.L2496
.LVL2940:
.L2778:
.LBE11413:
.LBE11447:
.LBB11448:
.LBB11236:
	.loc 11 2541 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	ldr	r3, [r3, #24]
	cmp	r3, #8
	bne	.L2496
	.loc 11 2542 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #2542
	ldr	r2, .L2779+4
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL2941:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2942:
	movw	r0, #:lower16:.LC157
	movt	r0, #:upper16:.LC157
	bl	kprintf
.LVL2943:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2944:
	b	.L2496
.LVL2945:
.L2640:
.LBE11236:
.LBE11448:
.LBB11449:
.LBB11414:
.LBB11291:
.LBB11289:
	bl	generic_frame_cap_get_capFMappedASID.part.158
.LVL2946:
.L2620:
.LBE11289:
.LBE11291:
.LBE11414:
.LBE11449:
.LBB11450:
.LBB11237:
.LBB11182:
.LBB11180:
.LBB11178:
.LBB11169:
	bl	pte_pte_small_set_address.part.199
.LVL2947:
.L2742:
.LBE11169:
.LBE11178:
.LBE11180:
.LBE11182:
.LBE11237:
.LBE11450:
.LBB11451:
.LBB10742:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL2948:
.L2746:
.LBE10742:
.LBE11451:
.LBB11452:
.LBB10872:
.LBB10868:
.LBB10810:
.LBB10807:
.LBB10805:
.LBB10802:
.LBB10803:
	.loc 38 187 0
	movw	r1, #:lower16:.LC59
	movw	r0, #:lower16:.LC60
	ldr	r3, .L2779+8
.LVL2949:
	movt	r1, #:upper16:.LC59
	movt	r0, #:upper16:.LC60
	mov	r2, #188
.LVL2950:
	bl	_assert_fail
.LVL2951:
.L2754:
.LBE10803:
.LBE10802:
.LBE10805:
.LBE10807:
.LBE10810:
.LBE10868:
.LBE10872:
.LBE11452:
.LBB11453:
.LBB11238:
.LBB10979:
	bl	generic_frame_cap_get_capFSize.part.174
.LVL2952:
.L2632:
.LBE10979:
.LBE11238:
.LBB11239:
.LBB11217:
.LBB11215:
.LBB11213:
.LBB11204:
	bl	pde_pde_section_set_address.part.202
.LVL2953:
.L2599:
.LBE11204:
.LBE11213:
.LBE11215:
.LBE11217:
.LBE11239:
.LBB11240:
.LBB11005:
.LBB11000:
.LBB10999:
	bl	cap_small_frame_cap_get_capFVMRights.part.170
.LVL2954:
.L2757:
.LBE10999:
.LBE11000:
.LBE11005:
.LBE11240:
.LBB11241:
.LBB11047:
.LBB11041:
.LBB11035:
.LBB11019:
.LBB11015:
.LBB11014:
	.loc 36 1601 0
	cmp	r10, #1
	beq	.L2680
.LVL2955:
.L2583:
.LBE11014:
.LBE11015:
	bl	cap_small_frame_cap_get_capFMappedASID.part.155
.LVL2956:
.L2680:
.LBE11019:
.LBE11035:
.LBE11041:
.LBE11047:
.LBE11241:
.LBB11242:
.LBB11006:
	.loc 38 225 0
	mov	r3, #0
	b	.L2517
.LVL2957:
.L2756:
.LBB11001:
.LBB10996:
	.loc 36 1709 0
	and	r10, r4, #15
	cmp	r10, #3
	beq	.L2679
.LVL2958:
.L2601:
	bl	cap_frame_cap_get_capFVMRights.part.171
.LVL2959:
.L2775:
.LBE10996:
.LBE11001:
.LBE11006:
.LBE11242:
.LBB11243:
.LBB11146:
.LBB11141:
.LBB11138:
	.loc 36 1574 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
.LVL2960:
	ldr	r3, .L2779+12
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1575
	bl	_assert_fail
.LVL2961:
.L2679:
.LBE11138:
.LBE11141:
.LBE11146:
.LBE11243:
.LBB11244:
.LBB10980:
	.loc 38 261 0
	mov	r3, #0
	str	r3, [sp, #24]
	b	.L2512
.LVL2962:
.L2628:
.LBE10980:
.LBE11244:
.LBB11245:
.LBB11218:
.LBB11216:
.LBB11214:
.LBB11192:
	bl	pde_pde_section_get_address.isra.200.part.201
.LVL2963:
.L2652:
.LBE11192:
.LBE11214:
.LBE11216:
.LBE11218:
.LBE11245:
.LBB11246:
.LBB11147:
.LBB11142:
.LBB11135:
.LBB11134:
.LBB11131:
	.loc 36 1522 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC57
	ldr	r3, .L2779+16
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC57
	movw	r2, #1523
	bl	_assert_fail
.LVL2964:
.L2776:
	cmp	r10, #1
	bne	.L2652
.LBE11131:
.LBE11134:
.LBE11135:
.LBE11142:
.LBE11147:
.LBE11246:
.LBB11247:
.LBB11091:
	.loc 19 29 0
	mov	r1, #-2147483648
	b	.L2541
.LVL2965:
.L2577:
.LBE11091:
.LBE11247:
.LBB11248:
.LBB11058:
	bl	cap_page_directory_cap_get_capPDIsMapped.isra.175.part.176
.LVL2966:
.L2594:
.LBE11058:
.LBE11248:
.LBB11249:
.LBB10981:
.LBB10971:
.LBB10970:
	bl	cap_frame_cap_get_capFSize.part.173
.LVL2967:
.L2774:
.LBE10970:
.LBE10971:
.LBE10981:
.LBE11249:
.LBE11453:
.LBB11454:
.LBB11415:
.LBB11398:
.LBB11395:
.LBB11396:
	.loc 36 1709 0
	cmp	r10, #3
	bne	.L2601
.LBE11396:
.LBE11395:
.LBE11398:
.LBE11415:
.LBB11416:
.LBB11320:
	.loc 38 261 0
	mov	r5, r3
.LVL2968:
	b	.L2595
.LVL2969:
.L2771:
.LBE11320:
.LBE11416:
.LBE11454:
.LBB11455:
.LBB11250:
.LBB11148:
.LBB11143:
.LBB11118:
	.loc 36 1748 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC58
.LVL2970:
	ldr	r3, .L2779+20
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC58
	movw	r2, #1749
	bl	_assert_fail
.LVL2971:
.L2610:
.LBE11118:
.LBE11143:
.LBE11148:
.LBE11250:
.LBB11251:
.LBB11085:
.LBB11082:
.LBB11081:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL2972:
.L2616:
.LBE11081:
.LBE11082:
.LBE11085:
.LBE11251:
.LBB11252:
.LBB11183:
.LBB11181:
.LBB11179:
.LBB11157:
	bl	pte_pte_small_get_address.isra.197.part.198
.LVL2973:
.L2611:
.LBE11157:
.LBE11179:
.LBE11181:
.LBE11183:
.LBE11252:
.LBB11253:
.LBB11086:
.LBB11083:
.LBB11078:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL2974:
.LBE11078:
.LBE11083:
.LBE11086:
.LBE11253:
.LBE11455:
	.cfi_endproc
.LFE1159:
	.size	decodeARMFrameInvocation.isra.284, .-decodeARMFrameInvocation.isra.284
	.align	2
	.global	decodeVCPUWriteReg
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeVCPUWriteReg, %function
decodeVCPUWriteReg:
.LFB642:
	.loc 25 953 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2975:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 25 956 0
	cmp	r2, #1
	.loc 25 953 0
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 25 953 0
	add	r3, sp, #24
.LVL2976:
	stmdb	r3, {r0, r1}
.LBB11491:
.LBB11492:
	.loc 25 957 0
	movw	r3, #:lower16:ksCurThread
.LBE11492:
.LBE11491:
	.loc 25 956 0
	bls	.L2787
.LVL2977:
.LBB11494:
.LBB11495:
	.loc 43 31 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LVL2978:
.LBB11496:
.LBB11497:
	.loc 10 36 0
	ldr	r4, [r3, #8]
.LVL2979:
.LBE11497:
.LBE11496:
.LBE11495:
.LBE11494:
	.loc 25 963 0
	cmp	r4, #15
	bls	.L2784
	.loc 25 964 0
	ldr	ip, [r3, #68]
	add	r2, r3, #528
.LVL2980:
	movw	r0, #:lower16:.LC14
	mov	r1, #0
	str	r3, [sp]
	movt	r0, #:upper16:.LC14
	mov	r3, #964
	stmib	sp, {r2, ip}
	ldr	r2, .L2789
	bl	kprintf
.LVL2981:
	movw	r0, #:lower16:.LC175
	mov	r1, r4
	movt	r0, #:upper16:.LC175
	bl	kprintf
.LVL2982:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2983:
	.loc 25 965 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 25 967 0
	mov	r0, #3
	.loc 25 966 0
	str	r2, [r3]
	.loc 25 965 0
	str	r2, [r3, #24]
.L2781:
	.loc 25 971 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL2984:
.L2784:
	.cfi_restore_state
	.loc 25 969 0
	mov	r0, r3
	mov	r1, #2
.LBB11498:
.LBB11499:
.LBB11500:
.LBB11501:
	.loc 10 36 0
	ldr	r5, [r3, #12]
.LBE11501:
.LBE11500:
.LBE11499:
.LBE11498:
	.loc 25 969 0
	bl	setThreadState
.LVL2985:
	ldr	r0, [sp, #16]
.LVL2986:
.LBB11502:
.LBB11503:
	.loc 36 2221 0
	uxtb	r3, r0
	cmp	r3, #15
	bne	.L2788
.LVL2987:
.LBE11503:
.LBE11502:
.LBB11505:
.LBB11506:
	.loc 25 947 0
	bic	r0, r0, #255
.LVL2988:
	mov	r2, r5
	mov	r1, r4
	bl	writeVCPUReg
.LVL2989:
.LBE11506:
.LBE11505:
	.loc 25 970 0
	mov	r0, #0
	b	.L2781
.LVL2990:
.L2787:
.LBB11507:
.LBB11493:
	.loc 25 957 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2789
.LVL2991:
	ldr	ip, [r3]
	mov	r1, #0
	movw	r3, #957
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL2992:
	movw	r0, #:lower16:.LC174
	movt	r0, #:upper16:.LC174
	bl	kprintf
.LVL2993:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL2994:
	.loc 25 958 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	mov	r0, #3
	str	r2, [r3, #24]
.LVL2995:
	b	.L2781
.LVL2996:
.L2788:
.LBE11493:
.LBE11507:
.LBB11508:
.LBB11504:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL2997:
.L2790:
	.align	2
.L2789:
	.word	.LANCHOR5-4032
.LBE11504:
.LBE11508:
	.cfi_endproc
.LFE642:
	.size	decodeVCPUWriteReg, .-decodeVCPUWriteReg
	.align	2
	.global	decodeVCPUReadReg
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeVCPUReadReg, %function
decodeVCPUReadReg:
.LFB644:
	.loc 25 992 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2998:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 994 0
	subs	ip, r2, #0
	.loc 25 992 0
	str	lr, [sp, #4]
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	.loc 25 992 0
	add	r2, sp, #32
.LVL2999:
	stmdb	r2, {r0, r1}
	.loc 25 994 0
	beq	.L2797
.LVL3000:
.LBB11532:
.LBB11533:
	.loc 43 31 0
	movw	r1, #:lower16:ksCurThread
	movt	r1, #:upper16:ksCurThread
	ldr	r1, [r1]
.LVL3001:
.LBB11534:
.LBB11535:
	.loc 10 36 0
	ldr	r4, [r1, #8]
.LVL3002:
.LBE11535:
.LBE11534:
.LBE11533:
.LBE11532:
	.loc 25 1002 0
	cmp	r4, #15
	bls	.L2794
	.loc 25 1003 0
	ldr	ip, [r1, #68]
.LVL3003:
	add	r2, r1, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #1003
.LVL3004:
	movt	r0, #:upper16:.LC14
	stm	sp, {r1, r2, ip}
	mov	r1, #0
	ldr	r2, .L2799
	bl	kprintf
.LVL3005:
	movw	r0, #:lower16:.LC177
	mov	r1, r4
	movt	r0, #:upper16:.LC177
	bl	kprintf
.LVL3006:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3007:
	.loc 25 1004 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1005 0
	str	r2, [r3]
	.loc 25 1004 0
	str	r2, [r3, #24]
.L2791:
	.loc 25 1011 0
	mov	r0, #3
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3008:
.L2797:
	.cfi_restore_state
.LBB11536:
.LBB11537:
	.loc 25 995 0
	movw	r3, #:lower16:ksCurThread
.LVL3009:
	mov	r1, ip
	ldr	r2, .L2799
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	ip, [r3]
.LVL3010:
	movt	r0, #:upper16:.LC14
	movw	r3, #995
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL3011:
	movw	r0, #:lower16:.LC176
	movt	r0, #:upper16:.LC176
	bl	kprintf
.LVL3012:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3013:
	.loc 25 996 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL3014:
	b	.L2791
.LVL3015:
.L2794:
.LBE11537:
.LBE11536:
	.loc 25 1009 0
	mov	r0, r1
	mov	r1, #2
	str	r3, [sp, #20]
	bl	setThreadState
.LVL3016:
.LBB11538:
.LBB11539:
	.loc 36 2221 0
	ldr	r3, [sp, #20]
	ldr	r0, [sp, #24]
.LVL3017:
	uxtb	r2, r0
	cmp	r2, #15
	bne	.L2798
.LVL3018:
.LBE11539:
.LBE11538:
	.loc 25 1010 0
	mov	r2, r3
	mov	r1, r4
	bic	r0, r0, #255
	.loc 25 1011 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 25 1010 0
	b	invokeVCPUReadReg
.LVL3019:
.L2798:
	.cfi_restore_state
.LBB11541:
.LBB11540:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL3020:
.L2800:
	.align	2
.L2799:
	.word	.LANCHOR5-4012
.LBE11540:
.LBE11541:
	.cfi_endproc
.LFE644:
	.size	decodeVCPUReadReg, .-decodeVCPUReadReg
	.align	2
	.global	decodeVCPUInjectIRQ
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeVCPUInjectIRQ, %function
decodeVCPUInjectIRQ:
.LFB646:
	.loc 25 1027 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3021:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 25 1027 0
	add	r3, sp, #24
.LVL3022:
	stmdb	r3, {r0, r1}
	ldr	r1, [sp, #16]
.LVL3023:
.LBB11563:
.LBB11564:
	.loc 36 2221 0
	uxtb	r3, r1
	cmp	r3, #15
	bne	.L2815
.LVL3024:
.LBE11564:
.LBE11563:
	.loc 25 1034 0
	cmp	r2, #1
	bls	.L2816
.LVL3025:
.LBB11567:
.LBB11568:
	.loc 43 31 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
.LVL3026:
.LBB11569:
.LBB11570:
	.loc 10 36 0
	ldr	r3, [r2, #8]
.LVL3027:
.LBE11570:
.LBE11569:
.LBE11568:
.LBE11567:
	.loc 25 1041 0
	uxth	r0, r3
	.loc 25 1047 0
	cmp	r0, #1024
	bcc	.L2805
	.loc 25 1048 0
	movw	r3, #:lower16:current_syscall_error
.LVL3028:
	mov	r2, #4
.LVL3029:
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1049 0
	mov	r0, #0
	.loc 25 1050 0
	movw	r1, #1023
	.loc 25 1051 0
	mov	ip, #1
.L2814:
	.loc 25 1059 0
	str	ip, [r3]
	.loc 25 1058 0
	strd	r0, [r3, #8]
	.loc 25 1061 0
	mov	r0, #3
	.loc 25 1056 0
	str	r2, [r3, #24]
.LVL3030:
.L2801:
	.loc 25 1090 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3031:
.L2816:
	.cfi_restore_state
	.loc 25 1035 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
.LVL3032:
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1036 0
	mov	r0, #3
	.loc 25 1035 0
	str	r2, [r3, #24]
	.loc 25 1036 0
	b	.L2801
.LVL3033:
.L2805:
	.loc 25 1042 0
	lsr	ip, r3, #16
	uxtb	r0, ip
	.loc 25 1055 0
	cmp	r0, #31
	bls	.L2806
	.loc 25 1056 0
	movw	r3, #:lower16:current_syscall_error
.LVL3034:
	mov	r2, #4
.LVL3035:
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1057 0
	mov	r0, #0
	.loc 25 1058 0
	mov	r1, #31
	.loc 25 1059 0
	mov	ip, #2
	b	.L2814
.LVL3036:
.L2806:
	.loc 25 1043 0
	lsr	lr, r3, #24
	.loc 25 1063 0
	cmp	lr, #1
	bls	.L2807
	.loc 25 1064 0
	movw	r3, #:lower16:current_syscall_error
.LVL3037:
	.loc 25 1065 0
	mov	r0, #0
	.loc 25 1064 0
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1067 0
	mov	r2, #3
.LVL3038:
	.loc 25 1064 0
	mov	r1, #4
	.loc 25 1066 0
	mov	ip, #1
	.loc 25 1067 0
	str	r2, [r3]
	.loc 25 1065 0
	str	r0, [r3, #8]
	.loc 25 1069 0
	mov	r0, r2
	.loc 25 1066 0
	str	ip, [r3, #12]
	.loc 25 1064 0
	str	r1, [r3, #24]
	.loc 25 1069 0
	b	.L2801
.LVL3039:
.L2807:
	.loc 25 1072 0
	movw	r4, #:lower16:.LANCHOR4
	.loc 25 1044 0
	ldrb	r6, [r2, #12]	@ zero_extendqisi2
	.loc 25 1072 0
	movt	r4, #:upper16:.LANCHOR4
	ldr	r4, [r4]
	cmp	r6, r4
	bcc	.L2808
	.loc 25 1073 0
	movw	r3, #:lower16:current_syscall_error
.LVL3040:
	mov	r2, #4
.LVL3041:
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1075 0
	sub	r4, r4, #1
	.loc 25 1074 0
	mov	r1, #0
	.loc 25 1078 0
	mov	r0, #3
	.loc 25 1076 0
	str	r2, [r3]
	.loc 25 1074 0
	str	r1, [r3, #8]
	.loc 25 1075 0
	str	r4, [r3, #12]
	.loc 25 1073 0
	str	r2, [r3, #24]
	.loc 25 1078 0
	b	.L2801
.LVL3042:
.L2808:
.LBB11571:
.LBB11565:
	.loc 36 2224 0
	bic	r4, r1, #255
	add	r7, r6, #6
.LVL3043:
.LBE11565:
.LBE11571:
.LBB11572:
.LBB11573:
	.loc 36 2246 0
	ldr	r1, [r4, r7, lsl #2]
	ubfx	r1, r1, #28, #2
.LBE11573:
.LBE11572:
	.loc 25 1081 0
	cmp	r1, #2
	beq	.L2817
.LVL3044:
.LBB11574:
.LBB11575:
	.loc 36 2268 0
	tst	ip, #224
	bne	.L2818
	.loc 36 2270 0
	tst	r3, #64512
	bne	.L2819
	.loc 36 2273 0
	lsl	r1, lr, #30
	.loc 36 2277 0
	ubfx	r3, r3, #0, #10
.LVL3045:
	.loc 36 2275 0
	lsl	r5, r0, #23
	.loc 36 2277 0
	orr	r3, r3, #268435456
	.loc 36 2273 0
	and	r1, r1, #1073741824
	.loc 36 2277 0
	orr	r3, r3, #524288
	orr	r3, r3, r1
	.loc 36 2275 0
	and	r5, r5, #260046848
.LBE11575:
.LBE11574:
	.loc 25 1088 0
	mov	r0, r2
	mov	r1, #2
.LBB11578:
.LBB11576:
	.loc 36 2277 0
	orr	r5, r3, r5
.LVL3046:
.LBE11576:
.LBE11578:
	.loc 25 1088 0
	bl	setThreadState
.LVL3047:
.LBB11579:
.LBB11580:
	.loc 25 1016 0
	movw	r3, #:lower16:armHSCurVCPU
	movt	r3, #:upper16:armHSCurVCPU
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L2812
.LVL3048:
.LBB11581:
.LBB11582:
	.loc 25 398 0
	lsl	r6, r6, #2
.LVL3049:
	movw	r3, #25087
	movt	r3, 65520
	add	r3, r6, r3
.LBE11582:
.LBE11581:
.LBE11580:
.LBE11579:
	.loc 25 1089 0
	mov	r0, #0
.LBB11587:
.LBB11585:
.LBB11584:
.LBB11583:
	.loc 25 398 0
	str	r5, [r3, #-255]
	b	.L2801
.LVL3050:
.L2817:
.LBE11583:
.LBE11584:
.LBE11585:
.LBE11587:
	.loc 25 1082 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #1082
.LVL3051:
	str	r2, [sp]
.LVL3052:
	movt	r0, #:upper16:.LC14
	ldr	r2, .L2820
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL3053:
	movw	r0, #:lower16:.LC178
	movt	r0, #:upper16:.LC178
	bl	kprintf
.LVL3054:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3055:
	.loc 25 1083 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1084 0
	mov	r0, #3
	.loc 25 1083 0
	str	r2, [r3, #24]
	.loc 25 1084 0
	b	.L2801
.LVL3056:
.L2815:
.LBB11588:
.LBB11566:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL3057:
.L2812:
.LBE11566:
.LBE11588:
	.loc 25 1089 0
	mov	r0, #0
.LBB11589:
.LBB11586:
	.loc 25 1019 0
	str	r5, [r4, r7, lsl #2]
	b	.L2801
.LVL3058:
.L2819:
.LBE11586:
.LBE11589:
.LBB11590:
.LBB11577:
	.loc 36 2270 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC180
	ldr	r3, .L2820+4
.LVL3059:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC180
	movw	r2, #2270
.LVL3060:
	bl	_assert_fail
.LVL3061:
.L2818:
	.loc 36 2268 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC179
	ldr	r3, .L2820+4
.LVL3062:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC179
	movw	r2, #2268
.LVL3063:
	bl	_assert_fail
.LVL3064:
.L2821:
	.align	2
.L2820:
	.word	.LANCHOR5-3992
	.word	.LANCHOR5-3972
.LBE11577:
.LBE11590:
	.cfi_endproc
.LFE646:
	.size	decodeVCPUInjectIRQ, .-decodeVCPUInjectIRQ
	.align	2
	.global	decodeVCPUSetTCB
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeVCPUSetTCB, %function
decodeVCPUSetTCB:
.LFB648:
	.loc 25 1121 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 14, -12
	str	lr, [sp, #4]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
	.loc 25 1121 0
	add	ip, sp, #28
	stmib	ip, {r2, r3}
	ldr	r3, [sp, #32]
.LVL3065:
	add	r2, sp, #24
	stmdb	r2, {r0, r1}
	.loc 25 1123 0
	cmp	r3, #0
	beq	.L2831
	.loc 25 1128 0
	ldr	r4, [r3]
.LVL3066:
.LBB11591:
.LBB11592:
	.loc 36 903 0
	and	r3, r4, #14
.LVL3067:
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r4
.LVL3068:
	.loc 36 904 0
	andne	r3, r4, #15
.LBE11592:
.LBE11591:
	.loc 25 1130 0
	cmp	r3, #12
	.loc 25 1131 0
	movw	r3, #:lower16:ksCurThread
	.loc 25 1130 0
	beq	.L2827
	.loc 25 1131 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2834
	ldr	ip, [r3]
	mov	r1, #0
	movw	r3, #1131
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL3069:
	str	ip, [sp]
.LVL3070:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL3071:
	movw	r0, #:lower16:.LC182
	movt	r0, #:upper16:.LC182
	bl	kprintf
.LVL3072:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3073:
	.loc 25 1132 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1133 0
	mov	r0, r2
	.loc 25 1132 0
	str	r2, [r3, #24]
.L2822:
	.loc 25 1138 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL3074:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL3075:
	bx	lr
.LVL3076:
.L2827:
	.cfi_restore_state
	.loc 25 1136 0
	movt	r3, #:upper16:ksCurThread
	mov	r1, #2
	ldr	r0, [r3]
	bl	setThreadState
.LVL3077:
	ldr	r0, [sp, #16]
.LVL3078:
.LBB11593:
.LBB11594:
	.loc 36 2221 0
	uxtb	r3, r0
	cmp	r3, #15
	bne	.L2832
.LVL3079:
.LBE11594:
.LBE11593:
.LBB11597:
.LBB11598:
	.loc 36 1469 0
	and	r3, r4, #15
.LBE11598:
.LBE11597:
.LBB11601:
.LBB11595:
	.loc 36 2224 0
	bic	r0, r0, #255
.LVL3080:
.LBE11595:
.LBE11601:
.LBB11602:
.LBB11599:
	.loc 36 1469 0
	cmp	r3, #12
	bne	.L2833
.LVL3081:
.LBE11599:
.LBE11602:
.LBB11603:
.LBB11604:
	.loc 25 1143 0
	bic	r1, r4, #15
	bl	associateVCPUTCB
.LVL3082:
.LBE11604:
.LBE11603:
	.loc 25 1137 0
	mov	r0, #0
.LVL3083:
	b	.L2822
.LVL3084:
.L2831:
	.loc 25 1124 0
	movw	ip, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2834
	movt	ip, #:upper16:ksCurThread
	mov	r1, r3
	ldr	ip, [ip]
	movw	r3, #1124
.LVL3085:
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL3086:
	movw	r0, #:lower16:.LC181
	movt	r0, #:upper16:.LC181
	bl	kprintf
.LVL3087:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3088:
	.loc 25 1125 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1126 0
	mov	r0, #3
	.loc 25 1125 0
	str	r2, [r3, #24]
	.loc 25 1126 0
	b	.L2822
.LVL3089:
.L2832:
.LBB11605:
.LBB11596:
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL3090:
.L2833:
.LBE11596:
.LBE11605:
.LBB11606:
.LBB11600:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL3091:
.L2835:
	.align	2
.L2834:
	.word	.LANCHOR5-3948
.LBE11600:
.LBE11606:
	.cfi_endproc
.LFE648:
	.size	decodeVCPUSetTCB, .-decodeVCPUSetTCB
	.align	2
	.global	decodeARMVCPUInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeARMVCPUInvocation, %function
decodeARMVCPUInvocation:
.LFB647:
	.loc 25 1102 0
	.cfi_startproc
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3092:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 1103 0
	sub	r0, r0, #32
.LVL3093:
	.loc 25 1102 0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 25 1102 0
	ldrd	r2, [sp, #44]
.LVL3094:
	.loc 25 1103 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L2837
.L2839:
	.word	.L2838
	.word	.L2840
	.word	.L2841
	.word	.L2842
.L2842:
	.loc 25 1109 0
	mov	r2, r1
	add	r1, sp, #20
.LVL3095:
	ldmib	r1, {r0, r1}
.LVL3096:
	.loc 25 1117 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 25 1109 0
	b	decodeVCPUWriteReg
.LVL3097:
.L2841:
	.cfi_restore_state
	.loc 25 1107 0
	str	r3, [sp]
	mov	r3, r2
.LVL3098:
	mov	r2, r1
	add	r1, sp, #20
.LVL3099:
	ldmib	r1, {r0, r1}
	bl	decodeVCPUReadReg
.LVL3100:
	.loc 25 1117 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3101:
.L2840:
	.cfi_restore_state
	.loc 25 1111 0
	mov	r2, r1
	add	r1, sp, #20
.LVL3102:
	ldmib	r1, {r0, r1}
	.loc 25 1117 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 25 1111 0
	b	decodeVCPUInjectIRQ
.LVL3103:
.L2838:
	.cfi_restore_state
	.loc 25 1105 0
	ldr	ip, [sp, #40]
	add	r3, sp, #32
.LVL3104:
	add	r1, sp, #20
.LVL3105:
	ldm	r3, {r2, r3}
	ldmib	r1, {r0, r1}
	str	ip, [sp]
	bl	decodeVCPUSetTCB
.LVL3106:
	.loc 25 1117 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3107:
.L2837:
	.loc 25 1113 0
	movw	r3, #:lower16:ksCurThread
.LVL3108:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L2845
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
.LVL3109:
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #1113
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL3110:
	movw	r0, #:lower16:.LC183
	movt	r0, #:upper16:.LC183
	bl	kprintf
.LVL3111:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3112:
	.loc 25 1114 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	.loc 25 1115 0
	mov	r0, r2
	.loc 25 1114 0
	str	r2, [r3, #24]
	.loc 25 1117 0
	add	sp, sp, #16
	@ sp needed
	ldr	r4, [sp]
	add	sp, sp, #4
	ldr	pc, [sp], #4
.L2846:
	.align	2
.L2845:
	.word	.LANCHOR5-3928
	.cfi_endproc
.LFE647:
	.size	decodeARMVCPUInvocation, .-decodeARMVCPUInvocation
	.section	.boot.text
	.align	2
	.global	alloc_region
	.syntax unified
	.arm
	.fpu softvfp
	.type	alloc_region, %function
alloc_region:
.LFB663:
	.loc 26 54 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3113:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 26 59 0
	mov	ip, #0
	movw	r5, #:lower16:.LANCHOR2
	.loc 26 54 0
	strd	r6, [sp, #8]
	.loc 26 78 0
	mov	r6, #1
	.loc 26 70 0
	mov	r1, ip
	.loc 26 54 0
	strd	r8, [sp, #16]
	movt	r5, #:upper16:.LANCHOR2
	.loc 26 78 0
	lsl	r6, r6, r0
	.loc 26 54 0
	strd	r10, [sp, #24]
	.loc 26 57 0
	mov	r7, ip
	.loc 26 54 0
	str	lr, [sp, #32]
	.loc 26 58 0
	mov	fp, ip
	.loc 26 54 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 26 56 0
	mov	r10, ip
	.loc 26 58 0
	str	ip, [sp]
	.loc 26 57 0
	str	ip, [sp, #4]
	.loc 26 59 0
	str	ip, [sp, #8]
.LVL3114:
.L2852:
	.loc 26 72 0
	ldr	lr, [r5, r1, lsl #3]
	.loc 26 73 0
	add	r3, r5, r1, lsl #3
	ldr	r4, [r3, #4]
	.loc 26 72 0
	sub	r3, lr, #1
	lsr	r3, r3, r0
	.loc 26 73 0
	lsr	r2, r4, r0
	.loc 26 72 0
	add	r3, r3, #1
	lsl	r3, r3, r0
	.loc 26 73 0
	lsl	r2, r2, r0
	.loc 26 72 0
	sub	r9, r3, lr
	.loc 26 73 0
	sub	r8, r4, r2
	.loc 26 72 0
	cmp	r9, r8
.LVL3115:
	.loc 26 78 0
	subcs	r3, r2, r6
.LVL3116:
	.loc 26 75 0
	addcc	r2, r3, r6
.LVL3117:
	.loc 26 80 0
	cmp	lr, r3
	movls	r8, #1
	movhi	r8, #0
	cmp	r2, r3
	movls	r8, #0
	.loc 26 81 0
	cmp	r4, r2
	movcc	r8, #0
	andcs	r8, r8, #1
	cmp	r8, #0
	beq	.L2850
	.loc 26 83 0
	sub	r8, r3, lr
	sub	r9, r4, r2
	cmp	r8, r9
	strcc	r3, [sp, #12]
	strcc	r2, [sp, #16]
	bcs	.L2864
.LVL3118:
	.loc 26 94 0
	ldr	r8, [sp, #4]
	cmp	r7, r8
	beq	.L2857
.LVL3119:
.L2868:
.LBB11607:
.LBB11608:
	.loc 26 49 0 discriminator 1
	ldr	r9, [sp]
.LBE11608:
.LBE11607:
.LBB11610:
.LBB11611:
	ldr	r8, [sp, #12]
.LBE11611:
.LBE11610:
.LBB11613:
.LBB11609:
	sub	r9, r9, fp
.LBE11609:
.LBE11613:
.LBB11614:
.LBB11612:
	sub	r8, r8, lr
.LVL3120:
.LBE11612:
.LBE11614:
	.loc 26 94 0 discriminator 1
	cmp	r9, r8
	bhi	.L2857
.LVL3121:
	.loc 26 95 0
	beq	.L2865
.LVL3122:
.L2850:
	.loc 26 70 0 discriminator 2
	add	r1, r1, #1
.LVL3123:
	cmp	r1, #2
	bne	.L2852
.LVL3124:
	.loc 26 104 0
	ldr	r3, [sp, #4]
.LVL3125:
	cmp	r7, r3
	beq	.L2866
	.loc 26 111 0
	ldr	r1, [sp, #8]
.LVL3126:
	.loc 26 109 0
	add	r2, r5, r10, lsl #3
.LVL3127:
	mov	r3, #0
	str	r3, [r5, r10, lsl #3]
	str	r3, [r2, #4]
	.loc 26 111 0
	str	r1, [sp, #32]
	add	r1, sp, #40
	str	ip, [sp, #36]
	ldmdb	r1, {r0, r1}
.LVL3128:
	bl	insert_region
.LVL3129:
	.loc 26 112 0
	ldr	r2, [sp]
	add	r3, sp, #24
	str	fp, [sp, #24]
	str	r2, [sp, #28]
	ldm	r3, {r0, r1}
	bl	insert_region
.LVL3130:
	cmp	r0, #0
	beq	.L2867
.LVL3131:
.L2847:
	.loc 26 117 0
	mov	r0, r7
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3132:
.L2867:
	.cfi_restore_state
	.loc 26 113 0
	ldr	r3, [sp]
	movw	r0, #:lower16:.LC185
	movt	r0, #:upper16:.LC185
	sub	r1, r3, fp
	bl	kprintf
.LVL3133:
	b	.L2847
.LVL3134:
.L2864:
	.loc 26 94 0
	ldr	r8, [sp, #4]
	.loc 26 83 0
	str	r4, [sp, #12]
	mov	r4, r3
.LVL3135:
	str	lr, [sp, #16]
.LVL3136:
	mov	lr, r2
.LVL3137:
	.loc 26 94 0
	cmp	r7, r8
	bne	.L2868
.L2857:
	.loc 26 99 0
	mov	ip, r4
.LVL3138:
	ldr	r4, [sp, #16]
.LVL3139:
	str	r4, [sp, #8]
.LVL3140:
.L2863:
	.loc 26 98 0
	ldr	r4, [sp, #12]
	mov	fp, lr
.LVL3141:
	mov	r7, r3
.LVL3142:
	mov	r10, r1
	str	r4, [sp]
.LVL3143:
	str	r2, [sp, #4]
	b	.L2850
.LVL3144:
.L2866:
	.loc 26 105 0
	movw	r0, #:lower16:.LC184
.LVL3145:
	.loc 26 106 0
	mov	r7, #0
.LVL3146:
	.loc 26 105 0
	movt	r0, #:upper16:.LC184
	bl	kprintf
.LVL3147:
	.loc 26 106 0
	b	.L2847
.LVL3148:
.L2865:
.LBB11615:
.LBB11616:
	.loc 26 49 0
	ldr	r8, [sp, #8]
.LBE11616:
.LBE11615:
.LBB11618:
.LBB11619:
	ldr	r9, [sp, #16]
.LBE11619:
.LBE11618:
.LBB11621:
.LBB11617:
	sub	r8, ip, r8
	str	r8, [sp, #20]
.LBE11617:
.LBE11621:
.LBB11622:
.LBB11620:
	sub	r8, r4, r9
	mov	r9, r8
.LBE11620:
.LBE11622:
	.loc 26 96 0
	ldr	r8, [sp, #20]
	cmp	r8, r9
	bls	.L2850
	.loc 26 99 0
	ldr	r9, [sp, #16]
	mov	ip, r4
.LVL3149:
	str	r9, [sp, #8]
.LVL3150:
	b	.L2863
	.cfi_endproc
.LFE663:
	.size	alloc_region, .-alloc_region
	.align	2
	.global	provide_cap
	.syntax unified
	.arm
	.fpu softvfp
	.type	provide_cap, %function
provide_cap:
.LFB672:
	.loc 26 304 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 305 0
	movw	r4, #:lower16:.LANCHOR2
	.loc 26 304 0
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 26 305 0
	movt	r4, #:upper16:.LANCHOR2
	.loc 26 304 0
	add	lr, sp, #16
	stm	sp, {r2, r3}
	.loc 26 305 0
	ldr	r3, [r4, #24]
	.loc 26 304 0
	stmdb	lr, {r0, r1}
	.loc 26 305 0
	ldr	r0, [r4, #20]
	cmp	r0, r3
	bcs	.L2912
	ldr	r3, [sp, #8]
	mov	ip, sp
.LVL3151:
	ldr	lr, [sp, #12]
.LVL3152:
.LBB11663:
.LBB11664:
.LBB11665:
.LBB11666:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL3153:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE11666:
.LBE11665:
	.loc 39 387 0
	sub	r2, r1, #2
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L2874
.L2876:
	.word	.L2875
	.word	.L2874
	.word	.L2877
	.word	.L2874
	.word	.L2878
	.word	.L2874
	.word	.L2908
	.word	.L2874
	.word	.L2880
	.word	.L2874
	.word	.L2881
	.word	.L2874
	.word	.L2908
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2908
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2882
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2874
	.word	.L2908
.LVL3154:
.L2912:
.LBE11664:
.LBE11663:
	.loc 26 306 0
	movw	r0, #:lower16:.LC186
	movt	r0, #:upper16:.LC186
	bl	kprintf
.LVL3155:
	.loc 26 307 0
	mov	r0, #0
	.loc 26 312 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3156:
.L2908:
	.cfi_restore_state
.LBB11723:
.LBB11721:
.LBB11667:
.LBB11668:
	.loc 38 414 0
	mov	r3, #0
.LVL3157:
.L2879:
.LBE11668:
.LBE11667:
.LBE11721:
.LBE11723:
	.loc 26 309 0
	add	r0, r3, r0, lsl #4
	ldm	ip, {r1, r2}
	bl	write_slot
.LVL3158:
	.loc 26 310 0
	ldr	r3, [r4, #20]
	.loc 26 311 0
	mov	r0, #1
	.loc 26 310 0
	add	r3, r3, r0
	str	r3, [r4, #20]
	.loc 26 312 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3159:
.L2880:
	.cfi_restore_state
.LBB11724:
.LBB11722:
.LBB11692:
.LBB11693:
	.loc 36 1439 0
	and	r2, r3, #15
	cmp	r2, #10
	.loc 36 1442 0
	biceq	r3, r3, #31
.LVL3160:
	.loc 36 1439 0
	beq	.L2879
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL3161:
.L2881:
.LBE11693:
.LBE11692:
.LBB11694:
.LBB11695:
	.loc 36 1469 0
	and	r2, r3, #15
	cmp	r2, #12
	bne	.L2913
.LVL3162:
.L2902:
.LBE11695:
.LBE11694:
.LBB11697:
.LBB11689:
.LBB11669:
.LBB11670:
	.loc 36 1977 0
	bic	r3, r3, #1020
.LVL3163:
	bic	r3, r3, #3
	b	.L2879
.LVL3164:
.L2882:
.LBE11670:
.LBE11669:
.LBE11689:
.LBE11697:
.LBB11698:
.LBB11699:
.LBB11700:
.LBB11701:
.LBB11702:
.LBB11703:
	.loc 36 2177 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L2914
	.loc 36 2180 0
	lsr	r3, r3, #8
.LVL3165:
	and	r2, r3, #63
.LBE11703:
.LBE11702:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r3, #31
	beq	.L2889
	.loc 39 106 0
	and	r2, r3, #31
	mvn	r3, #0
	add	r2, r2, #1
	lsl	r3, r3, r2
.L2889:
.LVL3166:
.LBE11701:
.LBE11700:
	.loc 39 120 0
	and	r3, r3, lr
	b	.L2879
.LVL3167:
.L2875:
.LBE11699:
.LBE11698:
.LBB11709:
.LBB11710:
	.loc 36 1021 0
	and	r2, r3, #15
	cmp	r2, #2
	bne	.L2915
.LVL3168:
.L2904:
.LBE11710:
.LBE11709:
.LBB11712:
.LBB11690:
.LBB11672:
.LBB11673:
	.loc 36 1850 0
	bic	r3, r3, #15
.LVL3169:
	b	.L2879
.LVL3170:
.L2877:
.LBE11673:
.LBE11672:
.LBE11690:
.LBE11712:
.LBB11713:
.LBB11714:
	.loc 36 1059 0
	and	r3, r3, #15
.LVL3171:
	cmp	r3, #4
	.loc 36 1062 0
	biceq	r3, lr, #15
	.loc 36 1059 0
	beq	.L2879
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL3172:
.L2878:
.LBE11714:
.LBE11713:
.LBB11715:
.LBB11716:
	.loc 36 1277 0
	and	r2, r3, #15
	cmp	r2, #6
	beq	.L2904
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL3173:
.L2874:
.LBE11716:
.LBE11715:
.LBB11717:
.LBB11691:
	.loc 38 398 0
	sub	r2, r1, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L2908
.L2891:
	.word	.L2890
	.word	.L2908
	.word	.L2890
	.word	.L2908
	.word	.L2892
	.word	.L2908
	.word	.L2893
	.word	.L2908
	.word	.L2894
	.word	.L2908
	.word	.L2908
	.word	.L2908
	.word	.L2908
	.word	.L2908
	.word	.L2895
.L2894:
.LVL3174:
.LBB11675:
.LBB11676:
	.loc 36 2035 0
	and	r2, r3, #15
	cmp	r2, #9
	.loc 36 2038 0
	biceq	r3, r3, #16320
.LVL3175:
	biceq	r3, r3, #63
	.loc 36 2035 0
	beq	.L2879
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL3176:
.L2893:
.LBE11676:
.LBE11675:
.LBB11677:
.LBB11671:
	.loc 36 1974 0
	and	r2, r3, #15
	cmp	r2, #7
	beq	.L2902
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL3177:
.L2892:
.LBE11671:
.LBE11677:
.LBB11678:
.LBB11674:
	.loc 36 1847 0
	and	r2, r3, #15
	cmp	r2, #5
	beq	.L2904
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL3178:
.L2890:
.LBE11674:
.LBE11678:
.LBB11679:
.LBB11680:
	.loc 38 235 0
	mvn	r2, r1
	ands	r2, r2, #1
	bne	.L2916
	.loc 38 238 0
	cmp	r1, #1
	beq	.L2898
	cmp	r1, #3
	bne	.L2908
.LVL3179:
.LBB11681:
.LBB11682:
	.loc 36 1801 0
	and	r2, r3, #15
	cmp	r2, #3
	.loc 36 1804 0
	moveq	r2, #49152
	movteq	r2, 65535
	andeq	r3, r2, r3, lsl #10
.LVL3180:
	.loc 36 1801 0
	beq	.L2879
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL3181:
.L2895:
.LBE11682:
.LBE11681:
.LBE11680:
.LBE11679:
.LBB11686:
.LBB11687:
	.loc 36 2221 0
	uxtb	r2, r3
	cmp	r2, #15
	.loc 36 2224 0
	biceq	r3, r3, #255
.LVL3182:
	.loc 36 2221 0
	beq	.L2879
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL3183:
.L2898:
.LBE11687:
.LBE11686:
.LBB11688:
.LBB11685:
.LBB11683:
.LBB11684:
	.loc 36 1627 0
	and	r2, r3, #15
	cmp	r2, #1
	.loc 36 1630 0
	moveq	r2, #61440
	movteq	r2, 65535
	andeq	r3, r2, r3, lsl #8
.LVL3184:
	.loc 36 1627 0
	beq	.L2879
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL3185:
.L2916:
.LBE11684:
.LBE11683:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL3186:
.L2915:
.LBE11685:
.LBE11688:
.LBE11691:
.LBE11717:
.LBB11718:
.LBB11711:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL3187:
.L2914:
.LBE11711:
.LBE11718:
.LBB11719:
.LBB11708:
.LBB11707:
.LBB11706:
.LBB11705:
.LBB11704:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL3188:
.L2913:
.LBE11704:
.LBE11705:
.LBE11706:
.LBE11707:
.LBE11708:
.LBE11719:
.LBB11720:
.LBB11696:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL3189:
.LBE11696:
.LBE11720:
.LBE11722:
.LBE11724:
	.cfi_endproc
.LFE672:
	.size	provide_cap, .-provide_cap
	.align	2
	.global	create_frames_of_region
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_frames_of_region, %function
create_frames_of_region:
.LFB673:
	.loc 26 322 0
	.cfi_startproc
	@ args = 28, pretend = 8, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3190:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	.loc 26 328 0
	movw	fp, #:lower16:.LANCHOR2
	.loc 26 322 0
	mov	r10, r0
	str	lr, [sp, #32]
	sub	sp, sp, #52
	.cfi_def_cfa_offset 96
	.loc 26 328 0
	movt	fp, #:upper16:.LANCHOR2
	.loc 26 330 0
	ldr	r4, [sp, #100]
	.loc 26 322 0
	add	r7, sp, #24
	ldr	r8, [sp, #104]
.LVL3191:
	str	r3, [sp, #92]
	.loc 26 328 0
	ldr	r3, [fp, #20]
	.loc 26 322 0
	stm	r7, {r1, r2}
	ldr	r5, [sp, #108]
	.loc 26 330 0
	cmp	r8, r4
	.loc 26 328 0
	str	r3, [sp, #16]
.LVL3192:
	.loc 26 330 0
	bls	.L2924
	.loc 26 332 0
	str	fp, [sp, #20]
	add	r6, sp, #32
	mov	r9, #1
	ldr	fp, [sp, #112]
	b	.L2923
.LVL3193:
.L2919:
.LBB11725:
.LBB11726:
	.loc 11 608 0
	str	r5, [sp]
	bl	create_it_frame_cap
.LVL3194:
.LBE11726:
.LBE11725:
	.loc 26 334 0
	ldrd	r2, [sp, #40]
	strd	r2, [r6]
.L2920:
	.loc 26 336 0
	ldm	r6, {r2, r3}
	.loc 26 330 0
	add	r4, r4, #4096
.LVL3195:
	.loc 26 336 0
	ldm	r7, {r0, r1}
	bl	provide_cap
.LVL3196:
	cmp	r0, #0
	beq	.L2927
	.loc 26 330 0 discriminator 2
	cmp	r8, r4
	bls	.L2928
.L2923:
.LVL3197:
	.loc 26 331 0
	cmp	r5, #0
.LBB11728:
.LBB11727:
	.loc 11 608 0
	mov	r1, r4
	mov	r3, r5
	mov	r2, r5
	add	r0, sp, #40
.LBE11727:
.LBE11728:
	.loc 26 331 0
	beq	.L2919
.LVL3198:
	.loc 26 332 0
	rsb	ip, fp, #-2147483648
	mov	r2, #0
	str	r9, [sp, #4]
	add	ip, ip, r4
	add	r3, sp, #92
	str	r2, [sp, #8]
	mov	r0, r6
	ldm	r3, {r1, r2}
.LVL3199:
	mov	r3, r4
	str	ip, [sp]
	str	r9, [sp, #12]
	bl	create_mapped_it_frame_cap
.LVL3200:
	b	.L2920
.LVL3201:
.L2927:
	.loc 26 337 0
	str	r0, [r10]
	str	r0, [r10, #4]
	str	r0, [r10, #8]
.L2917:
	.loc 26 347 0
	mov	r0, r10
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL3202:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL3203:
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
.LVL3204:
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3205:
.L2928:
	.cfi_restore_state
	ldr	fp, [sp, #20]
	ldr	r2, [fp, #20]
.L2918:
.LVL3206:
	.loc 26 344 0
	ldr	r1, [sp, #16]
	mov	r3, #1
	stm	r10, {r1, r2, r3}
	b	.L2917
.LVL3207:
.L2924:
	.loc 26 330 0
	ldr	r2, [sp, #16]
	b	.L2918
	.cfi_endproc
.LFE673:
	.size	create_frames_of_region, .-create_frames_of_region
	.align	2
	.global	create_untypeds_for_region
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_untypeds_for_region, %function
create_untypeds_for_region:
.LFB680:
	.loc 26 539 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3208:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #36
	.cfi_def_cfa_offset 80
	ldr	r6, [sp, #80]
.LVL3209:
	.loc 26 539 0
	add	r9, sp, #8
	str	r3, [sp, #76]
	stm	r9, {r0, r1}
	.loc 26 543 0
	cmp	r3, r6
	beq	.L2939
	mov	r5, r3
.LBB11741:
.LBB11742:
.LBB11743:
.LBB11744:
	.loc 36 945 0
	lsl	r3, r2, #5
.LVL3210:
.LBE11744:
.LBE11743:
	.loc 26 511 0
	movw	r7, #:lower16:.LANCHOR2
.LBB11751:
.LBB11745:
	.loc 36 945 0
	and	r3, r3, #32
.LBE11745:
.LBE11751:
	.loc 26 520 0
	movw	r10, #:lower16:.LC189
	mov	fp, r2
	.loc 26 511 0
	movt	r7, #:upper16:.LANCHOR2
	.loc 26 520 0
	movt	r10, #:upper16:.LC189
	add	r8, sp, #16
.LBB11752:
.LBB11746:
	.loc 36 945 0
	str	r3, [sp, #4]
	b	.L2938
.LVL3211:
.L2949:
.LBE11746:
.LBE11752:
.LBE11742:
.LBE11741:
	.loc 26 561 0
	cmp	r4, #3
	bhi	.L2933
.L2934:
	.loc 26 566 0
	mov	r3, #1
	add	r5, r5, r3, lsl r4
.LVL3212:
	.loc 26 543 0
	cmp	r5, r6
	beq	.L2939
.LVL3213:
.L2938:
	.loc 26 545 0
	sub	r4, r6, r5
.LVL3214:
	.loc 26 548 0
	cmp	r5, #0
.LBB11762:
.LBB11763:
	.loc 15 105 0
	clz	r4, r4
.LVL3215:
.LBE11763:
.LBE11762:
	.loc 26 545 0
	rsb	r4, r4, #31
.LVL3216:
	.loc 26 548 0
	beq	.L2932
.LVL3217:
.LBB11764:
.LBB11765:
.LBB11766:
.LBB11767:
	.loc 15 119 0
	rbit	r3, r5
	clz	r3, r3
.LVL3218:
	cmp	r4, r3
	movcs	r4, r3
.LVL3219:
.L2932:
.LBE11767:
.LBE11766:
.LBE11765:
.LBE11764:
	.loc 26 557 0
	cmp	r4, #29
	bls	.L2949
	.loc 26 558 0
	mov	r4, #29
.LVL3220:
.L2933:
.LBB11768:
.LBB11759:
	.loc 26 511 0
	ldr	r1, [r7, #20]
	ldr	r0, [sp, #84]
	ldrd	r2, [r9]
	sub	r1, r1, r0
	.loc 26 512 0
	cmp	r1, #280
	strd	r2, [r8]
.LVL3221:
	bcc	.L2950
	.loc 26 520 0
	mov	r0, r10
.LVL3222:
	bl	kprintf
.LVL3223:
.LBE11759:
.LBE11768:
	.loc 26 566 0
	mov	r3, #1
	add	r5, r5, r3, lsl r4
.LVL3224:
	.loc 26 543 0
	cmp	r5, r6
	bne	.L2938
.LVL3225:
.L2939:
	.loc 26 568 0
	mov	r0, #1
.L2929:
	.loc 26 569 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL3226:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL3227:
	bx	lr
.LVL3228:
.L2950:
	.cfi_restore_state
	ldr	ip, [r7, #16]
.LBB11769:
.LBB11760:
	.loc 26 513 0
	mov	r2, #0
.LBB11753:
.LBB11747:
	.loc 36 935 0
	bics	r3, fp, #1
.LBE11747:
.LBE11753:
.LBB11754:
.LBB11755:
	.loc 19 29 0
	add	r3, r5, #-2147483648
.LBE11755:
.LBE11754:
	.loc 26 516 0
	sub	r0, r4, #4
.LVL3229:
	add	r1, ip, r1, lsl #3
.LVL3230:
	mov	ip, #1
	lsl	ip, ip, r0
.LVL3231:
	.loc 26 513 0
	str	r3, [r1, #85]	@ unaligned
	strb	r2, [r1, #89]
	strb	r2, [r1, #90]
	strb	r4, [r1, #91]
	strb	fp, [r1, #92]
.LBB11756:
.LBB11748:
	.loc 36 935 0
	bne	.L2951
	.loc 36 937 0
	tst	r5, #15
	bne	.L2952
.LVL3232:
	.loc 36 946 0
	ldr	r3, [sp, #4]
	.loc 36 941 0
	bic	r2, r5, #15
	.loc 36 942 0
	orr	r2, r2, #2
.LVL3233:
.LBE11748:
.LBE11756:
	.loc 26 518 0
	ldm	r8, {r0, r1}
.LBB11757:
.LBB11749:
	.loc 36 946 0
	orr	r3, r3, r4
	orr	r3, r3, ip, lsl #6
	.loc 36 948 0
	strd	r2, [sp, #24]
.LVL3234:
.LBE11749:
.LBE11757:
	.loc 26 518 0
	add	r3, sp, #32
	ldmdb	r3, {r2, r3}
	bl	provide_cap
.LVL3235:
.LBE11760:
.LBE11769:
	.loc 26 562 0
	cmp	r0, #0
	bne	.L2934
	b	.L2929
.LVL3236:
.L2951:
.LBB11770:
.LBB11761:
.LBB11758:
.LBB11750:
	.loc 36 935 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC187
	ldr	r3, .L2953
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC187
	movw	r2, #935
	bl	_assert_fail
.LVL3237:
.L2952:
	.loc 36 937 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC188
	ldr	r3, .L2953
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC188
	movw	r2, #937
	bl	_assert_fail
.LVL3238:
.L2954:
	.align	2
.L2953:
	.word	.LANCHOR3+2944
.LBE11750:
.LBE11758:
.LBE11761:
.LBE11770:
	.cfi_endproc
.LFE680:
	.size	create_untypeds_for_region, .-create_untypeds_for_region
	.align	2
	.global	create_kernel_untypeds
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_kernel_untypeds, %function
create_kernel_untypeds:
.LFB681:
	.loc 26 573 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3239:
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	r10, [sp, #24]
	str	lr, [sp, #28]
	sub	sp, sp, #32
	.cfi_def_cfa_offset 64
	.loc 26 573 0
	add	ip, sp, #8
	ldr	r7, [sp, #64]
	add	r5, sp, #16
	stm	ip, {r2, r3}
	.loc 26 578 0
	mov	r2, #0
	ldr	r3, [sp, #8]
	ldr	ip, [sp, #12]
	.loc 26 573 0
	stm	r5, {r0, r1}
	.loc 26 578 0
	str	r7, [sp, #4]
	ldm	r5, {r0, r1}
	str	ip, [sp]
	bl	create_untypeds_for_region
.LVL3240:
	cmp	r0, #0
	beq	.L2958
	mov	r4, #0
	movw	r6, #:lower16:.LANCHOR2
	.loc 26 585 0
	mov	r10, r4
	movt	r6, #:upper16:.LANCHOR2
.L2959:
	.loc 26 584 0
	ldrd	r8, [r6, r4]
	add	r3, r6, r4
	.loc 26 585 0
	str	r10, [r6, r4]
	.loc 26 586 0
	str	r7, [sp, #4]
	mov	r2, #0
	ldm	r5, {r0, r1}
	.loc 26 585 0
	str	r10, [r3, #4]
	add	r4, r4, #8
	.loc 26 584 0
	strd	r8, [sp, #24]
	.loc 26 586 0
	ldr	r3, [sp, #24]
	ldr	ip, [sp, #28]
	str	ip, [sp]
	bl	create_untypeds_for_region
.LVL3241:
	cmp	r0, #0
	beq	.L2958
	.loc 26 583 0 discriminator 2
	cmp	r4, #16
	bne	.L2959
	.loc 26 591 0
	mov	r0, #1
.L2955:
	.loc 26 592 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L2958:
	.cfi_restore_state
	.loc 26 579 0
	mov	r0, #0
	b	.L2955
	.cfi_endproc
.LFE681:
	.size	create_kernel_untypeds, .-create_kernel_untypeds
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	print_fault, %function
print_fault:
.LFB693:
	.file 55 "/home/sel4/work/work2/kernel/src/kernel/faulthandler.c"
	.loc 55 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 55 72 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
.LVL3242:
.LBB11771:
.LBB11772:
	.loc 36 2546 0
	and	r2, r3, #7
.LBE11772:
.LBE11771:
	.loc 55 73 0
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L2966
.L2968:
	.word	.L2967
	.word	.L2969
	.word	.L2970
	.word	.L2971
	.word	.L2966
	.word	.L2972
.L2971:
.LVL3243:
	.loc 55 93 0
	movw	r0, #:lower16:.LC198
	lsr	r2, r3, #3
	movt	r0, #:upper16:.LC198
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 93 0
	b	kprintf
.LVL3244:
.L2967:
	.cfi_restore_state
	.loc 55 75 0
	movw	r0, #:lower16:.LC194
	movt	r0, #:upper16:.LC194
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 98 0
	b	kprintf
.LVL3245:
.L2970:
	.cfi_restore_state
	.loc 55 89 0
	movw	r0, #:lower16:.LC197
	movt	r0, #:upper16:.LC197
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 89 0
	b	kprintf
.LVL3246:
.L2972:
	.cfi_restore_state
	.loc 55 83 0
	movw	lr, #:lower16:.LC192
	movw	ip, #:lower16:.LC193
	tst	r3, #8
	movt	lr, #:upper16:.LC192
	movt	ip, #:upper16:.LC193
	movw	r0, #:lower16:.LC196
	lsr	r3, r3, #6
.LVL3247:
	mov	r2, r1
	movt	r0, #:upper16:.LC196
	movne	r1, lr
.LVL3248:
	moveq	r1, ip
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL3249:
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 83 0
	b	kprintf
.LVL3250:
.L2969:
	.cfi_restore_state
	.loc 55 78 0
	movw	lr, #:lower16:.LC190
	movw	ip, #:lower16:.LC191
	cmp	r3, #0
	movt	lr, #:upper16:.LC190
	movt	ip, #:upper16:.LC191
	movw	r0, #:lower16:.LC195
	mov	r2, r1
	movt	r0, #:upper16:.LC195
	movlt	r1, lr
.LVL3251:
	movge	r1, ip
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 93 0
	b	kprintf
.LVL3252:
.L2966:
	.cfi_restore_state
	.loc 55 98 0
	movw	r0, #:lower16:.LC199
	movt	r0, #:upper16:.LC199
	.loc 55 101 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 55 98 0
	b	kprintf
.LVL3253:
	.cfi_endproc
.LFE693:
	.size	print_fault, .-print_fault
	.align	2
	.global	handleDoubleFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleDoubleFault, %function
handleDoubleFault:
.LFB694:
	.loc 55 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3254:
	.loc 55 109 0
	movw	r3, #:lower16:current_fault
	.loc 55 107 0
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 55 109 0
	movt	r3, #:upper16:current_fault
	.loc 55 107 0
	strd	r6, [sp, #8]
	.loc 55 110 0
	movw	r0, #:lower16:.LC200
.LVL3255:
	.loc 55 109 0
	ldrd	r6, [r3]
	.loc 55 107 0
	str	r8, [sp, #16]
	.loc 55 110 0
	movt	r0, #:upper16:.LC200
	.loc 55 107 0
	str	lr, [sp, #20]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 55 109 0
	add	r8, sp, #8
	.loc 55 107 0
	stm	sp, {r1, r2}
	.loc 55 109 0
	strd	r6, [sp, #8]
	.loc 55 110 0
	bl	kprintf
.LVL3256:
	.loc 55 111 0
	ldm	r8, {r0, r1}
	bl	print_fault
.LVL3257:
	.loc 55 112 0
	movw	r0, #:lower16:.LC201
	movt	r0, #:upper16:.LC201
	bl	kprintf
.LVL3258:
	.loc 55 113 0
	ldm	sp, {r0, r1}
	bl	print_fault
.LVL3259:
	.loc 55 116 0
	movw	r0, #:lower16:.LC202
	add	r2, r4, #528
	mov	r1, r4
	movt	r0, #:upper16:.LC202
	bl	kprintf
.LVL3260:
	.loc 55 119 0
	movw	r0, #:lower16:.LC203
	ldr	r1, [r4, #68]
	movt	r0, #:upper16:.LC203
	bl	kprintf
.LVL3261:
	.loc 55 120 0
	movw	r0, #:lower16:.LC204
	movt	r0, #:upper16:.LC204
	bl	kprintf
.LVL3262:
	.loc 55 121 0
	mov	r0, r4
	bl	Arch_userStackTrace
.LVL3263:
	.loc 55 124 0
	mov	r0, r4
	mov	r1, #0
	.loc 55 125 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL3264:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	ldr	lr, [sp, #20]
	.cfi_restore 14
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	.loc 55 124 0
	b	setThreadState
.LVL3265:
	.cfi_endproc
.LFE694:
	.size	handleDoubleFault, .-handleDoubleFault
	.align	2
	.global	preemptionPoint
	.syntax unified
	.arm
	.fpu softvfp
	.type	preemptionPoint, %function
preemptionPoint:
.LFB737:
	.loc 6 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 6 24 0
	movw	r3, #:lower16:ksWorkUnitsCompleted
	movt	r3, #:upper16:ksWorkUnitsCompleted
	ldr	r2, [r3]
	add	r2, r2, #1
	.loc 6 34 0
	cmp	r2, #99
	.loc 6 24 0
	str	r2, [r3]
	.loc 6 34 0
	bls	.L2983
	b	preemptionPoint.part.63
.LVL3266:
.L2983:
	.loc 6 42 0
	mov	r0, #0
	bx	lr
	.cfi_endproc
.LFE737:
	.size	preemptionPoint, .-preemptionPoint
	.align	2
	.global	cteInsert
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteInsert, %function
cteInsert:
.LFB747:
	.loc 52 415 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3267:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 52 421 0
	ldr	r4, [r2]
	.loc 52 415 0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	.loc 52 420 0
	ldmib	r2, {r7, r9}
	.loc 52 415 0
	str	lr, [sp, #24]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 52 415 0
	add	ip, sp, #8
	stmdb	ip, {r0, r1}
	ldr	lr, [sp]
.LVL3268:
	.loc 52 420 0
	ldr	r0, [r2, #12]
	ldr	r6, [sp, #4]
.LVL3269:
.LBB11821:
.LBB11822:
	.loc 36 903 0
	and	r1, lr, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r5, lr
	.loc 36 904 0
	andne	r5, lr, #15
.LBE11822:
.LBE11821:
	.loc 52 423 0
	sub	r1, r5, #2
	cmp	r1, #28
	ldrls	pc, [pc, r1, asl #2]
	b	.L2987
.L2989:
	.word	.L3012
	.word	.L2987
	.word	.L2990
	.word	.L2987
	.word	.L2991
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2987
	.word	.L2992
.L3012:
	.loc 52 441 0
	mov	r8, #1
.L2988:
.LVL3270:
.LBB11823:
.LBB11824:
	.loc 36 357 0
	tst	r2, #7
	bne	.L3020
.LVL3271:
	ldr	ip, [r3]
.LBE11824:
.LBE11823:
.LBB11828:
.LBB11829:
	.loc 36 302 0
	bic	r1, r0, #2
.LBE11829:
.LBE11828:
.LBB11831:
.LBB11825:
	.loc 36 358 0
	and	r0, r9, #7
.LVL3272:
	.loc 36 359 0
	bic	r9, r2, #7
.LVL3273:
.LBE11825:
.LBE11831:
.LBB11832:
.LBB11830:
	.loc 36 303 0
	orr	r1, r1, r8, lsl #1
.LBE11830:
.LBE11832:
.LBB11833:
.LBB11826:
	.loc 36 359 0
	orr	r0, r0, r9
.LVL3274:
.LBE11826:
.LBE11833:
.LBB11834:
.LBB11835:
	.loc 36 330 0
	bic	r1, r1, #1
.LBE11835:
.LBE11834:
.LBB11837:
.LBB11838:
	.loc 36 903 0
	and	r9, ip, #14
.LBE11838:
.LBE11837:
.LBB11840:
.LBB11836:
	.loc 36 331 0
	orr	r1, r1, r8
.LVL3275:
.LBE11836:
.LBE11840:
.LBB11841:
.LBB11839:
	.loc 36 903 0
	cmp	r9, #14
	.loc 36 905 0
	uxtbeq	ip, ip
.LVL3276:
	.loc 36 904 0
	andne	ip, ip, #15
.LBE11839:
.LBE11841:
	.loc 52 454 0
	cmp	ip, #0
	bne	.L3021
.LBB11842:
.LBB11843:
	.loc 36 271 0
	ldr	ip, [r3, #12]
.LBE11843:
.LBE11842:
	.loc 52 456 0
	bics	ip, ip, #7
	bne	.L3003
.LBB11844:
.LBB11845:
	.loc 36 346 0 discriminator 2
	ldr	ip, [r3, #8]
.LBE11845:
.LBE11844:
	.loc 52 456 0 discriminator 2
	bics	ip, ip, #7
	bne	.L3003
.LVL3277:
.LBB11846:
.LBB11847:
.LBB11848:
.LBB11849:
	.loc 36 903 0
	and	ip, r4, #14
	cmp	ip, #14
	.loc 36 905 0
	uxtbeq	ip, r4
	.loc 36 904 0
	andne	ip, r4, #15
.LBE11849:
.LBE11848:
	.loc 52 402 0
	cmp	ip, #2
	cmpeq	r5, #2
	beq	.L3022
.LVL3278:
.L3007:
.LBE11847:
.LBE11846:
.LBB11870:
.LBB11871:
	.loc 36 282 0
	tst	r3, #7
.LBE11871:
.LBE11870:
	.loc 52 463 0
	str	lr, [r3]
.LVL3279:
	str	r6, [r3, #4]
	.loc 52 464 0
	strd	r0, [r3, #8]
.LVL3280:
.LBB11875:
.LBB11872:
	.loc 36 282 0
	bne	.L3023
	.loc 36 283 0
	ldr	r0, [r2, #12]
.LVL3281:
	.loc 36 284 0
	bic	r3, r3, #7
.LVL3282:
.LBE11872:
.LBE11875:
	.loc 52 466 0
	bics	r1, r1, #7
.LVL3283:
.LBB11876:
.LBB11873:
	.loc 36 283 0
	and	r0, r0, #7
	.loc 36 284 0
	orr	r0, r0, r3
	str	r0, [r2, #12]
.LVL3284:
.LBE11873:
.LBE11876:
	.loc 52 466 0
	beq	.L2984
.LVL3285:
.LBB11877:
.LBB11878:
	.loc 36 367 0
	ldr	r2, [r1, #8]
.LVL3286:
	and	r2, r2, #7
	.loc 36 368 0
	orr	r3, r2, r3
	str	r3, [r1, #8]
.LVL3287:
.L2984:
.LBE11878:
.LBE11877:
	.loc 52 471 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL3288:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL3289:
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3290:
.L2992:
	.cfi_restore_state
.LBB11879:
.LBB11880:
	.loc 36 903 0
	and	r1, r4, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r4
	.loc 36 904 0
	andne	r1, r4, #15
.LBE11880:
.LBE11879:
	.loc 52 436 0
	sub	r8, r1, #14
	clz	r8, r8
	lsr	r8, r8, #5
.LVL3291:
	.loc 52 438 0
	b	.L2988
.LVL3292:
.L2991:
.LBB11881:
.LBB11882:
	.loc 36 1199 0
	and	r1, lr, #15
	cmp	r1, #6
	bne	.L2996
.LBE11882:
.LBE11881:
.LBB11885:
.LBB11886:
	and	r1, r4, #15
.LBE11886:
.LBE11885:
.LBB11888:
.LBB11883:
	.loc 36 1202 0
	lsr	ip, r6, #4
.LVL3293:
.LBE11883:
.LBE11888:
.LBB11889:
.LBB11887:
	.loc 36 1199 0
	cmp	r1, #6
	bne	.L2996
.LBE11887:
.LBE11889:
	.loc 52 431 0
	cmp	ip, r7, lsr #4
	movne	r8, #1
	moveq	r8, #0
.LVL3294:
	.loc 52 433 0
	b	.L2988
.LVL3295:
.L2990:
.LBB11890:
.LBB11891:
	.loc 36 1151 0
	and	r1, lr, #15
	cmp	r1, #4
	bne	.L2994
.LBE11891:
.LBE11890:
.LBB11894:
.LBB11895:
	and	r1, r4, #15
.LBE11895:
.LBE11894:
.LBB11897:
.LBB11892:
	.loc 36 1154 0
	lsr	ip, lr, #4
.LVL3296:
.LBE11892:
.LBE11897:
.LBB11898:
.LBB11896:
	.loc 36 1151 0
	cmp	r1, #4
	bne	.L2994
.LVL3297:
.LBE11896:
.LBE11898:
	.loc 52 425 0
	cmp	ip, r4, lsr #4
	movne	r8, #1
	moveq	r8, #0
.LVL3298:
	.loc 52 427 0
	b	.L2988
.LVL3299:
.L2987:
	.loc 52 445 0
	mov	r8, #0
	b	.L2988
.LVL3300:
.L3022:
.LBB11899:
.LBB11868:
.LBB11850:
.LBB11851:
	.loc 36 1021 0
	and	ip, r4, #15
	cmp	ip, #2
	bne	.L3009
.LBE11851:
.LBE11850:
.LBB11854:
.LBB11855:
	and	ip, lr, #15
.LBE11855:
.LBE11854:
.LBB11857:
.LBB11852:
	.loc 36 1024 0
	bic	r4, r4, #15
.LVL3301:
.LBE11852:
.LBE11857:
.LBB11858:
.LBB11856:
	.loc 36 1021 0
	cmp	ip, #2
	bne	.L3009
	.loc 36 1024 0
	bic	ip, lr, #15
.LBE11856:
.LBE11858:
	.loc 52 403 0
	cmp	r4, ip
	bne	.L3007
.LVL3302:
.LBB11859:
.LBB11860:
	.loc 36 1010 0
	and	ip, r6, #31
.LVL3303:
.LBE11860:
.LBE11859:
.LBB11861:
.LBB11862:
	and	r4, r7, #31
.LBE11862:
.LBE11861:
	.loc 52 405 0
	cmp	ip, r4
	bne	.L3007
.LVL3304:
	.loc 52 408 0
	sub	ip, ip, #4
.LVL3305:
.LBB11863:
.LBB11864:
	.loc 36 986 0
	and	r7, r7, #63
.LVL3306:
.LBE11864:
.LBE11863:
	.loc 52 408 0
	mov	r4, #64
.LBB11866:
.LBB11865:
	.loc 36 987 0
	orr	r7, r7, r4, lsl ip
	str	r7, [r2, #4]
.LVL3307:
	b	.L3007
.LVL3308:
.L2996:
.LBE11865:
.LBE11866:
.LBE11868:
.LBE11899:
.LBB11900:
.LBB11884:
	bl	cap_notification_cap_get_capNtfnBadge.part.244
.LVL3309:
.L2994:
.LBE11884:
.LBE11900:
.LBB11901:
.LBB11893:
	bl	cap_endpoint_cap_get_capEPBadge.isra.111.part.112
.LVL3310:
.L3003:
.LBE11893:
.LBE11901:
	.loc 52 456 0 discriminator 3
	movw	r1, #:lower16:.LC206
.LVL3311:
	movw	r0, #:lower16:.LC208
.LVL3312:
	ldr	r3, .L3024
.LVL3313:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC208
	movw	r2, #457
.LVL3314:
	bl	_assert_fail
.LVL3315:
.L3021:
	.loc 52 454 0 discriminator 1
	movw	r1, #:lower16:.LC206
.LVL3316:
	movw	r0, #:lower16:.LC207
.LVL3317:
	ldr	r3, .L3024
.LVL3318:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC207
	movw	r2, #454
.LVL3319:
	bl	_assert_fail
.LVL3320:
.L3020:
.LBB11902:
.LBB11827:
	.loc 36 357 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC205
.LVL3321:
	ldr	r3, .L3024+4
.LVL3322:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC205
	movw	r2, #357
.LVL3323:
	bl	_assert_fail
.LVL3324:
.L3023:
.LBE11827:
.LBE11902:
.LBB11903:
.LBB11874:
	bl	mdb_node_ptr_set_mdbNext.isra.245.part.246
.LVL3325:
.L3009:
.LBE11874:
.LBE11903:
.LBB11904:
.LBB11869:
.LBB11867:
.LBB11853:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL3326:
.L3025:
	.align	2
.L3024:
	.word	.LANCHOR5-3880
	.word	.LANCHOR5-3904
.LBE11853:
.LBE11867:
.LBE11869:
.LBE11904:
	.cfi_endproc
.LFE747:
	.size	cteInsert, .-cteInsert
	.align	2
	.global	invokeCNodeInsert
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeInsert, %function
invokeCNodeInsert:
.LFB742:
	.loc 52 338 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3327:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 52 338 0
	stm	sp, {r0, r1}
	.loc 52 339 0
	ldm	sp, {r0, r1}
	bl	cteInsert
.LVL3328:
	.loc 52 342 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE742:
	.size	invokeCNodeInsert, .-invokeCNodeInsert
	.align	2
	.global	cteMove
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteMove, %function
cteMove:
.LFB748:
	.loc 52 475 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3329:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 52 475 0
	add	ip, sp, #8
	stmdb	ip, {r0, r1}
	ldr	r1, [r3]
.LVL3330:
.LBB11921:
.LBB11922:
	.loc 36 903 0
	and	r0, r1, #14
	cmp	r0, #14
	.loc 36 905 0
	uxtbeq	r1, r1
.LVL3331:
	.loc 36 904 0
	andne	r1, r1, #15
.LBE11922:
.LBE11921:
	.loc 52 480 0
	cmp	r1, #0
	bne	.L3045
.LBB11923:
.LBB11924:
	.loc 36 271 0
	ldr	r0, [r3, #12]
.LBE11924:
.LBE11923:
	.loc 52 482 0
	bics	r0, r0, #7
	bne	.L3032
.LBB11925:
.LBB11926:
	.loc 36 346 0 discriminator 2
	ldr	r0, [r3, #8]
.LBE11926:
.LBE11925:
	.loc 52 482 0 discriminator 2
	bics	r0, r0, #7
	bne	.L3032
	.loc 52 485 0
	ldr	ip, [r2, #8]
.LVL3332:
	ldr	r0, [r2, #12]
.LVL3333:
	.loc 52 486 0
	ldrd	r4, [sp]
	.loc 52 492 0
	bics	lr, ip, #7
	.loc 52 486 0
	strd	r4, [r3]
.LVL3334:
	.loc 52 487 0
	str	r1, [r2]
	str	r1, [r2, #4]
	.loc 52 488 0
	str	ip, [r3, #8]
	str	r0, [r3, #12]
.LVL3335:
	.loc 52 489 0
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	.loc 52 492 0
	bne	.L3046
	.loc 52 498 0
	bics	r0, r0, #7
.LVL3336:
	beq	.L3028
.LBB11927:
.LBB11928:
	.loc 36 366 0
	tst	r3, #7
.LVL3337:
	biceq	r3, r3, #7
.LVL3338:
	bne	.L3047
.LVL3339:
.L3040:
	.loc 36 367 0
	ldr	r2, [r0, #8]
	and	r2, r2, #7
	.loc 36 368 0
	orr	r3, r2, r3
	str	r3, [r0, #8]
.LVL3340:
.L3028:
.LBE11928:
.LBE11927:
	.loc 52 502 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3341:
.L3046:
	.cfi_restore_state
.LBB11930:
.LBB11931:
	.loc 36 282 0
	tst	r3, #7
	bne	.L3048
	.loc 36 283 0
	ldr	r2, [lr, #12]
.LVL3342:
	.loc 36 284 0
	bic	r3, r3, #7
.LVL3343:
.LBE11931:
.LBE11930:
	.loc 52 498 0
	bics	r0, r0, #7
.LVL3344:
.LBB11934:
.LBB11932:
	.loc 36 283 0
	and	r2, r2, #7
	.loc 36 284 0
	orr	r2, r2, r3
	str	r2, [lr, #12]
.LBE11932:
.LBE11934:
	.loc 52 498 0
	bne	.L3040
	b	.L3028
.LVL3345:
.L3032:
	.loc 52 482 0 discriminator 3
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC208
	ldr	r3, .L3049
.LVL3346:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC208
	movw	r2, #483
.LVL3347:
	bl	_assert_fail
.LVL3348:
.L3045:
	.loc 52 480 0 discriminator 1
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC207
	ldr	r3, .L3049
.LVL3349:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC207
	mov	r2, #480
.LVL3350:
	bl	_assert_fail
.LVL3351:
.L3047:
.LBB11935:
.LBB11929:
	bl	mdb_node_ptr_set_mdbPrev.isra.247.part.248
.LVL3352:
.L3048:
.LBE11929:
.LBE11935:
.LBB11936:
.LBB11933:
	bl	mdb_node_ptr_set_mdbNext.isra.245.part.246
.LVL3353:
.L3050:
	.align	2
.L3049:
	.word	.LANCHOR5-3868
.LBE11933:
.LBE11936:
	.cfi_endproc
.LFE748:
	.size	cteMove, .-cteMove
	.align	2
	.global	invokeCNodeMove
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeMove, %function
invokeCNodeMove:
.LFB743:
	.loc 52 346 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3354:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 52 346 0
	stm	sp, {r0, r1}
	.loc 52 347 0
	ldm	sp, {r0, r1}
	bl	cteMove
.LVL3355:
	.loc 52 350 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE743:
	.size	invokeCNodeMove, .-invokeCNodeMove
	.align	2
	.global	invokeCNodeSaveCaller
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeSaveCaller, %function
invokeCNodeSaveCaller:
.LFB745:
	.loc 52 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3356:
	.loc 52 372 0
	movw	r2, #:lower16:ksCurThread
	.loc 52 368 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 52 372 0
	movt	r2, #:upper16:ksCurThread
	.loc 52 368 0
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 52 372 0
	ldr	lr, [r2]
	bic	r1, lr, #1020
	bic	r1, r1, #3
	.loc 52 373 0
	ldr	ip, [r1, #48]
	.loc 52 372 0
	add	r2, r1, #48
.LVL3357:
	.loc 52 373 0
	ldrd	r4, [r1, #48]
.LBB11937:
.LBB11938:
	.loc 36 903 0
	and	r1, ip, #14
	cmp	r1, #14
.LBE11938:
.LBE11937:
	.loc 52 373 0
	strd	r4, [sp, #16]
.LVL3358:
.LBB11940:
.LBB11939:
	.loc 36 905 0
	uxtbeq	r1, ip
.LVL3359:
	.loc 36 904 0
	andne	r1, ip, #15
.LBE11939:
.LBE11940:
	.loc 52 375 0
	cmp	r1, #0
	beq	.L3057
	cmp	r1, #8
	bne	.L3064
.LVL3360:
.LBB11941:
.LBB11942:
	.loc 36 1337 0
	and	r3, ip, #15
	cmp	r3, #8
	bne	.L3065
.LVL3361:
.LBE11942:
.LBE11941:
	.loc 52 381 0
	tst	ip, #16
	beq	.L3066
.LVL3362:
.L3059:
	.loc 52 392 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3363:
.L3064:
	.cfi_restore_state
	.loc 52 387 0
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC210
.LVL3364:
	ldr	r3, .L3067
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC210
	movw	r2, #387
.LVL3365:
	bl	_fail
.LVL3366:
.L3057:
	.loc 52 377 0
	ldr	ip, [lr, #68]
	add	r3, lr, #528
	movw	r0, #:lower16:.LC14
.LVL3367:
	ldr	r2, .L3067
.LVL3368:
	str	lr, [sp]
.LVL3369:
	movt	r0, #:upper16:.LC14
	stmib	sp, {r3, ip}
	movw	r3, #377
	bl	kprintf
.LVL3370:
	movw	r0, #:lower16:.LC209
	movt	r0, #:upper16:.LC209
	bl	kprintf
.LVL3371:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3372:
	.loc 52 378 0
	b	.L3059
.LVL3373:
.L3066:
	.loc 52 382 0
	add	r1, sp, #24
	mov	r3, r0
	str	ip, [r1, #-8]!
	ldm	r1, {r0, r1}
.LVL3374:
	bl	cteMove
.LVL3375:
	b	.L3059
.LVL3376:
.L3065:
.LBB11944:
.LBB11943:
	bl	cap_reply_cap_get_capReplyMaster.isra.90.part.91
.LVL3377:
.L3068:
	.align	2
.L3067:
	.word	.LANCHOR5-3860
.LBE11943:
.LBE11944:
	.cfi_endproc
.LFE745:
	.size	invokeCNodeSaveCaller, .-invokeCNodeSaveCaller
	.align	2
	.global	cteSwap
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteSwap, %function
cteSwap:
.LFB750:
	.loc 52 521 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3378:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 52 521 0
	str	r3, [sp, #28]
	add	r3, sp, #8
	.loc 52 525 0
	ldrd	r4, [sp, #28]
	.loc 52 521 0
	stmdb	r3, {r0, r1}
	.loc 52 526 0
	ldrd	r0, [sp]
	.loc 52 521 0
	ldr	r3, [sp, #36]
	.loc 52 525 0
	strd	r4, [r2]
	.loc 52 526 0
	strd	r0, [r3]
	.loc 52 528 0
	ldr	r0, [r2, #8]
.LVL3379:
	ldr	ip, [r2, #12]
.LVL3380:
	.loc 52 531 0
	bics	r5, r0, #7
	beq	.L3070
.LVL3381:
.LBB11945:
.LBB11946:
	.loc 36 282 0
	tst	r3, #7
	bne	.L3077
	.loc 36 283 0
	ldr	r4, [r5, #12]
	.loc 36 284 0
	bic	r6, r3, #7
.LBE11946:
.LBE11945:
	.loc 52 537 0
	bics	r1, ip, #7
.LBB11949:
.LBB11947:
	.loc 36 283 0
	and	r4, r4, #7
	.loc 36 284 0
	orr	r4, r4, r6
	str	r4, [r5, #12]
.LBE11947:
.LBE11949:
	.loc 52 537 0
	beq	.L3073
.LVL3382:
.L3082:
.LBB11950:
.LBB11951:
	.loc 36 367 0
	ldr	lr, [r1, #8]
	and	lr, lr, #7
	.loc 36 368 0
	orr	lr, lr, r6
	str	lr, [r1, #8]
.LVL3383:
.L3073:
.LBE11951:
.LBE11950:
	.loc 52 542 0
	ldr	lr, [r3, #8]
.LVL3384:
	ldr	r1, [r3, #12]
.LVL3385:
	.loc 52 547 0
	bics	r4, lr, #7
	.loc 52 543 0
	str	lr, [r2, #8]
	str	r1, [r2, #12]
	.loc 52 544 0
	str	r0, [r3, #8]
	str	ip, [r3, #12]
	.loc 52 547 0
	bne	.L3091
	.loc 52 553 0
	bics	r1, r1, #7
.LVL3386:
	beq	.L3069
.LBB11953:
.LBB11954:
	.loc 36 366 0
	tst	r2, #7
.LVL3387:
	bne	.L3081
	bic	r2, r2, #7
.LVL3388:
.L3083:
	.loc 36 367 0
	ldr	r3, [r1, #8]
	and	r3, r3, #7
	.loc 36 368 0
	orr	r2, r3, r2
	str	r2, [r1, #8]
.LVL3389:
.L3069:
.LBE11954:
.LBE11953:
	.loc 52 557 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3390:
.L3070:
	.cfi_restore_state
	.loc 52 537 0
	bics	r1, ip, #7
	beq	.L3073
.LBB11955:
.LBB11952:
	.loc 36 366 0
	tst	r3, #7
.LVL3391:
	biceq	r6, r3, #7
	beq	.L3082
.LVL3392:
.L3081:
	bl	mdb_node_ptr_set_mdbPrev.isra.247.part.248
.LVL3393:
.L3091:
.LBE11952:
.LBE11955:
.LBB11956:
.LBB11957:
	.loc 36 282 0
	tst	r2, #7
	bne	.L3077
	.loc 36 283 0
	ldr	r3, [r4, #12]
	.loc 36 284 0
	bic	r2, r2, #7
.LVL3394:
.LBE11957:
.LBE11956:
	.loc 52 553 0
	bics	r1, r1, #7
.LVL3395:
.LBB11959:
.LBB11958:
	.loc 36 283 0
	and	r3, r3, #7
	.loc 36 284 0
	orr	r3, r3, r2
	str	r3, [r4, #12]
.LBE11958:
.LBE11959:
	.loc 52 553 0
	bne	.L3083
	b	.L3069
.LVL3396:
.L3077:
.LBB11960:
.LBB11948:
	bl	mdb_node_ptr_set_mdbNext.isra.245.part.246
.LVL3397:
.LBE11948:
.LBE11960:
	.cfi_endproc
.LFE750:
	.size	cteSwap, .-cteSwap
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	capSwapForDelete.part.249, %function
capSwapForDelete.part.249:
.LFB1124:
	.loc 52 505 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3398:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 52 514 0
	ldrd	r4, [r1]
	.loc 52 516 0
	mov	r2, r0
	.loc 52 505 0
	strd	r6, [sp, #8]
	.loc 52 513 0
	ldrd	r6, [r0]
	.loc 52 505 0
	str	lr, [sp, #16]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 52 513 0
	add	ip, sp, #8
	.loc 52 516 0
	str	r1, [sp, #4]
	.loc 52 514 0
	strd	r4, [sp, #16]
	.loc 52 513 0
	strd	r6, [sp, #8]
	.loc 52 516 0
	ldr	r3, [sp, #16]
	ldr	lr, [sp, #20]
	ldm	ip, {r0, r1}
.LVL3399:
	str	lr, [sp]
	bl	cteSwap
.LVL3400:
	.loc 52 517 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE1124:
	.size	capSwapForDelete.part.249, .-capSwapForDelete.part.249
	.align	2
	.global	capSwapForDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	capSwapForDelete, %function
capSwapForDelete:
.LFB749:
	.loc 52 506 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3401:
	.loc 52 509 0
	cmp	r1, r0
	beq	.L3094
	b	capSwapForDelete.part.249
.LVL3402:
.L3094:
	.loc 52 517 0
	bx	lr
	.cfi_endproc
.LFE749:
	.size	capSwapForDelete, .-capSwapForDelete
	.align	2
	.global	invokeCNodeRotate
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeRotate, %function
invokeCNodeRotate:
.LFB744:
	.loc 52 355 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3403:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 52 355 0
	ldr	r5, [sp, #40]
	add	r4, sp, #16
	add	ip, sp, #8
	ldr	lr, [sp, #48]
	stm	r4, {r0, r1}
	stm	ip, {r2, r3}
	.loc 52 356 0
	cmp	r5, lr
	beq	.L3100
	.loc 52 359 0
	mov	r3, lr
	ldm	ip, {r0, r1}
	ldr	r2, [sp, #44]
	bl	cteMove
.LVL3404:
	.loc 52 360 0
	mov	r2, r5
	ldm	r4, {r0, r1}
	ldr	r3, [sp, #44]
	bl	cteMove
.LVL3405:
.L3098:
	.loc 52 364 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3406:
.L3100:
	.cfi_restore_state
	.loc 52 357 0
	ldr	ip, [sp, #12]
	mov	r2, r5
	ldr	r3, [sp, #44]
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	ldm	r4, {r0, r1}
	str	ip, [sp]
	bl	cteSwap
.LVL3407:
	b	.L3098
	.cfi_endproc
.LFE744:
	.size	invokeCNodeRotate, .-invokeCNodeRotate
	.align	2
	.global	insertNewCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	insertNewCap, %function
insertNewCap:
.LFB759:
	.loc 52 788 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3408:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB11969:
.LBB11970:
	.loc 36 256 0
	tst	r0, #7
.LBE11970:
.LBE11969:
	.loc 52 788 0
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 52 788 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	.loc 52 792 0
	ldrd	r4, [sp]
.LBB11973:
.LBB11974:
	.loc 36 271 0
	ldr	r3, [r0, #12]
.LBE11974:
.LBE11973:
	.loc 52 792 0
	strd	r4, [r1]
.LVL3409:
.LBB11975:
.LBB11971:
	.loc 36 256 0
	bne	.L3108
	bic	r3, r3, #7
.LVL3410:
	.loc 36 259 0
	bic	ip, r0, #7
	.loc 36 263 0
	orr	r2, r3, #3
.LBE11971:
.LBE11975:
	.loc 52 794 0
	cmp	r3, #0
	.loc 52 793 0
	str	ip, [r1, #8]
	str	r2, [r1, #12]
	.loc 52 794 0
	beq	.L3103
.LVL3411:
.LBB11976:
.LBB11977:
	.loc 36 366 0
	tst	r1, #7
	bne	.L3109
	.loc 36 367 0
	ldr	r2, [r3, #8]
	.loc 36 368 0
	bic	r1, r1, #7
.LVL3412:
	.loc 36 367 0
	and	r2, r2, #7
	.loc 36 368 0
	orr	r2, r2, r1
	str	r2, [r3, #8]
.LVL3413:
.L3105:
.LBE11977:
.LBE11976:
.LBB11979:
.LBB11980:
	.loc 36 283 0
	ldr	r3, [r0, #12]
.LVL3414:
	and	r3, r3, #7
	.loc 36 284 0
	orr	r1, r3, r1
	str	r1, [r0, #12]
.LBE11980:
.LBE11979:
	.loc 52 798 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3415:
.L3103:
	.cfi_restore_state
.LBB11982:
.LBB11981:
	.loc 36 282 0
	tst	r1, #7
	biceq	r1, r1, #7
.LVL3416:
	beq	.L3105
	bl	mdb_node_ptr_set_mdbNext.isra.245.part.246
.LVL3417:
.L3108:
.LBE11981:
.LBE11982:
.LBB11983:
.LBB11972:
	.loc 36 256 0
	movw	r1, #:lower16:.LC37
.LVL3418:
	movw	r0, #:lower16:.LC211
.LVL3419:
	ldr	r3, .L3110
.LVL3420:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC211
	mov	r2, #256
	bl	_assert_fail
.LVL3421:
.L3109:
.LBE11972:
.LBE11983:
.LBB11984:
.LBB11978:
	bl	mdb_node_ptr_set_mdbPrev.isra.247.part.248
.LVL3422:
.L3111:
	.align	2
.L3110:
	.word	.LANCHOR3+792
.LBE11978:
.LBE11984:
	.cfi_endproc
.LFE759:
	.size	insertNewCap, .-insertNewCap
	.align	2
	.global	setupReplyMaster
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupReplyMaster, %function
setupReplyMaster:
.LFB760:
	.loc 52 802 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3423:
	.loc 52 805 0
	bic	r2, r0, #1020
	bic	r2, r2, #3
	ldr	r3, [r2, #32]
	add	r1, r2, #32
.LVL3424:
.LBB11995:
.LBB11996:
	.loc 36 903 0
	and	ip, r3, #14
	cmp	ip, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL3425:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE11996:
.LBE11995:
	.loc 52 806 0
	cmp	r3, #0
	bne	.L3112
.LVL3426:
.LBB11997:
.LBB11998:
	.loc 36 1294 0
	tst	r0, #31
	bne	.L3120
.LVL3427:
	.loc 36 1299 0
	bic	r0, r0, #31
.LVL3428:
.LBE11998:
.LBE11997:
.LBB12003:
.LBB12004:
	.loc 36 340 0
	mov	ip, #3
.LBE12004:
.LBE12003:
.LBB12006:
.LBB11999:
	.loc 36 1300 0
	orr	r0, r0, #24
.LBE11999:
.LBE12006:
	.loc 52 809 0
	str	r0, [r2, #32]
	str	r3, [r1, #4]
.LVL3429:
	.loc 52 810 0
	str	r3, [r1, #8]
.LBB12007:
.LBB12005:
	.loc 36 340 0
	str	ip, [r1, #12]
.LVL3430:
.L3112:
	bx	lr
.LVL3431:
.L3120:
.LBE12005:
.LBE12007:
.LBB12008:
.LBB12000:
	.loc 36 1294 0
	movw	r1, #:lower16:.LC37
.LVL3432:
	movw	r0, #:lower16:.LC212
.LVL3433:
.LBE12000:
.LBE12008:
	.loc 52 802 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB12009:
.LBB12001:
	.loc 36 1294 0
	ldr	r3, .L3121
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC212
	movw	r2, #1294
.LVL3434:
.LBE12001:
.LBE12009:
	.loc 52 802 0
	str	lr, [sp, #4]
.LBB12010:
.LBB12002:
	.loc 36 1294 0
	bl	_assert_fail
.LVL3435:
.L3122:
	.align	2
.L3121:
	.word	.LANCHOR3+3240
.LBE12002:
.LBE12010:
	.cfi_endproc
.LFE760:
	.size	setupReplyMaster, .-setupReplyMaster
	.align	2
	.global	ensureEmptySlot
	.syntax unified
	.arm
	.fpu softvfp
	.type	ensureEmptySlot, %function
ensureEmptySlot:
.LFB763:
	.loc 52 875 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3436:
	ldr	r0, [r0]
.LVL3437:
.LBB12011:
.LBB12012:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r0, r0
.LVL3438:
	.loc 36 904 0
	andne	r0, r0, #15
.LBE12012:
.LBE12011:
	.loc 52 876 0
	cmp	r0, #0
	beq	.L3123
	.loc 52 877 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 52 878 0
	mov	r0, #3
	.loc 52 877 0
	str	r2, [r3, #24]
.L3123:
	.loc 52 882 0
	bx	lr
	.cfi_endproc
.LFE763:
	.size	ensureEmptySlot, .-ensureEmptySlot
	.align	2
	.global	getReceiveSlots
	.syntax unified
	.arm
	.fpu softvfp
	.type	getReceiveSlots, %function
getReceiveSlots:
.LFB766:
	.loc 52 937 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3439:
	.loc 52 945 0
	subs	r3, r1, #0
	beq	.L3138
.LVL3440:
	.loc 52 937 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB12013:
.LBB12014:
	.loc 45 25 0
	ldr	r2, [r3, #500]
	mov	r1, r0
.LVL3441:
.LBE12014:
.LBE12013:
.LBB12017:
.LBB12018:
.LBB12019:
.LBB12020:
	.loc 41 67 0
	ldr	r5, [r3, #508]
.LBE12020:
.LBE12019:
.LBE12018:
.LBE12017:
	.loc 52 937 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
.LBB12024:
.LBB12023:
.LBB12022:
.LBB12021:
	.loc 41 66 0
	ldr	r6, [r3, #504]
.LBE12021:
.LBE12022:
.LBE12023:
.LBE12024:
.LBB12025:
.LBB12015:
	.loc 45 25 0
	add	r4, sp, #16
.LVL3442:
	mov	r0, r4
.LVL3443:
	bl	lookupSlot
.LVL3444:
	.loc 45 26 0
	ldr	r1, [sp, #16]
	cmp	r1, #0
	bne	.L3131
.LVL3445:
	.loc 45 33 0
	ldr	r3, [sp, #20]
.LBE12015:
.LBE12025:
.LBB12026:
.LBB12027:
	.loc 45 128 0
	add	r0, sp, #8
.LBE12027:
.LBE12026:
.LBB12029:
.LBB12016:
	.loc 45 33 0
	ldrd	r2, [r3]
.LVL3446:
.LBE12016:
.LBE12029:
.LBB12030:
.LBB12028:
	.loc 45 128 0
	str	r6, [sp]
	str	r5, [sp, #4]
	strd	r2, [sp, #16]
.LVL3447:
	ldm	r4, {r2, r3}
.LVL3448:
	bl	lookupSlotForCNodeOp
.LVL3449:
.LBE12028:
.LBE12030:
	.loc 52 959 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L3131
	.loc 52 962 0
	ldr	r0, [sp, #12]
.LVL3450:
	ldr	r3, [r0]
.LVL3451:
.LBB12031:
.LBB12032:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL3452:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE12032:
.LBE12031:
	.loc 52 964 0
	cmp	r3, #0
	bne	.L3131
.LVL3453:
.L3128:
	.loc 52 969 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL3454:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3455:
.L3131:
	.cfi_restore_state
	.loc 52 954 0
	mov	r0, #0
	b	.L3128
.LVL3456:
.L3138:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 52 946 0
	mov	r0, #0
.LVL3457:
	.loc 52 969 0
	bx	lr
	.cfi_endproc
.LFE766:
	.size	getReceiveSlots, .-getReceiveSlots
	.align	2
	.global	loadCapTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadCapTransfer, %function
loadCapTransfer:
.LFB767:
	.loc 52 973 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3458:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB12033:
.LBB12034:
	.loc 41 68 0
	ldr	lr, [r1, #500]
	.loc 41 66 0
	ldr	ip, [r1, #504]
.LVL3459:
	.loc 41 67 0
	ldr	r2, [r1, #508]
.LVL3460:
	.loc 41 68 0
	str	lr, [r0]
	str	ip, [r0, #4]
	str	r2, [r0, #8]
.LVL3461:
.LBE12034:
.LBE12033:
	.loc 52 976 0
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE767:
	.size	loadCapTransfer, .-loadCapTransfer
	.align	2
	.global	replyFromKernel_success_empty
	.syntax unified
	.arm
	.fpu softvfp
	.type	replyFromKernel_success_empty, %function
replyFromKernel_success_empty:
.LFB773:
	.file 56 "/home/sel4/work/work2/kernel/src/object/endpoint.c"
	.loc 56 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3462:
.LBB12041:
.LBB12042:
	.loc 10 30 0
	mov	r3, #0
	str	r3, [r0]
.LVL3463:
.LBE12042:
.LBE12041:
.LBB12043:
.LBB12044:
	str	r3, [r0, #4]
.LVL3464:
.LBE12044:
.LBE12043:
	.loc 56 221 0
	bx	lr
	.cfi_endproc
.LFE773:
	.size	replyFromKernel_success_empty, .-replyFromKernel_success_empty
	.align	2
	.global	cancelAllIPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	cancelAllIPC, %function
cancelAllIPC:
.LFB775:
	.loc 56 280 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3465:
	ldr	r3, [r0]
.LVL3466:
	.loc 56 281 0
	tst	r3, #3
	bxeq	lr
	.loc 56 280 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, [r0, #4]
.LVL3467:
.LBB12045:
.LBB12046:
.LBB12047:
	.loc 36 492 0
	and	r3, r3, #12
.LBE12047:
.LBE12046:
.LBE12045:
	.loc 56 280 0
	str	lr, [sp, #4]
.LBB12058:
.LBB12049:
.LBB12048:
	.loc 36 493 0
	str	r3, [r0]
.LBE12048:
.LBE12049:
.LBB12050:
.LBB12051:
	.loc 36 473 0
	and	r3, r4, #15
.LBE12051:
.LBE12050:
	.loc 56 294 0
	bics	r4, r4, #15
.LVL3468:
.LBB12053:
.LBB12052:
	.loc 36 474 0
	str	r3, [r0, #4]
.LVL3469:
.LBE12052:
.LBE12053:
	.loc 56 294 0
	bne	.L3147
	b	.L3148
.LVL3470:
.L3146:
	.loc 56 294 0 is_stmt 0 discriminator 2
	ldr	r4, [r4, #512]
.LVL3471:
	cmp	r4, #0
	beq	.L3148
.LVL3472:
.L3147:
	.loc 56 295 0 is_stmt 1 discriminator 2
	mov	r1, #2
	mov	r0, r4
	bl	setThreadState
.LVL3473:
.LBB12054:
.LBB12055:
.LBB12056:
.LBB12057:
	.loc 36 78 0 discriminator 2
	ldr	r3, [r4, #452]
.LBE12057:
.LBE12056:
	.loc 27 80 0 discriminator 2
	tst	r3, #1
	bne	.L3146
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL3474:
.LBE12055:
.LBE12054:
	.loc 56 294 0
	ldr	r4, [r4, #512]
.LVL3475:
	cmp	r4, #0
	bne	.L3147
.LVL3476:
.L3148:
.LBE12058:
	.loc 56 303 0
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB12059:
	.loc 56 299 0
	b	rescheduleRequired
.LVL3477:
.LBE12059:
	.cfi_endproc
.LFE775:
	.size	cancelAllIPC, .-cancelAllIPC
	.align	2
	.global	cancelBadgedSends
	.syntax unified
	.arm
	.fpu softvfp
	.type	cancelBadgedSends, %function
cancelBadgedSends:
.LFB776:
	.loc 56 307 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3478:
	ldr	r3, [r0]
.LVL3479:
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	r10, [sp, #24]
.LBB12092:
.LBB12093:
	.loc 36 499 0
	and	r2, r3, #3
.LBE12093:
.LBE12092:
	.loc 56 307 0
	str	lr, [sp, #28]
	.loc 56 308 0
	cmp	r2, #1
	beq	.L3155
	bcc	.L3153
	cmp	r2, #2
	beq	.L3153
	.loc 56 346 0
	movw	r1, #:lower16:.LC213
.LVL3480:
	movw	r0, #:lower16:.LC214
.LVL3481:
	ldr	r3, .L3179
	movt	r1, #:upper16:.LC213
	movt	r0, #:upper16:.LC214
	movw	r2, #346
	bl	_fail
.LVL3482:
.L3153:
	.loc 56 348 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L3155:
	.cfi_restore_state
.LVL3483:
	ldr	r4, [r0, #4]
.LVL3484:
.LBB12094:
.LBB12095:
.LBB12096:
	.loc 36 492 0
	and	r2, r3, #12
.LBE12096:
.LBE12095:
.LBB12097:
.LBB12098:
.LBB12099:
.LBB12100:
	.loc 36 480 0
	bic	r7, r3, #15
.LVL3485:
	mov	r6, r0
.LBE12100:
.LBE12099:
.LBE12098:
.LBE12097:
.LBB12102:
.LBB12103:
	.loc 36 473 0
	and	r3, r4, #15
.LBE12103:
.LBE12102:
	.loc 56 324 0
	bics	r4, r4, #15
.LVL3486:
.LBB12105:
.LBB12104:
	.loc 36 474 0
	strd	r2, [r0]
.LVL3487:
.LBE12104:
.LBE12105:
	.loc 56 324 0
	beq	.L3167
	mov	r5, r1
	mov	r8, r4
	b	.L3162
.LVL3488:
.L3158:
	.loc 56 324 0 is_stmt 0 discriminator 1
	cmp	r9, #0
	mov	r4, r9
.LVL3489:
	beq	.L3176
.LVL3490:
.L3162:
.LBB12106:
.LBB12107:
.LBB12108:
	.loc 36 21 0 is_stmt 1
	ldr	r3, [r4, #456]
.LBE12108:
.LBE12107:
	.loc 56 327 0
	ldr	r9, [r4, #512]
.LVL3491:
	.loc 56 328 0
	cmp	r5, r3, lsr #4
	bne	.L3158
	.loc 56 329 0
	mov	r1, #2
	mov	r0, r4
	bl	setThreadState
.LVL3492:
.LBB12109:
.LBB12110:
.LBB12111:
.LBB12112:
	.loc 36 78 0
	ldr	r3, [r4, #452]
.LBE12112:
.LBE12111:
	.loc 27 80 0
	tst	r3, #1
	beq	.L3177
.L3159:
.LVL3493:
.LBE12110:
.LBE12109:
.LBB12114:
.LBB12115:
	.loc 27 227 0
	ldr	r3, [r4, #516]
	cmp	r3, #0
	beq	.L3160
	.loc 27 228 0
	ldr	r2, [r4, #512]
	str	r2, [r3, #512]
	ldr	r2, [r4, #512]
.L3161:
	.loc 27 233 0
	cmp	r2, #0
	mov	r4, r9
.LVL3494:
	.loc 27 227 0
	moveq	r7, r3
.LVL3495:
	.loc 27 234 0
	strne	r3, [r2, #516]
.LBE12115:
.LBE12114:
.LBE12106:
	.loc 56 324 0
	cmp	r9, #0
	bne	.L3162
.LVL3496:
.L3176:
.LBB12119:
.LBB12120:
.LBB12121:
.LBB12122:
	.loc 36 472 0
	tst	r8, #15
	bne	.L3163
	ldr	r3, [r6, #4]
	bic	r4, r8, #15
.LVL3497:
.L3157:
	.loc 36 473 0
	and	r3, r3, #15
.LBE12122:
.LBE12121:
.LBB12125:
.LBB12126:
	.loc 36 491 0
	tst	r7, #15
.LBE12126:
.LBE12125:
.LBB12131:
.LBB12123:
	.loc 36 474 0
	orr	r4, r3, r4
	str	r4, [r6, #4]
.LVL3498:
.LBE12123:
.LBE12131:
.LBB12132:
.LBB12127:
	.loc 36 491 0
	bne	.L3178
	.loc 36 492 0
	ldr	r3, [r6]
	.loc 36 493 0
	bic	r7, r7, #15
.LVL3499:
.LBE12127:
.LBE12132:
.LBE12120:
.LBE12119:
	.loc 56 336 0
	cmp	r8, #0
.LBE12094:
	.loc 56 348 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
.LBB12147:
.LBB12140:
.LBB12137:
.LBB12133:
.LBB12128:
	.loc 36 492 0
	and	r3, r3, #15
.LBE12128:
.LBE12133:
.LBE12137:
.LBE12140:
.LBE12147:
	.loc 56 348 0
	ldr	lr, [sp, #28]
	.cfi_restore 14
.LBB12148:
.LBB12141:
.LBB12138:
.LBB12134:
.LBB12129:
	.loc 36 493 0
	orr	r3, r3, r7
.LVL3500:
.LBE12129:
.LBE12134:
.LBE12138:
.LBE12141:
.LBB12142:
.LBB12143:
	.loc 36 511 0
	bicne	r3, r3, #3
	.loc 36 512 0
	orrne	r3, r3, #1
	str	r3, [r6]
.LBE12143:
.LBE12142:
.LBE12148:
	.loc 56 348 0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL3501:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
.LBB12149:
	.loc 56 340 0
	b	rescheduleRequired
.LVL3502:
.L3177:
	.cfi_restore_state
.LBB12144:
.LBB12117:
.LBB12113:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL3503:
	b	.L3159
.LVL3504:
.L3160:
.LBE12113:
.LBE12117:
.LBB12118:
.LBB12116:
	.loc 27 230 0
	ldr	r8, [r4, #512]
.LVL3505:
	mov	r2, r8
	b	.L3161
.LVL3506:
.L3167:
.LBE12116:
.LBE12118:
.LBE12144:
.LBB12145:
.LBB12101:
	.loc 56 29 0
	mov	r8, r4
	b	.L3157
.LVL3507:
.L3178:
.LBE12101:
.LBE12145:
.LBB12146:
.LBB12139:
.LBB12135:
.LBB12130:
	bl	endpoint_ptr_set_epQueue_tail.isra.258.part.259
.LVL3508:
.L3163:
.LBE12130:
.LBE12135:
.LBB12136:
.LBB12124:
	bl	endpoint_ptr_set_epQueue_head.isra.256.part.257
.LVL3509:
.L3180:
	.align	2
.L3179:
	.word	.LANCHOR5-3836
.LBE12124:
.LBE12136:
.LBE12139:
.LBE12146:
.LBE12149:
	.cfi_endproc
.LFE776:
	.size	cancelBadgedSends, .-cancelBadgedSends
	.align	2
	.global	invokeCNodeCancelBadgedSends
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeCancelBadgedSends, %function
invokeCNodeCancelBadgedSends:
.LFB741:
	.loc 52 326 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 52 326 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r1, [sp]
.LVL3510:
.LBB12150:
.LBB12151:
	.loc 36 1151 0
	and	r3, r1, #15
	cmp	r3, #4
	bne	.L3188
.LBE12151:
.LBE12150:
	.loc 52 328 0
	lsrs	r1, r1, #4
	beq	.L3183
.LVL3511:
.LBB12153:
.LBB12154:
.LBB12155:
	.loc 36 1062 0
	ldr	r0, [sp, #4]
.LBE12155:
.LBE12154:
	.loc 52 331 0
	bic	r0, r0, #15
.LVL3512:
	bl	cancelBadgedSends
.LVL3513:
.L3183:
.LBE12153:
	.loc 52 334 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L3188:
	.cfi_restore_state
.LBB12156:
.LBB12152:
	bl	cap_endpoint_cap_get_capEPBadge.isra.111.part.112
.LVL3514:
.LBE12152:
.LBE12156:
	.cfi_endproc
.LFE741:
	.size	invokeCNodeCancelBadgedSends, .-invokeCNodeCancelBadgedSends
	.align	2
	.global	invokeIRQControl
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeIRQControl, %function
invokeIRQControl:
.LFB778:
	.loc 53 87 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3515:
.LBB12173:
.LBB12174:
.LBB12175:
.LBB12176:
.LBB12177:
	.loc 7 158 0
	lsr	r3, r0, #5
.LBE12177:
.LBE12176:
.LBE12175:
.LBE12174:
.LBE12173:
	.loc 53 87 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB12197:
.LBB12193:
.LBB12188:
.LBB12183:
.LBB12178:
	.loc 7 160 0
	movw	ip, #16895
.LBE12178:
.LBE12183:
.LBE12188:
	.loc 53 266 0
	mov	r5, #1
.LBE12193:
.LBE12197:
	.loc 53 87 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB12198:
.LBB12194:
.LBB12189:
.LBB12184:
.LBB12179:
	.loc 7 160 0
	lsl	r3, r3, #2
	.loc 7 159 0
	and	lr, r0, #31
.LBE12179:
.LBE12184:
.LBE12189:
	.loc 53 266 0
	movw	r4, #:lower16:intStateIRQTable
.LBB12190:
.LBB12185:
.LBB12180:
	.loc 7 160 0
	movt	ip, 65520
	lsl	lr, r5, lr
.LBE12180:
.LBE12185:
.LBE12190:
	.loc 53 266 0
	movt	r4, #:upper16:intStateIRQTable
.LBB12191:
.LBB12186:
.LBB12181:
	.loc 7 160 0
	add	ip, r3, ip
.LBE12181:
.LBE12186:
.LBE12191:
.LBE12194:
.LBE12198:
.LBB12199:
.LBB12200:
	.loc 36 2106 0
	bics	r6, r0, #255
.LVL3516:
.LBE12200:
.LBE12199:
.LBB12203:
.LBB12195:
	.loc 53 266 0
	str	r5, [r4, r0, lsl #2]
.LBE12195:
.LBE12203:
	.loc 53 87 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
.LBB12204:
.LBB12196:
.LBB12192:
.LBB12187:
.LBB12182:
	.loc 7 160 0
	str	lr, [ip, #-255]
.LVL3517:
.LBE12182:
.LBE12187:
.LBE12192:
.LBE12196:
.LBE12204:
.LBB12205:
.LBB12201:
	.loc 36 2106 0
	bne	.L3192
.LVL3518:
	.loc 36 2112 0
	uxtb	r0, r0
.LVL3519:
	.loc 36 2114 0
	mov	ip, #30
.LBE12201:
.LBE12205:
	.loc 53 89 0
	mov	r3, r1
	add	r1, sp, #8
.LVL3520:
.LBB12206:
.LBB12202:
	.loc 36 2114 0
	str	ip, [sp]
	.loc 36 2112 0
	str	r0, [sp, #4]
.LVL3521:
.LBE12202:
.LBE12206:
	.loc 53 89 0
	ldmdb	r1, {r0, r1}
	bl	cteInsert
.LVL3522:
	.loc 53 92 0
	mov	r0, r6
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3523:
.L3192:
	.cfi_restore_state
.LBB12207:
.LBB12208:
.LBB12209:
	.loc 36 2106 0
	movw	r1, #:lower16:.LC37
.LVL3524:
	movw	r0, #:lower16:.LC215
.LVL3525:
	ldr	r3, .L3193
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC215
	movw	r2, #2106
.LVL3526:
	bl	_assert_fail
.LVL3527:
.L3194:
	.align	2
.L3193:
	.word	.LANCHOR5-3816
.LBE12209:
.LBE12208:
.LBE12207:
	.cfi_endproc
.LFE778:
	.size	invokeIRQControl, .-invokeIRQControl
	.align	2
	.global	decodeIRQControlInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeIRQControlInvocation, %function
decodeIRQControlInvocation:
.LFB777:
	.loc 53 31 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3528:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 53 32 0
	cmp	r0, #23
	.loc 53 31 0
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	.cfi_offset 5, -36
	.cfi_offset 6, -32
	.cfi_offset 7, -28
	.cfi_offset 8, -24
	.cfi_offset 9, -20
	.cfi_offset 10, -16
	.cfi_offset 14, -12
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	r10, [sp, #24]
	str	lr, [sp, #28]
	sub	sp, sp, #32
	.cfi_def_cfa_offset 72
	.loc 53 31 0
	ldr	r6, [sp, #80]
	str	r3, [sp, #68]
.LVL3529:
	.loc 53 32 0
	beq	.L3210
.LVL3530:
.LBB12210:
.LBB12211:
	.loc 23 21 0
	mov	r2, #3
.LVL3531:
	movw	r3, #:lower16:current_syscall_error
.LVL3532:
	movt	r3, #:upper16:current_syscall_error
.LBE12211:
.LBE12210:
	.loc 53 81 0
	mov	r4, r2
.LBB12213:
.LBB12212:
	.loc 23 21 0
	str	r2, [r3, #24]
.LVL3533:
.L3195:
.LBE12212:
.LBE12213:
	.loc 53 83 0
	mov	r0, r4
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
	ldr	lr, [sp, #28]
	.cfi_restore 14
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3534:
.L3210:
	.cfi_restore_state
.LBB12214:
	.loc 53 40 0 discriminator 1
	cmp	r3, #0
	cmpne	r1, #2
	movls	ip, #1
	movhi	ip, #0
	bls	.L3211
.LBB12215:
.LBB12216:
	.loc 43 31 0
	movw	r7, #:lower16:ksCurThread
	mov	r5, r2
.LVL3535:
	movt	r7, #:upper16:ksCurThread
	ldr	r2, [r7]
.LVL3536:
.LBB12217:
.LBB12218:
	.loc 10 36 0
	ldr	r9, [r2, #8]
.LVL3537:
	uxth	r8, r9
.LVL3538:
.LBE12218:
.LBE12217:
.LBE12216:
.LBE12215:
.LBB12219:
.LBB12220:
	.file 57 "/home/sel4/work/work2/kernel/include/arch/arm/arch/object/interrupt.h"
	.loc 57 26 0
	cmp	r8, #232
	bhi	.L3212
.LVL3539:
.LBE12220:
.LBE12219:
.LBB12226:
.LBB12227:
	.loc 53 260 0
	movw	r1, #:lower16:intStateIRQTable
.LVL3540:
	movt	r1, #:upper16:intStateIRQTable
.LBE12227:
.LBE12226:
	.loc 53 57 0
	ldr	r10, [r1, r8, lsl #2]
	cmp	r10, #0
	beq	.L3213
	.loc 53 59 0
	ldr	r4, [r2, #68]
	.loc 53 58 0
	movw	lr, #:lower16:current_syscall_error
	.loc 53 59 0
	add	r3, r2, #528
.LVL3541:
	.loc 53 58 0
	movt	lr, #:upper16:current_syscall_error
	mov	r5, #9
.LVL3542:
	.loc 53 59 0
	movw	r0, #:lower16:.LC14
.LVL3543:
	strd	r2, [sp]
.LVL3544:
	mov	r1, ip
	mov	r3, #59
	ldr	r2, .L3215
	movt	r0, #:upper16:.LC14
	str	r4, [sp, #8]
	.loc 53 60 0
	mov	r4, #3
	.loc 53 58 0
	str	r5, [lr, #24]
	.loc 53 59 0
	bl	kprintf
.LVL3545:
	movw	r0, #:lower16:.LC217
	mov	r1, r8
	movt	r0, #:upper16:.LC217
	bl	kprintf
.LVL3546:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3547:
	.loc 53 60 0
	b	.L3195
.LVL3548:
.L3211:
	.loc 53 41 0
	movw	r3, #:lower16:current_syscall_error
.LVL3549:
	mov	r2, #7
.LVL3550:
	movt	r3, #:upper16:current_syscall_error
	.loc 53 42 0
	mov	r4, #3
	.loc 53 41 0
	str	r2, [r3, #24]
	.loc 53 42 0
	b	.L3195
.LVL3551:
.L3212:
	.loc 53 53 0
	ldr	r3, [r2, #68]
.LVL3552:
.LBB12228:
.LBB12221:
	.loc 57 27 0
	movw	lr, #:lower16:current_syscall_error
.LBE12221:
.LBE12228:
	.loc 53 53 0
	add	r1, r2, #528
.LVL3553:
.LBB12229:
.LBB12222:
	.loc 57 27 0
	movt	lr, #:upper16:current_syscall_error
	mov	r5, #4
.LVL3554:
.LBE12222:
.LBE12229:
	.loc 53 53 0
	str	r2, [sp]
.LVL3555:
.LBB12230:
.LBB12223:
	.loc 57 29 0
	mov	r4, #232
.LBE12223:
.LBE12230:
	.loc 53 53 0
	movw	r0, #:lower16:.LC14
.LVL3556:
	str	r1, [sp, #4]
	ldr	r2, .L3215
.LBB12231:
.LBB12224:
	.loc 57 28 0
	str	ip, [lr, #8]
.LBE12224:
.LBE12231:
	.loc 53 53 0
	mov	r1, ip
	str	r3, [sp, #8]
	movt	r0, #:upper16:.LC14
	mov	r3, #53
.LBB12232:
.LBB12225:
	.loc 57 29 0
	str	r4, [lr, #12]
.LVL3557:
	.loc 57 30 0
	mov	r4, #3
	.loc 57 27 0
	str	r5, [lr, #24]
.LBE12225:
.LBE12232:
	.loc 53 53 0
	bl	kprintf
.LVL3558:
	movw	r0, #:lower16:.LC216
	mov	r1, r8
	movt	r0, #:upper16:.LC216
	bl	kprintf
.LVL3559:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3560:
	.loc 53 54 0
	b	.L3195
.LVL3561:
.L3213:
	.loc 53 49 0
	ldm	r3, {r0, r3}
.LVL3562:
.LBB12233:
.LBB12234:
	.loc 45 128 0
	mov	r1, r10
.LBE12234:
.LBE12233:
.LBB12236:
.LBB12237:
.LBB12238:
.LBB12239:
	.loc 10 36 0
	ldr	lr, [r2, #12]
.LBE12239:
.LBE12238:
.LBE12237:
.LBE12236:
.LBB12240:
.LBB12241:
.LBB12242:
.LBB12243:
	ldr	ip, [r2, #16]
	str	r0, [sp, #24]
.LVL3563:
.LBE12243:
.LBE12242:
.LBE12241:
.LBE12240:
.LBB12244:
.LBB12235:
	.loc 45 128 0
	add	r0, sp, #16
	str	r3, [sp, #28]
.LVL3564:
	add	r3, sp, #32
	ldmdb	r3, {r2, r3}
.LVL3565:
	str	lr, [sp]
.LVL3566:
	str	ip, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL3567:
	ldr	r4, [sp, #16]
.LVL3568:
.LBE12235:
.LBE12244:
	.loc 53 64 0
	cmp	r4, #0
	bne	.L3214
	.loc 53 69 0
	ldr	r4, [sp, #20]
.LVL3569:
	ldr	r3, [r4]
.LVL3570:
.LBB12245:
.LBB12246:
.LBB12247:
.LBB12248:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL3571:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE12248:
.LBE12247:
	.loc 52 876 0
	cmp	r3, #0
	beq	.L3203
.LBE12246:
.LBE12245:
	.loc 53 73 0
	ldr	ip, [r7]
.LBB12252:
.LBB12249:
	.loc 52 877 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #8
	movt	r3, #:upper16:current_syscall_error
.LBE12249:
.LBE12252:
	.loc 53 73 0
	movw	r0, #:lower16:.LC14
	ldr	r2, .L3215
	movt	r0, #:upper16:.LC14
.LBB12253:
.LBB12250:
	.loc 52 877 0
	str	r1, [r3, #24]
.LVL3572:
.LBE12250:
.LBE12253:
	.loc 53 73 0
	mov	r3, #74
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL3573:
	str	ip, [sp]
	stmib	sp, {r4, lr}
.LBB12254:
.LBB12251:
	.loc 52 878 0
	mov	r4, #3
.LBE12251:
.LBE12254:
	.loc 53 73 0
	bl	kprintf
.LVL3574:
	movw	r0, #:lower16:.LC219
	mov	r2, r8
	ldr	r1, [r6, #488]
	movt	r0, #:upper16:.LC219
	bl	kprintf
.LVL3575:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3576:
	.loc 53 75 0
	b	.L3195
.LVL3577:
.L3203:
	.loc 53 78 0
	ldr	r0, [r7]
	mov	r1, #2
	bl	setThreadState
.LVL3578:
	.loc 53 79 0
	uxth	r0, r9
	mov	r2, r5
	mov	r1, r4
.LBE12214:
	.loc 53 83 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL3579:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
	ldr	lr, [sp, #28]
	.cfi_restore 14
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB12255:
	.loc 53 79 0
	b	invokeIRQControl
.LVL3580:
.L3214:
	.cfi_restore_state
	.loc 53 65 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r1, r10
	mov	r3, #66
	ldr	r2, .L3215
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	str	ip, [sp]
	add	ip, ip, #528
	str	ip, [sp, #4]
	str	lr, [sp, #8]
	bl	kprintf
.LVL3581:
	movw	r0, #:lower16:.LC218
	mov	r2, r8
	ldr	r1, [r6, #488]
	movt	r0, #:upper16:.LC218
	bl	kprintf
.LVL3582:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL3583:
	.loc 53 67 0
	b	.L3195
.L3216:
	.align	2
.L3215:
	.word	.LANCHOR5-3792
.LBE12255:
	.cfi_endproc
.LFE777:
	.size	decodeIRQControlInvocation, .-decodeIRQControlInvocation
	.align	2
	.global	invokeIRQHandler_AckIRQ
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeIRQHandler_AckIRQ, %function
invokeIRQHandler_AckIRQ:
.LFB780:
	.loc 53 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3584:
.LBB12256:
.LBB12257:
.LBB12258:
	.loc 7 158 0
	lsr	r1, r0, #5
.LVL3585:
	.loc 7 160 0
	movw	r3, #16895
	.loc 7 159 0
	and	r0, r0, #31
.LVL3586:
	.loc 7 160 0
	mov	r2, #1
	lsl	r1, r1, #2
.LVL3587:
	movt	r3, 65520
	add	r3, r1, r3
	lsl	r0, r2, r0
	str	r0, [r3, #-255]
.LVL3588:
.LBE12258:
.LBE12257:
.LBE12256:
	.loc 53 148 0
	bx	lr
	.cfi_endproc
.LFE780:
	.size	invokeIRQHandler_AckIRQ, .-invokeIRQHandler_AckIRQ
	.align	2
	.global	deletedIRQHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	deletedIRQHandler, %function
deletedIRQHandler:
.LFB784:
	.loc 53 183 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3589:
.LBB12269:
.LBB12270:
.LBB12271:
.LBB12272:
.LBB12273:
.LBB12274:
	.loc 7 149 0
	lsr	ip, r0, #5
.LBE12274:
.LBE12273:
.LBE12272:
.LBE12271:
.LBE12270:
.LBE12269:
	.loc 53 183 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB12292:
.LBB12291:
.LBB12287:
.LBB12283:
.LBB12279:
.LBB12275:
	.loc 7 152 0
	movw	r3, #17023
	.loc 7 150 0
	and	lr, r0, #31
	.loc 7 152 0
	mov	r2, #1
	lsl	ip, ip, #2
	lsl	r2, r2, lr
.LBE12275:
.LBE12279:
.LBE12283:
.LBE12287:
	.loc 53 266 0
	movw	r1, #:lower16:intStateIRQTable
.LBB12288:
.LBB12284:
.LBB12280:
.LBB12276:
	.loc 7 152 0
	movt	r3, 65520
.LBE12276:
.LBE12280:
.LBE12284:
.LBE12288:
	.loc 53 266 0
	movt	r1, #:upper16:intStateIRQTable
	mov	lr, #0
.LBB12289:
.LBB12285:
.LBB12281:
.LBB12277:
	.loc 7 152 0
	add	r3, ip, r3
.LBE12277:
.LBE12281:
.LBE12285:
.LBE12289:
	.loc 53 266 0
	str	lr, [r1, r0, lsl #2]
.LVL3590:
.LBB12290:
.LBB12286:
.LBB12282:
.LBB12278:
	.loc 7 152 0
	str	r2, [r3, #-255]
.LVL3591:
.LBE12278:
.LBE12282:
.LBE12286:
.LBE12290:
.LBE12291:
.LBE12292:
	.loc 53 185 0
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE784:
	.size	deletedIRQHandler, .-deletedIRQHandler
	.align	2
	.global	isIRQActive
	.syntax unified
	.arm
	.fpu softvfp
	.type	isIRQActive, %function
isIRQActive:
.LFB786:
	.loc 53 259 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3592:
	.loc 53 260 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
	ldr	r0, [r3, r0, lsl #2]
.LVL3593:
	.loc 53 261 0
	adds	r0, r0, #0
	movne	r0, #1
	bx	lr
	.cfi_endproc
.LFE786:
	.size	isIRQActive, .-isIRQActive
	.align	2
	.global	setIRQState
	.syntax unified
	.arm
	.fpu softvfp
	.type	setIRQState, %function
setIRQState:
.LFB787:
	.loc 53 265 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3594:
	.loc 53 266 0
	movw	r3, #:lower16:intStateIRQTable
.LBB12303:
.LBB12304:
	.loc 7 194 0
	cmp	r0, #0
.LBE12304:
.LBE12303:
	.loc 53 266 0
	movt	r3, #:upper16:intStateIRQTable
.LBB12314:
.LBB12312:
.LBB12305:
.LBB12306:
	.loc 7 160 0
	mov	r2, #1
.LBE12306:
.LBE12305:
.LBE12312:
.LBE12314:
	.loc 53 266 0
	str	r0, [r3, r1, lsl #2]
.LVL3595:
.LBB12315:
.LBB12313:
.LBB12308:
.LBB12309:
.LBB12310:
	.loc 7 149 0
	lsr	r0, r1, #5
.LVL3596:
	.loc 7 152 0
	movweq	r3, #17023
.LVL3597:
	.loc 7 150 0
	and	r1, r1, #31
.LVL3598:
.LBE12310:
.LBE12309:
.LBE12308:
.LBB12311:
.LBB12307:
	.loc 7 160 0
	movwne	r3, #16895
	lsl	r0, r0, #2
.LVL3599:
	movt	r3, 65520
	add	r3, r0, r3
	lsl	r1, r2, r1
.LVL3600:
	str	r1, [r3, #-255]
.LVL3601:
.LBE12307:
.LBE12311:
.LBE12313:
.LBE12315:
	.loc 53 268 0
	bx	lr
	.cfi_endproc
.LFE787:
	.size	setIRQState, .-setIRQState
	.align	2
	.global	receiveSignal
	.syntax unified
	.arm
	.fpu softvfp
	.type	receiveSignal, %function
receiveSignal:
.LFB792:
	.loc 35 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3602:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 35 125 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldr	r4, [sp]
.LVL3603:
.LBB12348:
.LBB12349:
	.loc 36 1277 0
	and	r2, r4, #15
	cmp	r2, #6
	bne	.L3237
	.loc 36 1280 0
	bic	r4, r4, #15
.LVL3604:
	mov	r5, r0
	ldr	r2, [r4]
.LVL3605:
.LBE12349:
.LBE12348:
.LBB12351:
.LBB12352:
	.loc 36 227 0
	and	r1, r2, #3
.LBE12352:
.LBE12351:
	.loc 35 130 0
	cmp	r1, #1
	bls	.L3228
	cmp	r1, #2
	bne	.L3225
.LVL3606:
.LBB12353:
.LBB12354:
	.loc 10 30 0
	ldr	r3, [r4, #8]
.LVL3607:
.LBE12354:
.LBE12353:
.LBB12356:
.LBB12357:
	.loc 36 239 0
	bic	r2, r2, #3
.LBE12357:
.LBE12356:
.LBB12359:
.LBB12355:
	.loc 10 30 0
	str	r3, [r0]
.LVL3608:
.LBE12355:
.LBE12359:
.LBB12360:
.LBB12358:
	.loc 36 240 0
	str	r2, [r4]
.LVL3609:
.L3225:
.LBE12358:
.LBE12360:
	.loc 35 163 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3610:
.L3228:
	.cfi_restore_state
.LBB12361:
	.loc 35 135 0
	cmp	r3, #0
	beq	.L3230
.LVL3611:
.LBB12362:
.LBB12363:
	.loc 28 428 0
	movw	r3, #:lower16:ksCurThread
.LVL3612:
.LBE12363:
.LBE12362:
.LBB12367:
.LBB12368:
	.loc 36 110 0
	orr	r2, r4, #6
.LBE12368:
.LBE12367:
.LBB12370:
.LBB12364:
	.loc 28 428 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE12364:
.LBE12370:
.LBB12371:
.LBB12369:
	.loc 36 110 0
	str	r2, [r0, #448]
.LVL3613:
.LBE12369:
.LBE12371:
.LBB12372:
.LBB12365:
	.loc 28 428 0
	cmp	r0, r3
	beq	.L3238
.LVL3614:
.L3231:
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
.LVL3615:
.LBE12365:
.LBE12372:
.LBB12373:
.LBB12374:
.LBB12375:
.LBB12376:
	.loc 36 208 0
	bic	ip, r3, #15
.LVL3616:
.LBE12376:
.LBE12375:
.LBE12374:
.LBE12373:
.LBB12377:
.LBB12378:
	.loc 36 239 0
	bic	r1, r3, #3
.LBE12378:
.LBE12377:
.LBB12381:
.LBB12382:
	.loc 27 211 0
	bics	r0, r2, #15
.LVL3617:
.LBE12382:
.LBE12381:
.LBB12385:
.LBB12379:
	.loc 36 240 0
	orr	r1, r1, #1
.LBE12379:
.LBE12385:
.LBB12386:
.LBB12383:
	.loc 27 211 0
	moveq	r0, r5
.LVL3618:
	.loc 27 214 0
	strne	r5, [ip, #512]
.LBE12383:
.LBE12386:
.LBB12387:
.LBB12388:
.LBB12389:
.LBB12390:
	.loc 36 200 0
	tst	r0, #15
.LBE12390:
.LBE12389:
.LBE12388:
.LBE12387:
.LBB12405:
.LBB12384:
	.loc 27 216 0
	str	ip, [r5, #516]
	.loc 27 217 0
	mov	ip, #0
.LVL3619:
	str	ip, [r5, #512]
.LVL3620:
.LBE12384:
.LBE12405:
.LBB12406:
.LBB12380:
	.loc 36 240 0
	str	r1, [r4]
.LVL3621:
.LBE12380:
.LBE12406:
.LBB12407:
.LBB12403:
.LBB12394:
.LBB12391:
	.loc 36 200 0
	bne	.L3239
	.loc 36 201 0
	and	r2, r2, #15
.LVL3622:
	.loc 36 202 0
	bic	r0, r0, #15
.LVL3623:
	orr	r2, r2, r0
.LBE12391:
.LBE12394:
.LBB12395:
.LBB12396:
	.loc 36 219 0
	tst	r5, #15
.LBE12396:
.LBE12395:
.LBB12399:
.LBB12392:
	.loc 36 202 0
	str	r2, [r4, #4]
.LVL3624:
.LBE12392:
.LBE12399:
.LBB12400:
.LBB12397:
	.loc 36 219 0
	bne	.L3240
	.loc 36 221 0
	and	r3, r3, #12
	bic	r5, r5, #15
.LVL3625:
	orr	r3, r3, r5
	orr	r3, r3, #1
	str	r3, [r4]
.LVL3626:
	b	.L3225
.LVL3627:
.L3230:
.LBE12397:
.LBE12400:
.LBE12403:
.LBE12407:
.LBB12408:
.LBB12409:
.LBB12410:
	.loc 10 30 0
	str	r3, [r0]
.LVL3628:
	b	.L3225
.LVL3629:
.L3238:
.LBE12410:
.LBE12409:
.LBE12408:
.LBB12411:
.LBB12366:
	.loc 28 429 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 428 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3231
	bl	scheduleTCB.part.281
.LVL3630:
	b	.L3231
.LVL3631:
.L3237:
.LBE12366:
.LBE12411:
.LBE12361:
.LBB12413:
.LBB12350:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL3632:
.L3239:
.LBE12350:
.LBE12413:
.LBB12414:
.LBB12412:
.LBB12404:
.LBB12401:
.LBB12393:
	bl	notification_ptr_set_ntfnQueue_head.isra.265.part.266
.LVL3633:
.L3240:
.LBE12393:
.LBE12401:
.LBB12402:
.LBB12398:
	bl	notification_ptr_set_ntfnQueue_tail.isra.267.part.268
.LVL3634:
.LBE12398:
.LBE12402:
.LBE12404:
.LBE12412:
.LBE12414:
	.cfi_endproc
.LFE792:
	.size	receiveSignal, .-receiveSignal
	.align	2
	.global	cancelAllSignals
	.syntax unified
	.arm
	.fpu softvfp
	.type	cancelAllSignals, %function
cancelAllSignals:
.LFB793:
	.loc 35 167 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3635:
	ldr	r3, [r0]
.LVL3636:
.LBB12415:
.LBB12416:
	.loc 36 227 0
	and	r2, r3, #3
.LBE12416:
.LBE12415:
	.loc 35 168 0
	cmp	r2, #1
	bxne	lr
	.loc 35 167 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, [r0, #4]
.LVL3637:
.LBB12417:
.LBB12418:
.LBB12419:
	.loc 36 220 0
	and	r3, r3, #12
.LBE12419:
.LBE12418:
.LBE12417:
	.loc 35 167 0
	str	lr, [sp, #4]
.LBB12430:
.LBB12421:
.LBB12420:
	.loc 36 221 0
	str	r3, [r0]
.LBE12420:
.LBE12421:
.LBB12422:
.LBB12423:
	.loc 36 201 0
	and	r3, r4, #15
.LBE12423:
.LBE12422:
	.loc 35 176 0
	bics	r4, r4, #15
.LVL3638:
.LBB12425:
.LBB12424:
	.loc 36 202 0
	str	r3, [r0, #4]
.LVL3639:
.LBE12424:
.LBE12425:
	.loc 35 176 0
	bne	.L3245
	b	.L3246
.LVL3640:
.L3244:
	.loc 35 176 0 is_stmt 0 discriminator 2
	ldr	r4, [r4, #512]
.LVL3641:
	cmp	r4, #0
	beq	.L3246
.LVL3642:
.L3245:
	.loc 35 177 0 is_stmt 1 discriminator 2
	mov	r1, #2
	mov	r0, r4
	bl	setThreadState
.LVL3643:
.LBB12426:
.LBB12427:
.LBB12428:
.LBB12429:
	.loc 36 78 0 discriminator 2
	ldr	r3, [r4, #452]
.LBE12429:
.LBE12428:
	.loc 27 80 0 discriminator 2
	tst	r3, #1
	bne	.L3244
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL3644:
.LBE12427:
.LBE12426:
	.loc 35 176 0
	ldr	r4, [r4, #512]
.LVL3645:
	cmp	r4, #0
	bne	.L3245
.LVL3646:
.L3246:
.LBE12430:
	.loc 35 182 0
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB12431:
	.loc 35 180 0
	b	rescheduleRequired
.LVL3647:
.LBE12431:
	.cfi_endproc
.LFE793:
	.size	cancelAllSignals, .-cancelAllSignals
	.align	2
	.global	cancelSignal
	.syntax unified
	.arm
	.fpu softvfp
	.type	cancelSignal, %function
cancelSignal:
.LFB794:
	.loc 35 186 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3648:
	ldr	r3, [r1]
.LVL3649:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB12464:
.LBB12465:
	.loc 36 227 0
	and	r2, r3, #3
.LBE12465:
.LBE12464:
	.loc 35 190 0
	cmp	r2, #1
	bne	.L3263
.LVL3650:
.LBB12466:
.LBB12467:
	.loc 27 227 0
	ldr	ip, [r0, #516]
.LBE12467:
.LBE12466:
.LBB12471:
.LBB12472:
.LBB12473:
.LBB12474:
	.loc 36 208 0
	bic	lr, r3, #15
	ldr	r2, [r1, #4]
.LVL3651:
.LBE12474:
.LBE12473:
.LBE12472:
.LBE12471:
.LBB12478:
.LBB12468:
	.loc 27 227 0
	cmp	ip, #0
.LBE12468:
.LBE12478:
.LBB12479:
.LBB12477:
.LBB12475:
.LBB12476:
	.loc 36 189 0
	bic	r4, r2, #15
.LVL3652:
.LBE12476:
.LBE12475:
.LBE12477:
.LBE12479:
.LBB12480:
.LBB12469:
	.loc 27 227 0
	beq	.L3253
	.loc 27 228 0
	ldr	r5, [r0, #512]
	str	r5, [ip, #512]
	ldr	r5, [r0, #512]
.LVL3653:
.L3254:
	.loc 27 233 0
	cmp	r5, #0
	.loc 27 227 0
	moveq	lr, ip
.LVL3654:
	.loc 27 234 0
	strne	ip, [r5, #516]
.LBE12469:
.LBE12480:
.LBB12481:
.LBB12482:
.LBB12483:
.LBB12484:
	.loc 36 200 0
	tst	r4, #15
	bne	.L3264
	.loc 36 201 0
	and	ip, r2, #15
	.loc 36 202 0
	bic	r2, r4, #15
.LVL3655:
	orr	r2, ip, r2
.LBE12484:
.LBE12483:
.LBB12487:
.LBB12488:
	.loc 36 219 0
	tst	lr, #15
.LBE12488:
.LBE12487:
.LBB12492:
.LBB12485:
	.loc 36 202 0
	str	r2, [r1, #4]
.LVL3656:
.LBE12485:
.LBE12492:
.LBB12493:
.LBB12489:
	.loc 36 219 0
	bne	.L3265
	.loc 36 221 0
	bic	lr, lr, #15
.LVL3657:
	.loc 36 220 0
	and	r3, r3, #15
.LVL3658:
.LBE12489:
.LBE12493:
.LBE12482:
.LBE12481:
	.loc 35 204 0
	ldr	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 6
.LBB12500:
.LBB12497:
.LBB12494:
.LBB12490:
	.loc 36 221 0
	orr	r3, r3, lr
.LVL3659:
.LBE12490:
.LBE12494:
.LBE12497:
.LBE12500:
	.loc 35 198 0
	cmp	r4, #0
	.loc 35 204 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL3660:
.LBB12501:
.LBB12502:
	.loc 36 239 0
	biceq	r3, r3, #3
.LBE12502:
.LBE12501:
	.loc 35 204 0
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
.LBB12504:
.LBB12503:
	.loc 36 240 0
	str	r3, [r1]
.LVL3661:
.LBE12503:
.LBE12504:
	.loc 35 203 0
	mov	r1, #0
.LVL3662:
	b	setThreadState
.LVL3663:
.L3253:
	.cfi_restore_state
.LBB12505:
.LBB12470:
	.loc 27 230 0
	ldr	r4, [r0, #512]
.LVL3664:
	mov	r5, r4
	b	.L3254
.LVL3665:
.L3264:
.LBE12470:
.LBE12505:
.LBB12506:
.LBB12498:
.LBB12495:
.LBB12486:
	bl	notification_ptr_set_ntfnQueue_head.isra.265.part.266
.LVL3666:
.L3263:
.LBE12486:
.LBE12495:
.LBE12498:
.LBE12506:
.LBB12507:
.LBB12508:
	.loc 35 190 0
	movw	r1, #:lower16:.LC34
.LVL3667:
	movw	r0, #:lower16:.LC220
.LVL3668:
	ldr	r3, .L3266
	movt	r1, #:upper16:.LC34
	movt	r0, #:upper16:.LC220
	mov	r2, #190
	bl	_assert_fail
.LVL3669:
.L3265:
.LBE12508:
.LBE12507:
.LBB12509:
.LBB12499:
.LBB12496:
.LBB12491:
	bl	notification_ptr_set_ntfnQueue_tail.isra.267.part.268
.LVL3670:
.L3267:
	.align	2
.L3266:
	.word	.LANCHOR5-3764
.LBE12491:
.LBE12496:
.LBE12499:
.LBE12509:
	.cfi_endproc
.LFE794:
	.size	cancelSignal, .-cancelSignal
	.align	2
	.global	completeSignal
	.syntax unified
	.arm
	.fpu softvfp
	.type	completeSignal, %function
completeSignal:
.LFB795:
	.loc 35 208 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3671:
	.loc 35 211 0
	cmp	r1, #0
	beq	.L3269
	ldr	r3, [r0]
.LVL3672:
.LBB12510:
.LBB12511:
	.loc 36 227 0 discriminator 1
	and	r2, r3, #3
.LBE12511:
.LBE12510:
	.loc 35 211 0 discriminator 1
	cmp	r2, #2
	bne	.L3269
.LVL3673:
.LBB12512:
.LBB12513:
	.loc 10 30 0
	ldr	r2, [r0, #8]
.LBE12513:
.LBE12512:
.LBB12515:
.LBB12516:
	.loc 36 239 0
	bic	r3, r3, #3
.LBE12516:
.LBE12515:
.LBB12518:
.LBB12514:
	.loc 10 30 0
	str	r2, [r1]
.LVL3674:
.LBE12514:
.LBE12518:
.LBB12519:
.LBB12517:
	.loc 36 240 0
	str	r3, [r0]
.LVL3675:
	bx	lr
.LVL3676:
.L3269:
.LBE12517:
.LBE12519:
	.loc 35 208 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	bl	completeSignal.part.271
.LVL3677:
	.cfi_endproc
.LFE795:
	.size	completeSignal, .-completeSignal
	.align	2
	.global	unbindMaybeNotification
	.syntax unified
	.arm
	.fpu softvfp
	.type	unbindMaybeNotification, %function
unbindMaybeNotification:
.LFB797:
	.loc 35 229 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3678:
	ldr	r3, [r0, #12]
.LVL3679:
	.loc 35 233 0
	bics	r2, r3, #15
.LVL3680:
	beq	.L3276
.LVL3681:
.LBB12520:
.LBB12521:
.LBB12522:
.LBB12523:
	.loc 36 163 0
	and	r3, r3, #15
.LBE12523:
.LBE12522:
	.loc 35 224 0
	mov	r1, #0
.LBB12525:
.LBB12524:
	.loc 36 164 0
	str	r3, [r0, #12]
.LVL3682:
.LBE12524:
.LBE12525:
	.loc 35 224 0
	str	r1, [r2, #460]
.LVL3683:
.L3276:
.LBE12521:
.LBE12520:
	.loc 35 236 0
	bx	lr
	.cfi_endproc
.LFE797:
	.size	unbindMaybeNotification, .-unbindMaybeNotification
	.align	2
	.global	unbindNotification
	.syntax unified
	.arm
	.fpu softvfp
	.type	unbindNotification, %function
unbindNotification:
.LFB798:
	.loc 35 240 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3684:
	.loc 35 242 0
	ldr	r3, [r0, #460]
.LVL3685:
	.loc 35 244 0
	cmp	r3, #0
	beq	.L3281
.LVL3686:
.LBB12526:
.LBB12527:
.LBB12528:
.LBB12529:
	.loc 36 163 0
	ldr	r2, [r3, #12]
.LBE12529:
.LBE12528:
	.loc 35 224 0
	mov	r1, #0
.LBB12531:
.LBB12530:
	.loc 36 163 0
	and	r2, r2, #15
	.loc 36 164 0
	str	r2, [r3, #12]
.LVL3687:
.LBE12530:
.LBE12531:
	.loc 35 224 0
	str	r1, [r0, #460]
.LVL3688:
.L3281:
.LBE12527:
.LBE12526:
	.loc 35 247 0
	bx	lr
	.cfi_endproc
.LFE798:
	.size	unbindNotification, .-unbindNotification
	.align	2
	.global	bindNotification
	.syntax unified
	.arm
	.fpu softvfp
	.type	bindNotification, %function
bindNotification:
.LFB799:
	.loc 35 251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3689:
.LBB12532:
.LBB12533:
	.loc 36 162 0
	tst	r0, #15
	bne	.L3291
	.loc 36 163 0
	ldr	r3, [r1, #12]
	.loc 36 164 0
	bic	r2, r0, #15
	.loc 36 163 0
	and	r3, r3, #15
	.loc 36 164 0
	orr	r3, r3, r2
	str	r3, [r1, #12]
.LVL3690:
.LBE12533:
.LBE12532:
	.loc 35 253 0
	str	r1, [r0, #460]
	bx	lr
.LVL3691:
.L3291:
	.loc 35 251 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB12535:
.LBB12534:
	bl	notification_ptr_set_ntfnBoundTCB.isra.272.part.273
.LVL3692:
.LBE12534:
.LBE12535:
	.cfi_endproc
.LFE799:
	.size	bindNotification, .-bindNotification
	.align	2
	.global	getObjectSize
	.syntax unified
	.arm
	.fpu softvfp
	.type	getObjectSize, %function
getObjectSize:
.LFB800:
	.file 58 "/home/sel4/work/work2/kernel/src/object/objecttype.c"
	.loc 58 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3693:
	.loc 58 35 0
	cmp	r0, #4
	bhi	.L3300
	.loc 58 38 0
	sub	r3, r0, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L3294
.L3296:
	.word	.L3299
	.word	.L3297
	.word	.L3297
	.word	.L3298
.L3297:
	.loc 58 42 0
	mov	r0, #4
.LVL3694:
	.loc 58 54 0
	bx	lr
.LVL3695:
.L3300:
	.loc 58 36 0
	b	Arch_getObjectSize
.LVL3696:
.L3299:
	.loc 58 40 0
	mov	r0, #10
.LVL3697:
	.loc 58 54 0
	bx	lr
.LVL3698:
.L3294:
	.loc 58 48 0
	mov	r0, r1
.LVL3699:
	.loc 58 54 0
	bx	lr
.LVL3700:
.L3298:
	.loc 58 46 0
	add	r0, r1, #4
.LVL3701:
	.loc 58 54 0
	bx	lr
	.cfi_endproc
.LFE800:
	.size	getObjectSize, .-getObjectSize
	.align	2
	.global	hasCancelSendRights
	.syntax unified
	.arm
	.fpu softvfp
	.type	hasCancelSendRights, %function
hasCancelSendRights:
.LFB803:
	.loc 58 208 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 58 208 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
.LVL3702:
.LBB12538:
.LBB12539:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
	.loc 36 904 0
	andne	r2, r3, #15
.LBE12539:
.LBE12538:
	.loc 58 209 0
	cmp	r2, #4
	bne	.L3310
.LVL3703:
.LBB12540:
.LBB12541:
	.loc 36 1125 0
	and	r3, r3, #15
	ldr	r0, [sp, #4]
.LVL3704:
	cmp	r3, #4
	bne	.L3312
.LVL3705:
.LBE12541:
.LBE12540:
	.loc 58 211 0
	and	r3, r0, #3
	cmp	r3, #3
	ubfxeq	r0, r0, #2, #1
.LVL3706:
	beq	.L3301
.LVL3707:
.L3310:
	.loc 58 216 0
	mov	r0, #0
.L3301:
	.loc 58 218 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL3708:
.L3312:
	.cfi_restore_state
.LBB12543:
.LBB12542:
	bl	cap_endpoint_cap_get_capCanSend.part.104
.LVL3709:
.LBE12542:
.LBE12543:
	.cfi_endproc
.LFE803:
	.size	hasCancelSendRights, .-hasCancelSendRights
	.align	2
	.global	sameRegionAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	sameRegionAs, %function
sameRegionAs:
.LFB804:
	.loc 58 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r5, r3
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 58 222 0
	add	ip, sp, #8
	mov	lr, sp
	stm	sp, {r2, r3}
.LBB12672:
.LBB12673:
	.loc 36 903 0
	and	r3, r0, #14
.LBE12673:
.LBE12672:
	.loc 58 222 0
	stm	ip, {r0, r1}
.LBB12675:
.LBB12674:
	.loc 36 903 0
	cmp	r3, #14
	mov	r1, r0
	.loc 36 905 0
	uxtbeq	r0, r1
	.loc 36 904 0
	andne	r0, r0, #15
	ldr	r4, [sp, #12]
.LVL3710:
.LBE12674:
.LBE12675:
	.loc 58 223 0
	sub	r3, r0, #2
	cmp	r3, #60
	ldrls	pc, [pc, r3, asl #2]
	b	.L3316
.L3318:
	.word	.L3317
	.word	.L3316
	.word	.L3319
	.word	.L3316
	.word	.L3320
	.word	.L3316
	.word	.L3321
	.word	.L3316
	.word	.L3322
	.word	.L3316
	.word	.L3323
	.word	.L3316
	.word	.L3324
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3325
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3316
	.word	.L3326
.L3326:
.LVL3711:
.LBB12676:
.LBB12677:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	beq	.L3450
.LVL3712:
.L3434:
.LBE12677:
.LBE12676:
	.loc 58 303 0
	mov	r0, #0
.L3313:
	.loc 58 304 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3713:
.L3317:
	.cfi_restore_state
.LBB12679:
.LBB12680:
.LBB12681:
.LBB12682:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	beq	.L3327
	.loc 36 904 0
	and	lr, r2, #15
.LBE12682:
.LBE12681:
	.loc 39 344 0
	sub	r0, lr, #2
	cmp	r0, #12
	ldrls	pc, [pc, r0, asl #2]
	b	.L3328
.L3330:
	.word	.L3329
	.word	.L3328
	.word	.L3329
	.word	.L3328
	.word	.L3329
	.word	.L3328
	.word	.L3434
	.word	.L3328
	.word	.L3329
	.word	.L3328
	.word	.L3329
	.word	.L3328
	.word	.L3434
.L3319:
.LVL3714:
.LBE12680:
.LBE12679:
.LBB12686:
.LBB12687:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE12687:
.LBE12686:
	.loc 58 239 0
	cmp	r3, #4
	bne	.L3434
.LVL3715:
.LBB12688:
.LBB12689:
	.loc 36 1059 0
	and	r1, r1, #15
.LVL3716:
	cmp	r1, #4
	bne	.L3393
.LBE12689:
.LBE12688:
.LBB12691:
.LBB12692:
	and	r0, r2, #15
.LBE12692:
.LBE12691:
.LBB12694:
.LBB12690:
	.loc 36 1062 0
	bic	r4, r4, #15
.LVL3717:
.LBE12690:
.LBE12694:
.LBB12695:
.LBB12693:
	.loc 36 1059 0
	cmp	r0, #4
	bne	.L3393
	.loc 36 1062 0
	bic	r0, r5, #15
.LBE12693:
.LBE12695:
	.loc 58 240 0
	sub	r0, r0, r4
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3718:
.L3322:
.LBB12696:
.LBB12697:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE12697:
.LBE12696:
	.loc 58 253 0
	cmp	r3, #10
	bne	.L3434
.LVL3719:
.LBB12698:
.LBB12699:
	.loc 36 1439 0
	and	r3, r1, #15
	cmp	r3, #10
	bne	.L3399
.LBE12699:
.LBE12698:
.LBB12701:
.LBB12702:
	and	r3, r2, #15
.LBE12702:
.LBE12701:
.LBB12704:
.LBB12700:
	.loc 36 1442 0
	bic	r1, r1, #31
.LVL3720:
.LBE12700:
.LBE12704:
.LBB12705:
.LBB12703:
	.loc 36 1439 0
	cmp	r3, #10
	bne	.L3399
	.loc 36 1442 0
	bic	r0, r2, #31
.LBE12703:
.LBE12705:
	.loc 58 255 0
	cmp	r0, r1
	bne	.L3434
.LVL3721:
.LBB12706:
.LBB12707:
	.loc 36 1402 0 discriminator 1
	ubfx	r0, r5, #18, #5
.LBE12707:
.LBE12706:
.LBB12708:
.LBB12709:
	ubfx	r4, r4, #18, #5
.LBE12709:
.LBE12708:
	.loc 58 255 0 discriminator 1
	sub	r0, r0, r4
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3722:
.L3323:
.LBB12710:
.LBB12711:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE12711:
.LBE12710:
	.loc 58 262 0
	cmp	r3, #12
	bne	.L3434
.LVL3723:
.LBB12712:
.LBB12713:
	.loc 36 1469 0
	and	r3, r1, #15
	cmp	r3, #12
	bne	.L3403
.LBE12713:
.LBE12712:
.LBB12715:
.LBB12716:
	and	r3, r2, #15
.LBE12716:
.LBE12715:
.LBB12719:
.LBB12714:
	.loc 36 1472 0
	bic	r1, r1, #15
.LVL3724:
.LBE12714:
.LBE12719:
.LBB12720:
.LBB12717:
	.loc 36 1469 0
	cmp	r3, #12
	beq	.L3449
.LVL3725:
.L3403:
.LBE12717:
.LBE12720:
.LBB12721:
.LBB12722:
.LBB12723:
.LBB12724:
.LBB12725:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL3726:
.L3324:
.LBE12725:
.LBE12724:
.LBE12723:
.LBE12722:
.LBE12721:
.LBB12891:
.LBB12892:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r0, r2
	.loc 36 904 0
	andne	r0, r2, #15
.LBE12892:
.LBE12891:
	.loc 58 282 0
	bic	r0, r0, #16
	sub	r0, r0, #14
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.L3325:
.LVL3727:
.LBB12893:
.LBB12894:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	bne	.L3434
	.loc 36 905 0
	uxtb	r0, r2
.LBE12894:
.LBE12893:
	.loc 58 289 0
	cmp	r0, #30
	bne	.L3434
.LVL3728:
.LBB12895:
.LBB12896:
	.loc 36 2120 0
	uxtb	r1, r1
.LVL3729:
	cmp	r1, #30
	bne	.L3451
.LVL3730:
.LBE12896:
.LBE12895:
	.loc 58 290 0
	uxtb	r0, r4
	uxtb	r5, r5
	sub	r0, r0, r5
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3731:
.L3320:
.LBB12898:
.LBB12899:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE12899:
.LBE12898:
	.loc 58 246 0
	cmp	r3, #6
	bne	.L3434
.LVL3732:
.LBB12900:
.LBB12901:
	.loc 36 1277 0
	and	r3, r1, #15
	cmp	r3, #6
	bne	.L3396
.LBE12901:
.LBE12900:
.LBB12903:
.LBB12904:
	and	r3, r2, #15
.LBE12904:
.LBE12903:
.LBB12906:
.LBB12902:
	.loc 36 1280 0
	bic	r1, r1, #15
.LVL3733:
.LBE12902:
.LBE12906:
.LBB12907:
.LBB12905:
	.loc 36 1277 0
	cmp	r3, #6
	bne	.L3396
.L3449:
.LBE12905:
.LBE12907:
.LBB12908:
.LBB12718:
	.loc 36 1472 0
	bic	r0, r2, #15
.LBE12718:
.LBE12908:
	.loc 58 263 0
	sub	r0, r0, r1
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3734:
.L3321:
.LBB12909:
.LBB12910:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE12910:
.LBE12909:
	.loc 58 269 0
	cmp	r3, #8
	bne	.L3434
.LVL3735:
.LBB12911:
.LBB12912:
	.loc 36 1323 0
	and	r3, r1, #15
	cmp	r3, #8
	bne	.L3407
.LBE12912:
.LBE12911:
.LBB12915:
.LBB12916:
	and	r3, r2, #15
.LBE12916:
.LBE12915:
.LBB12918:
.LBB12913:
	.loc 36 1326 0
	bic	r1, r1, #31
.LVL3736:
.LBE12913:
.LBE12918:
.LBB12919:
.LBB12917:
	.loc 36 1323 0
	cmp	r3, #8
	bne	.L3407
	.loc 36 1326 0
	bic	r0, r2, #31
.LBE12917:
.LBE12919:
	.loc 58 270 0
	sub	r0, r0, r1
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3737:
.L3316:
	.loc 58 296 0
	ands	r0, r0, #1
	beq	.L3313
.LVL3738:
.LBB12920:
.LBB12921:
.LBB12922:
.LBB12923:
	.loc 36 903 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0 discriminator 1
	uxtbeq	r0, r2
	.loc 36 904 0 discriminator 1
	andne	r0, r2, #15
.LBE12923:
.LBE12922:
.LBE12921:
.LBE12920:
	.loc 58 296 0 discriminator 1
	ands	r0, r0, #1
	beq	.L3313
	.loc 58 298 0
	ldm	sp, {r2, r3}
	ldm	ip, {r0, r1}
.LVL3739:
	.loc 58 304 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	lr, [sp, #16]
	.cfi_restore 14
	add	sp, sp, #20
	.cfi_def_cfa_offset 0
	.loc 58 298 0
	b	Arch_sameRegionAs
.LVL3740:
.L3332:
	.cfi_restore_state
	cmp	lr, #15
	bhi	.L3434
.L3328:
	mov	ip, #1
	movw	r3, #33450
	ands	r3, r3, ip, lsl lr
	beq	.L3434
.L3329:
.LVL3741:
.LBB12924:
.LBB12804:
.LBB12805:
	.loc 36 1021 0
	and	r3, r1, #15
	cmp	r3, #2
	bne	.L3343
	.loc 36 1024 0
	bic	r1, r1, #15
.LVL3742:
.LBE12805:
.LBE12804:
.LBB12807:
.LBB12788:
	.loc 39 387 0
	cmp	r0, #44
	ldrls	pc, [pc, r0, asl #2]
	b	.L3334
.L3336:
	.word	.L3335
	.word	.L3334
	.word	.L3337
	.word	.L3334
	.word	.L3338
	.word	.L3334
	.word	.L3419
	.word	.L3334
	.word	.L3340
	.word	.L3334
	.word	.L3341
	.word	.L3334
	.word	.L3419
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3419
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3334
	.word	.L3342
.L3419:
.LBB12727:
.LBB12728:
	.loc 38 398 0
	mov	ip, #0
.L3339:
.LVL3743:
.LBE12728:
.LBE12727:
.LBE12788:
.LBE12807:
.LBB12808:
.LBB12809:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12809:
.LBE12808:
	.loc 58 231 0
	mov	r3, #1
	sub	r0, r1, #1
	add	r0, r0, r3, lsl r4
.LVL3744:
.LBB12816:
.LBB12817:
	.loc 39 289 0
	cmp	lr, #46
	ldrls	pc, [pc, lr, asl #2]
	b	.L3439
.L3374:
	.word	.L3421
	.word	.L3439
	.word	.L3375
	.word	.L3439
	.word	.L3448
	.word	.L3439
	.word	.L3448
	.word	.L3439
	.word	.L3421
	.word	.L3439
	.word	.L3377
	.word	.L3439
	.word	.L3422
	.word	.L3439
	.word	.L3421
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3421
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3439
	.word	.L3378
.L3421:
	mov	r3, #1
.L3373:
.LBE12817:
.LBE12816:
	.loc 58 232 0
	add	r3, ip, r3
	sub	r3, r3, #1
.LVL3745:
	.loc 58 234 0
	cmp	r3, r0
	movhi	r0, #0
.LVL3746:
	movls	r0, #1
	cmp	r3, ip
	movcc	r0, #0
	cmp	r1, ip
	movhi	r0, #0
	andls	r0, r0, #1
	b	.L3313
.LVL3747:
.L3340:
.LBB12860:
.LBB12789:
.LBB12755:
.LBB12756:
	.loc 36 1439 0
	and	r3, r2, #15
	cmp	r3, #10
	bne	.L3399
.LVL3748:
.LBE12756:
.LBE12755:
.LBE12789:
.LBE12860:
.LBB12861:
.LBB12810:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12810:
.LBE12861:
	.loc 58 231 0
	mov	r3, #1
	sub	r0, r1, #1
	.loc 58 229 0
	bic	ip, r2, #31
.LVL3749:
	.loc 58 231 0
	add	r0, r0, r3, lsl r4
.LVL3750:
.L3349:
.LBB12862:
.LBB12851:
.LBB12818:
.LBB12819:
	.loc 36 1402 0
	ubfx	r2, r5, #18, #5
	mov	r3, #1
.LBE12819:
.LBE12818:
	.loc 39 300 0
	add	r2, r2, #4
	lsl	r3, r3, r2
	b	.L3373
.LVL3751:
.L3338:
.LBE12851:
.LBE12862:
.LBB12863:
.LBB12790:
.LBB12758:
.LBB12759:
	.loc 36 1277 0
	and	r3, r2, #15
	cmp	r3, #6
	.loc 36 1280 0
	biceq	r0, r2, #15
	.loc 36 1277 0
	bne	.L3396
.L3346:
.LBE12759:
.LBE12758:
.LBE12790:
.LBE12863:
.LBB12864:
.LBB12811:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12811:
.LBE12864:
	.loc 58 231 0
	mov	r2, #1
	sub	r3, r1, #1
	.loc 58 229 0
	mov	ip, r0
.LVL3752:
	.loc 58 231 0
	add	r0, r3, r2, lsl r4
.L3448:
.LVL3753:
	mov	r3, #16
	b	.L3373
.LVL3754:
.L3337:
.LBB12865:
.LBB12791:
.LBB12761:
.LBB12762:
	.loc 36 1059 0
	and	r0, r2, #15
	cmp	r0, #4
	.loc 36 1062 0
	biceq	r0, r5, #15
	.loc 36 1059 0
	beq	.L3346
.LVL3755:
.L3393:
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL3756:
.L3335:
.LBE12762:
.LBE12761:
.LBB12763:
.LBB12764:
	.loc 36 1021 0
	and	r3, r2, #15
	cmp	r3, #2
	bne	.L3343
.LVL3757:
.LBE12764:
.LBE12763:
.LBE12791:
.LBE12865:
.LBB12866:
.LBB12812:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12812:
.LBE12866:
	.loc 58 231 0
	mov	r3, #1
	sub	r0, r1, #1
	.loc 58 229 0
	bic	ip, r2, #15
.LVL3758:
	.loc 58 231 0
	add	r0, r0, r3, lsl r4
.LVL3759:
.L3344:
.LBB12867:
.LBB12852:
.LBB12821:
.LBB12822:
	.loc 36 1010 0
	and	r5, r5, #31
	mov	r3, #1
	lsl	r3, r3, r5
	b	.L3373
.LVL3760:
.L3342:
.LBE12822:
.LBE12821:
.LBE12852:
.LBE12867:
.LBB12868:
.LBB12792:
.LBB12765:
.LBB12766:
.LBB12767:
.LBB12768:
.LBB12769:
.LBB12770:
	.loc 36 2177 0
	uxtb	r3, r2
	cmp	r3, #46
	bne	.L3379
	.loc 36 2180 0
	lsr	r2, r2, #8
	and	r3, r2, #63
.LBE12770:
.LBE12769:
	.loc 39 103 0
	cmp	r3, #32
	mvneq	r3, #31
	beq	.L3353
	.loc 39 106 0
	and	r3, r2, #31
	mvn	ip, #0
	add	r3, r3, #1
	lsl	r3, ip, r3
.L3353:
.LVL3761:
.LBE12768:
.LBE12767:
.LBE12766:
.LBE12765:
.LBE12792:
.LBE12868:
.LBB12869:
.LBB12813:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12813:
.LBE12869:
	.loc 58 231 0
	mov	lr, #1
	sub	r0, r1, #1
.LBB12870:
.LBB12793:
.LBB12777:
.LBB12775:
	.loc 39 120 0
	and	ip, r5, r3
.LVL3762:
.LBE12775:
.LBE12777:
.LBE12793:
.LBE12870:
	.loc 58 231 0
	add	r0, r0, lr, lsl r4
.LVL3763:
.L3354:
.LBB12871:
.LBB12853:
.LBB12824:
.LBB12825:
.LBB12826:
	.loc 36 2180 0
	and	r3, r2, #63
.LBE12826:
.LBE12825:
	.loc 39 307 0
	cmp	r3, #32
	beq	.L3422
	.loc 39 310 0
	and	r2, r2, #31
	mov	r3, #1
	add	r2, r2, #4
	lsl	r3, r3, r2
	b	.L3373
.LVL3764:
.L3341:
.LBE12824:
.LBE12853:
.LBE12871:
.LBB12872:
.LBB12794:
.LBB12778:
.LBB12726:
	.loc 36 1469 0
	and	r3, r2, #15
	cmp	r3, #12
	bne	.L3403
.LBE12726:
.LBE12778:
.LBE12794:
.LBE12872:
.LBB12873:
.LBB12814:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12814:
.LBE12873:
	.loc 58 231 0
	mov	r3, #1
	sub	r0, r1, #1
.LBB12874:
.LBB12795:
	.loc 39 401 0
	bic	ip, r2, #1020
	bic	ip, ip, #3
.LVL3765:
.LBE12795:
.LBE12874:
	.loc 58 231 0
	add	r0, r0, r3, lsl r4
.LVL3766:
.L3422:
.LBB12875:
.LBB12854:
.LBB12829:
	.loc 39 307 0
	mov	r3, #1024
	b	.L3373
.LVL3767:
.L3334:
.LBE12829:
.LBE12854:
.LBE12875:
.LBB12876:
.LBB12796:
.LBB12779:
.LBB12749:
	.loc 38 398 0
	sub	r3, lr, #1
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L3419
.L3356:
	.word	.L3355
	.word	.L3419
	.word	.L3355
	.word	.L3419
	.word	.L3357
	.word	.L3419
	.word	.L3358
	.word	.L3419
	.word	.L3359
	.word	.L3419
	.word	.L3419
	.word	.L3419
	.word	.L3419
	.word	.L3419
	.word	.L3360
.L3359:
.LVL3768:
.LBB12729:
.LBB12730:
	.loc 36 2035 0
	and	r0, r2, #15
	cmp	r0, #9
	.loc 36 2038 0
	biceq	r0, r2, #16320
	biceq	r0, r0, #63
	.loc 36 2035 0
	bne	.L3452
.L3368:
.LBE12730:
.LBE12729:
.LBE12749:
.LBE12779:
.LBE12796:
.LBE12876:
.LBB12877:
.LBB12815:
	.loc 36 1010 0
	and	r4, r4, #31
.LBE12815:
.LBE12877:
	.loc 58 231 0
	mov	r7, #1
	sub	r6, r1, #1
	.loc 58 229 0
	mov	ip, r0
.LVL3769:
	.loc 58 231 0
	add	r0, r6, r7, lsl r4
.LVL3770:
.L3372:
.LBB12878:
.LBB12855:
.LBB12830:
.LBB12831:
	.loc 38 316 0
	cmp	r3, #14
	ldrls	pc, [pc, r3, asl #2]
	b	.L3421
.L3382:
	.word	.L3381
	.word	.L3421
	.word	.L3381
	.word	.L3421
	.word	.L3445
	.word	.L3421
	.word	.L3445
	.word	.L3421
	.word	.L3423
	.word	.L3421
	.word	.L3421
	.word	.L3421
	.word	.L3421
	.word	.L3421
	.word	.L3445
.LVL3771:
.L3358:
.LBE12831:
.LBE12830:
.LBE12855:
.LBE12878:
.LBB12879:
.LBB12797:
.LBB12780:
.LBB12750:
.LBB12732:
.LBB12733:
	.loc 36 1974 0
	and	r0, r2, #15
	cmp	r0, #7
	.loc 36 1977 0
	biceq	r0, r2, #1020
	biceq	r0, r0, #3
	.loc 36 1974 0
	beq	.L3368
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL3772:
.L3357:
.LBE12733:
.LBE12732:
.LBB12734:
.LBB12735:
	.loc 36 1847 0
	and	r0, r2, #15
	cmp	r0, #5
	.loc 36 1850 0
	biceq	r0, r2, #15
	.loc 36 1847 0
	beq	.L3368
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL3773:
.L3355:
.LBE12735:
.LBE12734:
.LBB12736:
.LBB12737:
	.loc 38 235 0
	mvn	r3, lr
	ands	r0, r3, #1
	bne	.L3453
	.loc 38 238 0
	cmp	lr, #1
	beq	.L3363
	cmp	lr, #3
	bne	.L3419
.LVL3774:
.LBB12738:
.LBB12739:
	.loc 36 1801 0
	and	r3, r2, #15
	cmp	r3, #3
	.loc 36 1804 0
	moveq	r0, #49152
	movteq	r0, 65535
	andeq	ip, r0, r2, lsl #10
	.loc 36 1801 0
	beq	.L3339
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL3775:
.L3445:
.LBE12739:
.LBE12738:
.LBE12737:
.LBE12736:
.LBE12750:
.LBE12780:
.LBE12797:
.LBE12879:
.LBB12880:
.LBB12856:
.LBB12846:
.LBB12844:
.LBB12832:
.LBB12833:
	.loc 38 259 0
	mov	r3, #4096
	b	.L3373
.L3423:
.LBE12833:
.LBE12832:
	.loc 38 316 0
	mov	r3, #16384
	b	.L3373
.L3381:
.LVL3776:
.LBB12840:
.LBB12838:
	.loc 38 256 0
	tst	lr, #1
	beq	.L3454
	.loc 38 259 0
	cmp	lr, #3
	bne	.L3445
.LVL3777:
.LBB12834:
.LBB12835:
	.loc 36 1669 0
	and	r2, r2, #15
	cmp	r2, #3
	bne	.L3455
.LVL3778:
	.loc 36 1672 0
	lsr	r5, r5, #30
.LBE12835:
.LBE12834:
.LBE12838:
.LBE12840:
.LBB12841:
.LBB12842:
	.loc 40 148 0
	cmp	r5, #2
	moveq	r3, #2097152
	beq	.L3373
	cmp	r5, #3
	moveq	r3, #33554432
	beq	.L3373
	cmp	r5, #1
	moveq	r3, #65536
	movne	r3, #4096
	b	.L3373
.LVL3779:
.L3360:
.LBE12842:
.LBE12841:
.LBE12844:
.LBE12846:
.LBE12856:
.LBE12880:
.LBB12881:
.LBB12798:
.LBB12781:
.LBB12751:
.LBB12744:
.LBB12745:
	.loc 36 2221 0
	uxtb	r0, r2
	cmp	r0, #15
	.loc 36 2224 0
	biceq	r0, r2, #255
	.loc 36 2221 0
	beq	.L3368
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL3780:
.L3439:
	sub	r3, lr, #1
	b	.L3372
.LVL3781:
.L3327:
.LBE12745:
.LBE12744:
.LBE12751:
.LBE12781:
.LBE12798:
.LBE12881:
.LBE12924:
.LBB12925:
.LBB12685:
.LBB12684:
.LBB12683:
	.loc 36 905 0
	uxtb	lr, r2
.LBE12683:
.LBE12684:
	.loc 39 344 0
	sub	r0, lr, #2
	cmp	r0, #60
	ldrls	pc, [pc, r0, asl #2]
	b	.L3332
.L3333:
	.word	.L3329
	.word	.L3332
	.word	.L3329
	.word	.L3332
	.word	.L3329
	.word	.L3332
	.word	.L3434
	.word	.L3332
	.word	.L3329
	.word	.L3332
	.word	.L3329
	.word	.L3332
	.word	.L3434
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3434
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3329
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3332
	.word	.L3434
.L3450:
.LBE12685:
.LBE12925:
.LBB12926:
.LBB12678:
	.loc 36 905 0
	uxtb	r0, r2
.LBE12678:
.LBE12926:
	.loc 58 276 0
	sub	r0, r0, #62
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3313
.LVL3782:
.L3363:
.LBB12927:
.LBB12882:
.LBB12799:
.LBB12782:
.LBB12752:
.LBB12746:
.LBB12742:
.LBB12740:
.LBB12741:
	.loc 36 1627 0
	and	r3, r2, #15
	cmp	r3, #1
	.loc 36 1630 0
	moveq	r0, #61440
	movteq	r0, 65535
	andeq	ip, r0, r2, lsl #8
	.loc 36 1627 0
	beq	.L3339
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL3783:
.L3343:
.LBE12741:
.LBE12740:
.LBE12742:
.LBE12746:
.LBE12752:
.LBE12782:
.LBE12799:
.LBE12882:
.LBB12883:
.LBB12806:
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL3784:
.L3399:
.LBE12806:
.LBE12883:
.LBB12884:
.LBB12800:
.LBB12783:
.LBB12757:
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL3785:
.L3407:
.LBE12757:
.LBE12783:
.LBE12800:
.LBE12884:
.LBE12927:
.LBB12928:
.LBB12914:
	bl	cap_reply_cap_get_capTCBPtr.isra.92.part.93
.LVL3786:
.L3451:
.LBE12914:
.LBE12928:
.LBB12929:
.LBB12897:
	bl	cap_irq_handler_cap_get_capIRQ.part.276
.LVL3787:
.L3396:
.LBE12897:
.LBE12929:
.LBB12930:
.LBB12885:
.LBB12801:
.LBB12784:
.LBB12760:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL3788:
.L3377:
.LBE12760:
.LBE12784:
.LBE12801:
.LBE12885:
.LBB12886:
.LBB12857:
.LBB12847:
.LBB12820:
	.loc 36 1399 0
	and	r2, r2, #15
	cmp	r2, #10
	beq	.L3349
	bl	cap_cnode_cap_get_capCNodeRadix.part.100
.LVL3789:
.L3453:
.LBE12820:
.LBE12847:
.LBE12857:
.LBE12886:
.LBB12887:
.LBB12802:
.LBB12785:
.LBB12753:
.LBB12747:
.LBB12743:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL3790:
.L3455:
.LBE12743:
.LBE12747:
.LBE12753:
.LBE12785:
.LBE12802:
.LBE12887:
.LBB12888:
.LBB12858:
.LBB12848:
.LBB12845:
.LBB12843:
.LBB12839:
.LBB12837:
.LBB12836:
	bl	cap_frame_cap_get_capFSize.part.173
.LVL3791:
.L3454:
.LBE12836:
.LBE12837:
	bl	generic_frame_cap_get_capFSize.part.174
.LVL3792:
.L3452:
.LBE12839:
.LBE12843:
.LBE12845:
.LBE12848:
.LBE12858:
.LBE12888:
.LBB12889:
.LBB12803:
.LBB12786:
.LBB12754:
.LBB12748:
.LBB12731:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL3793:
.L3379:
.LBE12731:
.LBE12748:
.LBE12754:
.LBE12786:
.LBB12787:
.LBB12776:
.LBB12774:
.LBB12773:
.LBB12772:
.LBB12771:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL3794:
.L3378:
.LBE12771:
.LBE12772:
.LBE12773:
.LBE12774:
.LBE12776:
.LBE12787:
.LBE12803:
.LBE12889:
.LBB12890:
.LBB12859:
.LBB12849:
.LBB12828:
.LBB12827:
	.loc 36 2177 0
	uxtb	r3, r2
	cmp	r3, #46
	bne	.L3379
	lsr	r2, r2, #8
	b	.L3354
.LVL3795:
.L3375:
.LBE12827:
.LBE12828:
.LBE12849:
.LBB12850:
.LBB12823:
	.loc 36 1007 0
	and	r2, r2, #15
	cmp	r2, #2
	beq	.L3344
	bl	cap_untyped_cap_get_capBlockSize.part.207
.LVL3796:
.LBE12823:
.LBE12850:
.LBE12859:
.LBE12890:
.LBE12930:
	.cfi_endproc
.LFE804:
	.size	sameRegionAs, .-sameRegionAs
	.align	2
	.global	isMDBParentOf
	.syntax unified
	.arm
	.fpu softvfp
	.type	isMDBParentOf, %function
isMDBParentOf:
.LFB761:
	.loc 52 818 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3797:
.LBB12953:
.LBB12954:
	.loc 36 290 0
	ldr	r3, [r0, #12]
	ubfx	r3, r3, #1, #1
.LBE12954:
.LBE12953:
	.loc 52 819 0
	cmp	r3, #0
	beq	.L3468
	.loc 52 818 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 52 822 0
	ldm	r1, {r2, r3}
	mov	r5, r1
	mov	r4, r0
	ldm	r0, {r0, r1}
.LVL3798:
	.loc 52 818 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 52 822 0
	bl	sameRegionAs
.LVL3799:
	cmp	r0, #0
	beq	.L3456
.LVL3800:
	ldr	r3, [r4]
.LVL3801:
.LBB12955:
.LBB12956:
.LBB12957:
.LBB12958:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL3802:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE12958:
.LBE12957:
	.loc 52 825 0
	cmp	r2, #4
	beq	.L3460
	cmp	r2, #6
	bne	.L3472
.LVL3803:
.LBB12959:
.LBB12960:
.LBB12961:
	.loc 36 1199 0
	and	r3, r3, #15
	ldr	r2, [r4, #4]
.LVL3804:
	cmp	r3, #6
	bne	.L3466
.LBE12961:
.LBE12960:
	.loc 52 842 0
	lsrs	r2, r2, #4
.LVL3805:
	beq	.L3472
.LVL3806:
.LBB12963:
.LBB12964:
	.loc 36 1199 0
	ldr	r3, [r5]
	ldr	r1, [r5, #4]
.LVL3807:
	and	r3, r3, #15
	cmp	r3, #6
	bne	.L3466
.LBE12964:
.LBE12963:
	.loc 52 846 0
	cmp	r2, r1, lsr #4
	beq	.L3482
.LVL3808:
.L3473:
	mov	r0, #0
.LVL3809:
.L3456:
.LBE12959:
.LBE12956:
.LBE12955:
	.loc 52 855 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL3810:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3811:
.L3472:
	.cfi_restore_state
.LBB12978:
.LBB12976:
.LBB12966:
	.loc 52 831 0
	mov	r0, #1
	b	.L3456
.LVL3812:
.L3468:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
.LBE12966:
.LBE12976:
.LBE12978:
	.loc 52 820 0
	mov	r0, r3
.LVL3813:
	bx	lr
.LVL3814:
.L3460:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB12979:
.LBB12977:
.LBB12973:
.LBB12967:
.LBB12968:
	.loc 36 1151 0
	and	r2, r3, #15
	cmp	r2, #4
	bne	.L3463
.LVL3815:
.LBE12968:
.LBE12967:
	.loc 52 830 0
	lsrs	r3, r3, #4
	beq	.L3472
	ldr	r2, [r5]
.LVL3816:
.LBB12970:
.LBB12971:
	.loc 36 1151 0
	and	r1, r2, #15
	cmp	r1, #4
	bne	.L3463
.LVL3817:
.LBE12971:
.LBE12970:
	.loc 52 833 0
	cmp	r3, r2, lsr #4
	bne	.L3473
.L3482:
.LBE12973:
.LBB12974:
	.loc 52 846 0
	ldr	r0, [r5, #12]
	eor	r0, r0, #1
	and	r0, r0, #1
	b	.L3456
.LVL3818:
.L3466:
.LBB12965:
.LBB12962:
	bl	cap_notification_cap_get_capNtfnBadge.part.244
.LVL3819:
.L3463:
.LBE12962:
.LBE12965:
.LBE12974:
.LBB12975:
.LBB12972:
.LBB12969:
	bl	cap_endpoint_cap_get_capEPBadge.isra.111.part.112
.LVL3820:
.LBE12969:
.LBE12972:
.LBE12975:
.LBE12977:
.LBE12979:
	.cfi_endproc
.LFE761:
	.size	isMDBParentOf, .-isMDBParentOf
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	sendCNode, %function
sendCNode:
.LFB482:
	.loc 3 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3821:
	strd	r4, [sp, #-32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	.loc 3 228 0
	mov	r8, #1
.LVL3822:
	lsls	r8, r8, r1
	.loc 3 225 0
	str	r10, [sp, #24]
	str	lr, [sp, #28]
	.loc 3 228 0
	beq	.L3483
	mov	r9, r0
	mov	r5, r0
	mov	r6, #0
	b	.L3484
.LVL3823:
.L3487:
	.loc 3 228 0 is_stmt 0 discriminator 2
	add	r6, r6, #1
.LVL3824:
	add	r5, r5, #16
	cmp	r6, r8
	beq	.L3483
.LVL3825:
.L3484:
.LBB12990:
	.loc 3 229 0 is_stmt 1
	ldr	r7, [r9, r6, lsl #4]
.LVL3826:
.LBB12991:
.LBB12992:
	.loc 36 903 0
	and	r3, r7, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r7
.LVL3827:
	.loc 36 904 0
	andne	r3, r7, #15
.LBE12992:
.LBE12991:
	.loc 3 230 0
	cmp	r3, #0
	beq	.L3487
.LVL3828:
.LBB12993:
.LBB12994:
.LBB12995:
.LBB12996:
.LBB12997:
	.loc 36 346 0
	ldr	r4, [r5, #8]
.LVL3829:
.LBE12997:
.LBE12996:
	.loc 3 122 0
	bics	r4, r4, #7
.LVL3830:
	bne	.L3490
	b	.L3489
.LVL3831:
.L3491:
.LBB12998:
.LBB12999:
	.loc 36 346 0
	ldr	r4, [r4, #8]
.LVL3832:
.LBE12999:
.LBE12998:
	.loc 3 122 0
	bics	r4, r4, #7
.LVL3833:
	beq	.L3489
.L3490:
	mov	r1, r5
	mov	r0, r4
	bl	isMDBParentOf
.LVL3834:
	cmp	r0, #0
	beq	.L3491
.L3489:
.LBE12995:
.LBE12994:
.LBE12993:
	.loc 3 229 0
	ldr	r10, [r5, #4]
.LVL3835:
.LBB13000:
	.loc 3 232 0
	mov	r0, r6
.LBE13000:
.LBE12990:
	.loc 3 228 0
	add	r6, r6, #1
.LVL3836:
.LBB13002:
.LBB13001:
	.loc 3 232 0
	bl	sendWord
.LVL3837:
	.loc 3 233 0
	mov	r0, r7
	add	r5, r5, #16
	bl	sendWord
.LVL3838:
	.loc 3 234 0
	mov	r0, r10
	bl	sendWord
.LVL3839:
	.loc 3 235 0
	mov	r0, r4
	bl	sendWord
.LVL3840:
.LBE13001:
.LBE13002:
	.loc 3 228 0
	cmp	r6, r8
	bne	.L3484
.LVL3841:
.L3483:
	.loc 3 238 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldr	r10, [sp, #24]
	.cfi_restore 10
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE482:
	.size	sendCNode, .-sendCNode
	.align	2
	.global	capDL
	.syntax unified
	.arm
	.fpu softvfp
	.type	capDL, %function
capDL:
.LFB485:
	.loc 3 252 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3842:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
.LBB13065:
.LBB13066:
.LBB13067:
	.loc 3 242 0
	movw	r7, #:lower16:intStateIRQNode
.LBE13067:
.LBE13066:
.LBB13070:
.LBB13071:
.LBB13072:
.LBB13073:
.LBB13074:
.LBB13075:
	.loc 36 826 0
	mov	r6, #61440
.LBE13075:
.LBE13074:
.LBE13073:
.LBE13072:
.LBE13071:
.LBE13070:
.LBE13065:
	.loc 3 252 0
	strd	r8, [sp, #16]
.LBB13159:
.LBB13091:
.LBB13068:
	.loc 3 242 0
	movt	r7, #:upper16:intStateIRQNode
.LBE13068:
.LBE13091:
.LBB13092:
.LBB13086:
.LBB13083:
.LBB13080:
.LBB13077:
.LBB13076:
	.loc 36 826 0
	movt	r6, 65535
.LBE13076:
.LBE13077:
.LBE13080:
.LBE13083:
.LBE13086:
.LBE13092:
.LBE13159:
	.loc 3 252 0
	str	lr, [sp, #24]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
.L3501:
.LBB13160:
.LBB13093:
.LBB13094:
	.loc 4 53 0
	mvn	r2, #1040384
.L3504:
	.loc 4 53 0 is_stmt 0 discriminator 1
	ldr	r3, [r2, #-4079]
	tst	r3, #1
	beq	.L3595
	.loc 4 54 0 is_stmt 1
	ldr	r3, [r2, #-4059]
.LBE13094:
.LBE13093:
	.loc 3 259 0
	uxtb	r3, r3
	cmp	r3, #255
	bne	.L3504
.L3595:
	mvn	r3, #0
	strb	r3, [sp, #7]
.L3506:
	.loc 3 261 0
	add	r0, sp, #7
	bl	getDecodedChar
.LVL3843:
	.loc 3 262 0
	cmp	r0, #0
	bne	.L3506
	.loc 3 265 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	sub	r3, r3, #240
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L3501
.L3509:
	.word	.L3508
	.word	.L3510
	.word	.L3511
	.word	.L3512
	.word	.L3513
	.word	.L3514
	.word	.L3515
	.word	.L3501
	.word	.L3501
	.word	.L3516
	.word	.L3517
.L3517:
.LBB13095:
.LBB13096:
	.loc 4 44 0
	mvn	r2, #1040384
.L3578:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3578
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
.LVL3844:
.LBE13096:
.LBE13095:
.LBE13160:
	.loc 3 354 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3845:
.L3516:
	.cfi_restore_state
.LBB13161:
.LBB13097:
.LBB13098:
	.loc 3 247 0
	mov	r0, #224
.LVL3846:
	bl	sendWord
.LVL3847:
	.loc 3 248 0
	mov	r0, #0
	bl	sendWord
.LVL3848:
.LBE13098:
.LBE13097:
.LBB13099:
.LBB13100:
	.loc 4 44 0
	mvn	r2, #1040384
.L3548:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3548
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3849:
.L3515:
.LBE13100:
.LBE13099:
.LBB13107:
	.loc 3 291 0
	add	r0, sp, #12
.LVL3850:
	bl	getArg32
.LVL3851:
	.loc 3 292 0
	cmp	r0, #0
	bne	.L3506
	.loc 3 295 0
	ldr	r4, [sp, #12]
.LVL3852:
.LBB13108:
.LBB13109:
	.loc 3 185 0
	mov	r5, r0
	add	r9, r4, #4080
	sub	r4, r4, #4
.LVL3853:
	add	r9, r9, #12
.LVL3854:
.L3533:
.LBB13110:
	.loc 3 186 0
	ldr	r8, [r4, #4]!
.LVL3855:
	.loc 3 188 0
	mov	r0, r5
.LBE13110:
	.loc 3 185 0
	add	r5, r5, #1
.LVL3856:
.LBB13111:
	.loc 3 187 0
	cmp	r8, #0
	beq	.L3532
	.loc 3 188 0
	bl	sendWord
.LVL3857:
	.loc 3 189 0
	mov	r0, r8
	bl	sendWord
.LVL3858:
.L3532:
.LBE13111:
	.loc 3 185 0
	cmp	r4, r9
	bne	.L3533
.LBE13109:
.LBE13108:
.LBB13112:
.LBB13113:
	.loc 4 44 0
	mvn	r2, #1040384
.L3576:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3576
.LBE13113:
.LBE13112:
.LBE13107:
.LBB13114:
.LBB13101:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3859:
.L3514:
.LBE13101:
.LBE13114:
.LBB13115:
	.loc 3 280 0
	add	r0, sp, #12
.LVL3860:
	bl	getArg32
.LVL3861:
	.loc 3 281 0
	cmp	r0, #0
	bne	.L3506
.LBB13087:
.LBB13084:
	.loc 3 157 0
	mov	r4, r0
.LBE13084:
.LBE13087:
	.loc 3 284 0
	ldr	r8, [sp, #12]
.LVL3862:
	b	.L3529
.LVL3863:
.L3527:
.LBB13088:
.LBB13085:
	.loc 3 157 0
	add	r4, r4, #1
.LVL3864:
	cmp	r4, #512
	beq	.L3597
.LVL3865:
.L3529:
.LBB13081:
	.loc 3 158 0
	ldr	r5, [r8, r4, lsl #3]
.LVL3866:
.LBB13078:
.LBB13079:
	.loc 36 742 0
	and	r3, r5, #3
.LBE13079:
.LBE13078:
	.loc 3 161 0
	cmp	r3, #3
	bne	.L3527
.LVL3867:
	tst	r5, r6
	.loc 3 175 0
	mov	r0, r4
	.loc 3 161 0
	bne	.L3528
	tst	r5, #192
	beq	.L3527
.L3528:
	.loc 3 175 0
	bl	sendWord
.LVL3868:
.LBE13081:
	.loc 3 157 0
	add	r4, r4, #1
.LVL3869:
.LBB13082:
	.loc 3 176 0
	mov	r0, r5
	bl	sendWord
.LVL3870:
.LBE13082:
	.loc 3 157 0
	cmp	r4, #512
	bne	.L3529
.LVL3871:
.L3597:
.LBE13085:
.LBE13088:
.LBB13089:
.LBB13090:
	.loc 4 44 0
	mvn	r2, #1040384
.L3530:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3530
.LBE13090:
.LBE13089:
.LBE13115:
.LBB13116:
.LBB13102:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3872:
.L3513:
.LBE13102:
.LBE13116:
.LBB13117:
.LBB13069:
	.loc 3 242 0
	mov	r1, #8
	ldr	r0, [r7]
.LVL3873:
	bl	sendCNode
.LVL3874:
.LBE13069:
.LBE13117:
.LBB13118:
.LBB13119:
	.loc 4 44 0
	mvn	r2, #1040384
.L3547:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3547
.LBE13119:
.LBE13118:
.LBB13120:
.LBB13103:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3875:
.L3512:
.LBE13103:
.LBE13120:
.LBB13121:
	.loc 3 320 0
	add	r0, sp, #8
.LVL3876:
	bl	getArg32
.LVL3877:
	.loc 3 321 0
	cmp	r0, #0
	bne	.L3506
	.loc 3 324 0
	add	r0, sp, #12
.LVL3878:
	bl	getArg32
.LVL3879:
	.loc 3 325 0
	cmp	r0, #0
	bne	.L3506
	.loc 3 329 0
	ldrd	r0, [sp, #8]
.LVL3880:
	bl	sendCNode
.LVL3881:
.LBB13122:
.LBB13123:
	.loc 4 44 0
	mvn	r3, #1040384
.L3546:
	ldr	r2, [r3, #-4079]
	tst	r2, #2
	beq	.L3546
	.loc 4 45 0
	mov	r2, #187
	str	r2, [r3, #-4063]
.LVL3882:
.LBE13123:
.LBE13122:
.LBE13121:
	.loc 3 332 0
	b	.L3501
.LVL3883:
.L3511:
.LBB13124:
	.loc 3 309 0
	add	r0, sp, #12
.LVL3884:
	bl	getArg32
.LVL3885:
	.loc 3 310 0
	cmp	r0, #0
	bne	.L3506
.LVL3886:
.LBB13125:
.LBB13126:
	.loc 3 212 0
	ldr	r3, [sp, #12]
.LVL3887:
.LBB13127:
.LBB13128:
	.loc 36 480 0
	ldr	r5, [r3]
.LBE13128:
.LBE13127:
.LBB13130:
.LBB13131:
	.loc 36 461 0
	ldr	r4, [r3, #4]
.LVL3888:
.LBE13131:
.LBE13130:
.LBB13132:
.LBB13129:
	.loc 36 480 0
	bic	r5, r5, #15
.LVL3889:
.LBE13129:
.LBE13132:
	.loc 3 214 0
	bics	r4, r4, #15
.LVL3890:
	beq	.L3541
	.loc 3 217 0
	cmp	r4, r5
	beq	.L3542
.LVL3891:
.L3543:
	.loc 3 218 0
	mov	r0, r4
	bl	sendWord
.LVL3892:
	.loc 3 219 0
	ldr	r4, [r4, #512]
.LVL3893:
	.loc 3 217 0
	cmp	r5, r4
	bne	.L3543
.L3542:
	.loc 3 221 0
	mov	r0, r5
	bl	sendWord
.LVL3894:
.L3541:
.LBE13126:
.LBE13125:
.LBB13133:
.LBB13134:
	.loc 4 44 0
	mvn	r2, #1040384
.L3544:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3544
.LBE13134:
.LBE13133:
.LBE13124:
.LBB13135:
.LBB13104:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3895:
.L3510:
.LBE13104:
.LBE13135:
.LBB13136:
.LBB13137:
	.loc 3 197 0
	movw	r3, #:lower16:ksCurThread
	movw	r5, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksCurThread
	movt	r5, #:upper16:ksReadyQueues
	ldr	r0, [r3]
.LVL3896:
	add	r8, r5, #2048
	bl	sendWord
.LVL3897:
.L3538:
.LBB13138:
	.loc 3 199 0
	ldr	r4, [r5]
.LVL3898:
	.loc 3 200 0
	cmp	r4, #0
	bne	.L3596
	b	.L3535
.LVL3899:
.L3537:
	.loc 3 202 0
	bl	sendWord
.LVL3900:
	.loc 3 203 0
	ldr	r4, [r4, #504]
.LVL3901:
.L3596:
	.loc 3 201 0
	ldr	r3, [r5, #4]
	.loc 3 202 0
	mov	r0, r4
	.loc 3 201 0
	cmp	r4, r3
	bne	.L3537
	.loc 3 205 0
	bl	sendWord
.LVL3902:
.L3535:
	add	r5, r5, #8
.LBE13138:
	.loc 3 198 0
	cmp	r8, r5
	bne	.L3538
.LBE13137:
.LBE13136:
.LBB13139:
.LBB13140:
	.loc 4 44 0
	mvn	r2, #1040384
.L3577:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3577
.LBE13140:
.LBE13139:
.LBB13141:
.LBB13105:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3903:
.L3508:
.LBE13105:
.LBE13141:
.LBB13142:
	.loc 3 269 0
	add	r0, sp, #12
.LVL3904:
	bl	getArg32
.LVL3905:
	.loc 3 270 0
	cmp	r0, #0
	bne	.L3506
.LBB13143:
.LBB13144:
	.loc 3 133 0
	mov	r4, r0
.LBE13144:
.LBE13143:
	.loc 3 273 0
	ldr	r8, [sp, #12]
.LVL3906:
	b	.L3523
.LVL3907:
.L3520:
.LBB13153:
.LBB13151:
.LBB13145:
	.loc 3 138 0
	cmp	r3, #1
	beq	.L3598
.LVL3908:
.L3522:
.LBE13145:
	.loc 3 133 0
	add	r4, r4, #1
.LVL3909:
	cmp	r4, #2048
	beq	.L3599
.LVL3910:
.L3523:
.LBB13148:
	.loc 3 134 0
	ldr	r5, [r8, r4, lsl #3]
.LVL3911:
.LBB13146:
.LBB13147:
	.loc 36 2320 0
	and	r3, r5, #3
.LBE13147:
.LBE13146:
	.loc 3 136 0
	cmp	r3, #3
	bne	.L3520
	tst	r5, r6
	beq	.L3522
.L3521:
.LVL3912:
	.loc 3 146 0
	cmp	r4, #1792
	.loc 3 147 0
	mov	r0, r4
	.loc 3 146 0
	bcs	.L3522
.LVL3913:
	.loc 3 147 0
	bl	sendWord
.LVL3914:
.LBE13148:
	.loc 3 133 0
	add	r4, r4, #1
.LVL3915:
.LBB13149:
	.loc 3 148 0
	mov	r0, r5
	bl	sendWord
.LVL3916:
.LBE13149:
	.loc 3 133 0
	cmp	r4, #2048
	bne	.L3523
.L3599:
.LBE13151:
.LBE13153:
.LBB13154:
.LBB13155:
	.loc 4 44 0
	mvn	r2, #1040384
.L3524:
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L3524
.LBE13155:
.LBE13154:
.LBE13142:
.LBB13157:
.LBB13106:
	.loc 4 45 0
	mov	r3, #187
	str	r3, [r2, #-4063]
	b	.L3501
.LVL3917:
.L3598:
.LBE13106:
.LBE13157:
.LBB13158:
.LBB13156:
.LBB13152:
.LBB13150:
	.loc 3 138 0
	tst	r5, r6
	bne	.L3521
	tst	r5, #192
	beq	.L3522
	b	.L3521
.LBE13150:
.LBE13152:
.LBE13156:
.LBE13158:
.LBE13161:
	.cfi_endproc
.LFE485:
	.size	capDL, .-capDL
	.align	2
	.global	ensureNoChildren
	.syntax unified
	.arm
	.fpu softvfp
	.type	ensureNoChildren, %function
ensureNoChildren:
.LFB762:
	.loc 52 859 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3918:
.LBB13162:
.LBB13163:
	.loc 36 271 0
	ldr	r1, [r0, #12]
.LBE13163:
.LBE13162:
	.loc 52 860 0
	bics	r1, r1, #7
	beq	.L3602
.LVL3919:
	.loc 52 859 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB13164:
	.loc 52 864 0
	bl	isMDBParentOf
.LVL3920:
	cmp	r0, #0
	beq	.L3600
	.loc 52 865 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #9
	movt	r3, #:upper16:current_syscall_error
	.loc 52 866 0
	mov	r0, #3
	.loc 52 865 0
	str	r2, [r3, #24]
.L3600:
.LBE13164:
	.loc 52 871 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3921:
.L3602:
	.cfi_restore 14
	.loc 52 870 0
	mov	r0, r1
.LVL3922:
	bx	lr
	.cfi_endproc
.LFE762:
	.size	ensureNoChildren, .-ensureNoChildren
	.align	2
	.global	deriveCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	deriveCap, %function
deriveCap:
.LFB801:
	.loc 58 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3923:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r5, r0
	mov	r4, r2
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
.LVL3924:
	.loc 58 58 0
	stm	sp, {r2, r3}
.LVL3925:
.LBB13165:
.LBB13166:
.LBB13167:
.LBB13168:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
	.loc 36 904 0
	andne	r3, r2, #15
.LBE13168:
.LBE13167:
.LBE13166:
.LBE13165:
	.loc 58 61 0
	ands	r7, r3, #1
	bne	.L3631
	.loc 58 65 0
	cmp	r3, #8
	ldr	r6, [sp, #4]
	beq	.L3617
	bhi	.L3615
	cmp	r3, #2
	bne	.L3613
	.loc 58 77 0
	mov	r0, r1
.LVL3926:
	bl	ensureNoChildren
.LVL3927:
	.loc 58 78 0
	cmp	r0, #0
.LBB13169:
.LBB13170:
	.loc 36 926 0
	movne	r4, r7
.LVL3928:
	movne	r6, r4
.LVL3929:
.L3614:
.LBE13170:
.LBE13169:
	.loc 58 95 0
	stm	r5, {r0, r4, r6}
.LVL3930:
.L3608:
	.loc 58 96 0
	mov	r0, r5
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
.LVL3931:
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3932:
.L3615:
	.cfi_restore_state
	.loc 58 65 0
	cmp	r3, #14
	beq	.L3617
	cmp	r3, #46
	beq	.L3617
.L3613:
	.loc 58 91 0
	mov	r0, #0
.LVL3933:
	b	.L3614
.LVL3934:
.L3617:
.LBB13171:
.LBB13172:
	.loc 36 926 0
	mov	r6, #0
	mov	r4, r6
.LBE13172:
.LBE13171:
	.loc 58 67 0
	mov	r0, r6
.LVL3935:
	b	.L3614
.LVL3936:
.L3631:
	.loc 58 62 0
	ldm	sp, {r2, r3}
.LVL3937:
	bl	Arch_deriveCap
.LVL3938:
	b	.L3608
	.cfi_endproc
.LFE801:
	.size	deriveCap, .-deriveCap
	.align	2
	.global	sameObjectAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	sameObjectAs, %function
sameObjectAs:
.LFB805:
	.loc 58 308 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 58 308 0
	add	ip, sp, #8
	mov	lr, sp
	stm	sp, {r2, r3}
.LBB13173:
.LBB13174:
	.loc 36 903 0
	and	r3, r0, #14
	cmp	r3, #14
.LBE13174:
.LBE13173:
	.loc 58 308 0
	stm	ip, {r0, r1}
.LVL3939:
.LBB13176:
.LBB13175:
	.loc 36 905 0
	uxtbeq	r3, r0
.LVL3940:
	.loc 36 904 0
	andne	r3, r0, #15
.LBE13175:
.LBE13176:
	.loc 58 309 0
	cmp	r3, #2
	beq	.L3632
	.loc 58 312 0
	cmp	r3, #14
	ldr	r2, [sp]
	beq	.L3651
	.loc 58 316 0
	tst	r3, #1
	beq	.L3637
.LVL3941:
.LBB13177:
.LBB13178:
.LBB13179:
.LBB13180:
	.loc 36 903 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0 discriminator 1
	uxtbeq	r2, r2
	.loc 36 904 0 discriminator 1
	andne	r2, r2, #15
.LBE13180:
.LBE13179:
.LBE13178:
.LBE13177:
	.loc 58 316 0 discriminator 1
	tst	r2, #1
	bne	.L3652
.L3637:
	.loc 58 319 0
	ldm	lr, {r2, r3}
	ldm	ip, {r0, r1}
.LVL3942:
	.loc 58 320 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 58 319 0
	b	sameRegionAs
.LVL3943:
.L3651:
	.cfi_restore_state
.LBB13181:
.LBB13182:
	.loc 36 903 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	bne	.L3637
	.loc 36 905 0
	uxtb	r2, r2
.LBE13182:
.LBE13181:
	.loc 58 312 0
	cmp	r2, #30
	bne	.L3637
.L3632:
	.loc 58 320 0
	mov	r0, #0
.LVL3944:
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL3945:
.L3652:
	.cfi_restore_state
	.loc 58 317 0
	ldm	sp, {r2, r3}
	ldm	ip, {r0, r1}
.LVL3946:
	.loc 58 320 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 58 317 0
	b	Arch_sameObjectAs
.LVL3947:
	.cfi_endproc
.LFE805:
	.size	sameObjectAs, .-sameObjectAs
	.align	2
	.global	isFinalCapability
	.syntax unified
	.arm
	.fpu softvfp
	.type	isFinalCapability, %function
isFinalCapability:
.LFB764:
	.loc 52 886 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3948:
.LBB13183:
.LBB13184:
	.loc 36 346 0
	ldr	r3, [r0, #8]
.LBE13184:
.LBE13183:
	.loc 52 886 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL3949:
	str	lr, [sp, #4]
.LVL3950:
	.loc 52 892 0
	bics	r1, r3, #7
	beq	.L3654
.LVL3951:
.LBB13185:
	.loc 52 898 0
	ldm	r0, {r2, r3}
	ldm	r1, {r0, r1}
.LVL3952:
	bl	sameObjectAs
.LVL3953:
.LBE13185:
	.loc 52 901 0
	cmp	r0, #0
	.loc 52 902 0
	movne	r0, #0
.LVL3954:
	.loc 52 901 0
	beq	.L3654
.L3653:
	.loc 52 913 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL3955:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL3956:
.L3654:
	.cfi_restore_state
.LBB13186:
.LBB13187:
	.loc 36 271 0
	ldr	r3, [r4, #12]
.LBE13187:
.LBE13186:
	.loc 52 904 0
	bics	r3, r3, #7
	.loc 52 905 0
	moveq	r0, #1
	.loc 52 904 0
	beq	.L3653
.LVL3957:
.LBB13188:
	.loc 52 910 0
	ldm	r4, {r0, r1}
	ldm	r3, {r2, r3}
.LVL3958:
	bl	sameObjectAs
.LVL3959:
	clz	r0, r0
.LBE13188:
	.loc 52 913 0
	ldr	r4, [sp]
	.cfi_restore 4
.LVL3960:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB13189:
	.loc 52 910 0
	lsr	r0, r0, #5
.LBE13189:
	.loc 52 913 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE764:
	.size	isFinalCapability, .-isFinalCapability
	.align	2
	.global	slotCapLongRunningDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	slotCapLongRunningDelete, %function
slotCapLongRunningDelete:
.LFB765:
	.loc 52 917 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3961:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, [r0]
.LVL3962:
	str	lr, [sp, #4]
.LBB13190:
.LBB13191:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r4, r4
.LVL3963:
	.loc 36 904 0
	andne	r4, r4, #15
.LBE13191:
.LBE13190:
	.loc 52 918 0
	cmp	r4, #0
	beq	.L3682
	.loc 52 920 0
	bl	isFinalCapability
.LVL3964:
	cmp	r0, #0
	beq	.L3662
	.loc 52 923 0
	cmp	r4, #12
	beq	.L3668
	cmp	r4, #46
	beq	.L3668
	cmp	r4, #10
	beq	.L3668
.L3682:
	.loc 52 929 0
	mov	r0, #0
.L3662:
	.loc 52 931 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L3668:
	.cfi_restore_state
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 52 927 0
	mov	r0, #1
	.loc 52 931 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE765:
	.size	slotCapLongRunningDelete, .-slotCapLongRunningDelete
	.align	2
	.global	updateCapData
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCapData, %function
updateCapData:
.LFB806:
	.loc 58 324 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3965:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	ip, r3
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	str	r6, [sp, #8]
	str	r3, [sp, #20]
.LBB13224:
.LBB13225:
.LBB13226:
.LBB13227:
	.loc 36 903 0
	and	r3, r3, #14
.LVL3966:
	cmp	r3, #14
.LBE13227:
.LBE13226:
.LBE13225:
.LBE13224:
	.loc 58 324 0
	str	lr, [sp, #12]
	ldr	lr, [sp, #24]
.LVL3967:
.LBB13231:
.LBB13230:
.LBB13229:
.LBB13228:
	.loc 36 905 0
	uxtbeq	r3, ip
	.loc 36 904 0
	andne	r3, ip, #15
.LBE13228:
.LBE13229:
.LBE13230:
.LBE13231:
	.loc 58 325 0
	tst	r3, #1
	bne	.L3698
	.loc 58 329 0
	cmp	r3, #6
	mov	r4, r0
	beq	.L3689
	cmp	r3, #10
	beq	.L3690
	cmp	r3, #4
	beq	.L3699
	.loc 58 365 0
	stm	r0, {ip, lr}
.LVL3968:
.L3683:
	.loc 58 367 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
.LVL3969:
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL3970:
	bx	lr
.LVL3971:
.L3698:
	.cfi_restore_state
.LBB13232:
.LBB13233:
	.loc 13 124 0
	stm	r0, {ip, lr}
	b	.L3683
.LVL3972:
.L3689:
.LBE13233:
.LBE13232:
	.loc 58 338 0
	cmp	r1, #0
	bne	.L3692
.LVL3973:
.LBB13234:
.LBB13235:
	.loc 36 1199 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #6
	bne	.L3700
.LBE13235:
.LBE13234:
	.loc 58 338 0
	lsrs	r3, lr, #4
	bne	.L3692
.LVL3974:
.LBB13237:
.LBB13238:
	.loc 36 1218 0
	orr	r2, lr, r2, lsl #4
.LVL3975:
	.loc 36 1219 0
	str	ip, [r0]
	str	r2, [r0, #4]
	b	.L3683
.LVL3976:
.L3699:
.LBE13238:
.LBE13237:
	.loc 58 331 0
	cmp	r1, #0
	bne	.L3692
.LVL3977:
.LBB13239:
.LBB13240:
	.loc 36 1151 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #4
	bne	.L3701
.LVL3978:
.LBE13240:
.LBE13239:
	.loc 58 331 0
	lsrs	r3, ip, #4
	beq	.L3702
.LVL3979:
.L3692:
.LBB13242:
.LBB13243:
	.loc 36 926 0
	mov	r3, #0
	str	r3, [r4]
	str	r3, [r4, #4]
.LVL3980:
	b	.L3683
.LVL3981:
.L3690:
.LBE13243:
.LBE13242:
.LBB13244:
.LBB13245:
.LBB13246:
	.loc 36 1399 0
	and	r1, ip, #15
.LVL3982:
.LBE13246:
.LBE13245:
.LBB13249:
.LBB13250:
	.loc 36 390 0
	ubfx	r5, r2, #3, #5
.LVL3983:
.LBE13250:
.LBE13249:
.LBB13251:
.LBB13247:
	.loc 36 1399 0
	cmp	r1, #10
	bne	.L3703
	.loc 36 1402 0
	ubfx	r1, lr, #18, #5
.LBE13247:
.LBE13251:
	.loc 58 350 0
	add	r1, r1, r5
	cmp	r1, #32
	bhi	.L3692
.LVL3984:
.LBB13252:
.LBB13253:
.LBB13254:
	.loc 36 379 0
	ubfx	r2, r2, #8, #18
.LVL3985:
.LBE13254:
.LBE13253:
	.loc 58 355 0
	mvn	r1, #0
	.loc 58 360 0
	str	ip, [r0]
.LBB13255:
.LBB13256:
	.loc 36 1432 0
	mov	r3, #0
.LBE13256:
.LBE13255:
	.loc 58 355 0
	bic	r2, r2, r1, lsl r5
.LBB13258:
.LBB13257:
	.loc 36 1432 0
	movt	r3, 61564
	and	r3, r3, lr
.LBE13257:
.LBE13258:
.LBB13259:
.LBB13260:
	.loc 36 1391 0
	orr	r2, r3, r2
	.loc 36 1392 0
	orr	r2, r2, r5, lsl #23
.LBE13260:
.LBE13259:
	.loc 58 360 0
	str	r2, [r0, #4]
.LVL3986:
	b	.L3683
.LVL3987:
.L3702:
.LBE13252:
.LBE13244:
.LBB13262:
.LBB13263:
	.loc 36 1170 0
	lsl	r2, r2, #4
.LVL3988:
	orr	r2, r2, #4
	.loc 36 1171 0
	stm	r0, {r2, lr}
	b	.L3683
.LVL3989:
.L3703:
.LBE13263:
.LBE13262:
.LBB13264:
.LBB13261:
.LBB13248:
	bl	cap_cnode_cap_get_capCNodeRadix.part.100
.LVL3990:
.L3701:
.LBE13248:
.LBE13261:
.LBE13264:
.LBB13265:
.LBB13241:
	bl	cap_endpoint_cap_get_capEPBadge.isra.111.part.112
.LVL3991:
.L3700:
.LBE13241:
.LBE13265:
.LBB13266:
.LBB13236:
	bl	cap_notification_cap_get_capNtfnBadge.part.244
.LVL3992:
.LBE13236:
.LBE13266:
	.cfi_endproc
.LFE806:
	.size	updateCapData, .-updateCapData
	.align	2
	.global	maskCapRights
	.syntax unified
	.arm
	.fpu softvfp
	.type	maskCapRights, %function
maskCapRights:
.LFB807:
	.loc 58 371 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3993:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL3994:
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 58 371 0
	stm	sp, {r2, r3}
	mov	r3, r2
.LVL3995:
.LBB13299:
.LBB13300:
.LBB13301:
.LBB13302:
	.loc 36 903 0
	and	r2, r2, #14
.LVL3996:
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r0, r3
.LVL3997:
	.loc 36 904 0
	andne	r0, r3, #15
.LBE13302:
.LBE13301:
.LBE13300:
.LBE13299:
	.loc 58 372 0
	tst	r0, #1
	bne	.L3717
	ldr	r2, [sp, #4]
	.loc 58 376 0
	cmp	r0, #62
	ldrls	pc, [pc, r0, asl #2]
	b	.L3709
.L3711:
	.word	.L3710
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3712
	.word	.L3709
	.word	.L3713
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3710
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3709
	.word	.L3710
.L3717:
	.loc 58 373 0
	ldm	sp, {r2, r3}
.LVL3998:
	mov	r0, r4
	bl	Arch_maskCapRights
.LVL3999:
.L3704:
	.loc 58 420 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL4000:
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4001:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4002:
.L3713:
	.cfi_restore_state
.LBB13303:
.LBB13304:
.LBB13305:
	.loc 36 1251 0
	and	r0, r3, #15
	cmp	r0, #6
	bne	.L3718
.LVL4003:
.LBE13305:
.LBE13304:
	.loc 58 407 0
	and	r0, r2, r1
.LVL4004:
.LBB13307:
.LBB13308:
	.loc 36 1270 0
	bic	r2, r2, #3
.LVL4005:
.LBE13308:
.LBE13307:
	.loc 58 414 0
	str	r3, [r4]
.LBB13309:
.LBB13310:
	.loc 36 1244 0
	mov	r1, r0
.LVL4006:
.LBE13310:
.LBE13309:
	.loc 58 407 0
	and	r0, r0, #1
.LBB13312:
.LBB13311:
	.loc 36 1243 0
	orr	r2, r2, r0
	.loc 36 1244 0
	and	r3, r1, #2
.LVL4007:
	orr	r3, r2, r3
.LBE13311:
.LBE13312:
	.loc 58 414 0
	str	r3, [r4, #4]
.LVL4008:
	b	.L3704
.LVL4009:
.L3710:
.LBE13303:
	.loc 58 386 0
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L3704
.L3712:
.LVL4010:
.LBB13314:
.LBB13315:
.LBB13316:
	.loc 36 1125 0
	and	r0, r3, #15
	cmp	r0, #4
	bne	.L3719
.LVL4011:
.LBE13316:
.LBE13315:
	.loc 58 391 0
	and	ip, r2, r1
.LVL4012:
.LBB13318:
.LBB13319:
	.loc 36 1144 0
	bic	r0, r2, #3
.LBE13319:
.LBE13318:
	.loc 58 401 0
	str	r3, [r4]
	.loc 58 391 0
	and	ip, ip, #1
.LVL4013:
.LBB13320:
.LBB13321:
	.loc 36 1118 0
	and	r3, r1, r2
.LVL4014:
	.loc 36 1117 0
	orr	r0, r0, ip
	.loc 36 1118 0
	and	r3, r3, #2
.LVL4015:
	orr	r0, r0, r3
.LBE13321:
.LBE13320:
.LBB13322:
.LBB13323:
	.loc 36 1092 0
	and	r2, r2, r1
.LVL4016:
	.loc 36 1091 0
	bic	r0, r0, #4
	.loc 36 1092 0
	and	r2, r2, #4
.LVL4017:
	orr	r2, r0, r2
.LBE13323:
.LBE13322:
	.loc 58 401 0
	str	r2, [r4, #4]
.LVL4018:
	b	.L3704
.LVL4019:
.L3709:
.LBE13314:
	.loc 58 418 0
	movw	r1, #:lower16:.LC221
.LVL4020:
	movw	r0, #:lower16:.LC222
	ldr	r3, .L3720
.LVL4021:
	movt	r1, #:upper16:.LC221
	movt	r0, #:upper16:.LC222
	movw	r2, #418
.LVL4022:
	bl	_fail
.LVL4023:
.L3718:
.LBB13325:
.LBB13313:
.LBB13306:
	bl	cap_notification_cap_get_capNtfnCanSend.part.263
.LVL4024:
.L3719:
.LBE13306:
.LBE13313:
.LBE13325:
.LBB13326:
.LBB13324:
.LBB13317:
	bl	cap_endpoint_cap_get_capCanSend.part.104
.LVL4025:
.L3721:
	.align	2
.L3720:
	.word	.LANCHOR5-3748
.LBE13317:
.LBE13324:
.LBE13326:
	.cfi_endproc
.LFE807:
	.size	maskCapRights, .-maskCapRights
	.align	2
	.global	tcbSchedEnqueue
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbSchedEnqueue, %function
tcbSchedEnqueue:
.LFB817:
	.loc 27 79 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4026:
.LBB13327:
.LBB13328:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE13328:
.LBE13327:
	.loc 27 80 0
	tst	r3, #1
	bne	.L3722
	b	tcbSchedEnqueue.part.280
.LVL4027:
.L3722:
	.loc 27 105 0
	bx	lr
	.cfi_endproc
.LFE817:
	.size	tcbSchedEnqueue, .-tcbSchedEnqueue
	.align	2
	.global	tcbSchedAppend
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbSchedAppend, %function
tcbSchedAppend:
.LFB818:
	.loc 27 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4028:
.LBB13329:
.LBB13330:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE13330:
.LBE13329:
	.loc 27 111 0
	tst	r3, #1
	bne	.L3724
	b	tcbSchedAppend.part.289
.LVL4029:
.L3724:
	.loc 27 136 0
	bx	lr
	.cfi_endproc
.LFE818:
	.size	tcbSchedAppend, .-tcbSchedAppend
	.align	2
	.global	tcbSchedDequeue
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbSchedDequeue, %function
tcbSchedDequeue:
.LFB819:
	.loc 27 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4030:
	ldr	r3, [r0, #452]
	.loc 27 142 0
	tst	r3, #1
	bxeq	lr
.LVL4031:
.LBB13331:
.LBB13332:
.LBB13333:
	.loc 46 25 0
	ldr	r2, [r0, #480]
.LBE13333:
.LBE13332:
.LBE13331:
	.loc 27 141 0
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
.LBB13348:
	.loc 27 149 0
	ldr	r6, [r0, #488]
.LVL4032:
.LBE13348:
	.loc 27 141 0
	str	r8, [sp, #16]
	str	lr, [sp, #20]
.LBB13349:
.LBB13336:
.LBB13334:
	.loc 46 25 0
	cmp	r2, #0
	bne	.L3741
.LVL4033:
.LBE13334:
.LBE13336:
	.loc 27 153 0
	ldr	r1, [r0, #508]
	.loc 27 151 0
	movw	r2, #:lower16:ksReadyQueues
	movt	r2, #:upper16:ksReadyQueues
	add	ip, r2, r6, lsl #3
	ldr	r4, [r2, r6, lsl #3]
.LVL4034:
	.loc 27 153 0
	cmp	r1, #0
	.loc 27 151 0
	ldr	r5, [ip, #4]
.LVL4035:
	.loc 27 153 0
	beq	.L3729
	.loc 27 154 0
	ldr	lr, [r0, #504]
	str	lr, [r1, #504]
	.loc 27 162 0
	ldr	lr, [r0, #504]
	cmp	lr, #0
	moveq	r5, r1
.LVL4036:
	beq	.L3731
.L3730:
	.loc 27 163 0
	str	r1, [lr, #508]
.LVL4037:
.L3731:
.LBB13337:
.LBB13338:
	.loc 36 90 0
	bic	r3, r3, #1
.LBE13338:
.LBE13337:
	.loc 27 168 0
	str	r4, [r2, r6, lsl #3]
.LBE13349:
	.loc 27 172 0
	ldrd	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LBB13350:
	.loc 27 168 0
	str	r5, [ip, #4]
.LVL4038:
.LBE13350:
	.loc 27 172 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
.LBB13351:
.LBB13340:
.LBB13339:
	.loc 36 91 0
	str	r3, [r0, #452]
.LVL4039:
.LBE13339:
.LBE13340:
.LBE13351:
	.loc 27 172 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4040:
.L3729:
	.cfi_restore_state
.LBB13352:
	.loc 27 156 0
	ldr	r4, [r0, #504]
.LVL4041:
	.loc 27 157 0
	cmp	r4, #0
	bne	.L3733
.LVL4042:
.LBB13341:
.LBB13342:
.LBB13343:
.LBB13344:
	.loc 46 33 0
	lsr	r7, r6, #5
.LVL4043:
.LBE13344:
.LBE13343:
	.loc 27 70 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r5, [r1, r7, lsl #2]
.LVL4044:
	and	lr, r6, #31
	mov	r8, #1
	bic	lr, r5, r8, lsl lr
	.loc 27 71 0
	cmp	lr, #0
	.loc 27 70 0
	str	lr, [r1, r7, lsl #2]
	.loc 27 71 0
	beq	.L3742
.L3732:
.LVL4045:
.LBE13342:
.LBE13341:
	.loc 27 153 0
	mov	r5, #0
	b	.L3731
.LVL4046:
.L3733:
	mov	lr, r4
	b	.L3730
.LVL4047:
.L3742:
.LBB13346:
.LBB13345:
	.loc 27 72 0
	movw	r1, #:lower16:ksReadyQueuesL1Bitmap
	movt	r1, #:upper16:ksReadyQueuesL1Bitmap
	ldr	lr, [r1]
	bic	r7, lr, r8, lsl r7
	str	r7, [r1]
	b	.L3732
.LVL4048:
.L3741:
.LBE13345:
.LBE13346:
.LBB13347:
.LBB13335:
	bl	ready_queues_index.part.240
.LVL4049:
.LBE13335:
.LBE13347:
.LBE13352:
	.cfi_endproc
.LFE819:
	.size	tcbSchedDequeue, .-tcbSchedDequeue
	.align	2
	.global	switchToThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	switchToThread, %function
switchToThread:
.LFB709:
	.loc 28 326 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4050:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL4051:
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB13353:
.LBB13354:
	.loc 9 22 0
	bl	setVMRoot
.LVL4052:
.LBB13355:
.LBB13356:
	.loc 17 116 0
	add	r3, sp, #4
	.syntax divided
@ 116 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	strex r0, r1, [r3]
@ 0 "" 2
.LVL4053:
	.arm
	.syntax unified
.LBE13356:
.LBE13355:
.LBE13354:
.LBE13353:
	.loc 28 331 0
	mov	r0, r4
	bl	tcbSchedDequeue
.LVL4054:
	.loc 28 332 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	str	r4, [r3]
	.loc 28 333 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4055:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE709:
	.size	switchToThread, .-switchToThread
	.align	2
	.global	chooseThread
	.syntax unified
	.arm
	.fpu softvfp
	.type	chooseThread, %function
chooseThread:
.LFB708:
	.loc 28 300 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4056:
	.loc 28 311 0
	movw	r3, #:lower16:ksReadyQueuesL1Bitmap
	.loc 28 300 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 28 311 0
	movt	r3, #:upper16:ksReadyQueuesL1Bitmap
	ldr	r3, [r3]
	.loc 28 300 0
	str	lr, [sp, #4]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 28 311 0
	cmp	r3, #0
	beq	.L3746
.LVL4057:
.LBB13395:
.LBB13396:
.LBB13397:
	.loc 15 105 0
	clz	r3, r3
.LVL4058:
.LBE13397:
.LBE13396:
	.loc 28 313 0
	movw	r2, #:lower16:ksReadyQueuesL2Bitmap
	.loc 28 312 0
	rsb	r3, r3, #31
.LVL4059:
	.loc 28 313 0
	movt	r2, #:upper16:ksReadyQueuesL2Bitmap
.LBB13398:
.LBB13399:
	.loc 15 105 0
	ldr	r2, [r2, r3, lsl #2]
.LBE13399:
.LBE13398:
	.loc 28 315 0
	movw	r1, #:lower16:ksReadyQueues
	movt	r1, #:upper16:ksReadyQueues
.LBB13401:
.LBB13400:
	.loc 15 105 0
	clz	r2, r2
.LVL4060:
.LBE13400:
.LBE13401:
	.loc 28 313 0
	rsb	r2, r2, #31
.LVL4061:
	.loc 28 314 0
	orr	r3, r2, r3, lsl #5
.LVL4062:
	.loc 28 315 0
	ldr	r4, [r1, r3, lsl #3]
.LVL4063:
	.loc 28 316 0
	cmp	r4, #0
	beq	.L3754
.LVL4064:
.LBB13402:
.LBB13403:
.LBB13404:
.LBB13405:
	.loc 36 116 0
	ldr	r3, [r4, #448]
.LVL4065:
	and	r3, r3, #15
.LBE13405:
.LBE13404:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bhi	.L3748
.LVL4066:
.LBE13403:
.LBE13402:
.LBB13406:
.LBB13407:
.LBB13408:
.LBB13409:
	.loc 9 22 0
	mov	r0, r4
	bl	setVMRoot
.LVL4067:
.LBB13410:
.LBB13411:
	.loc 17 116 0
	add	r3, sp, #4
	.syntax divided
@ 116 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	strex r0, r1, [r3]
@ 0 "" 2
.LVL4068:
	.arm
	.syntax unified
.LBE13411:
.LBE13410:
.LBE13409:
.LBE13408:
	.loc 28 331 0
	mov	r0, r4
	bl	tcbSchedDequeue
.LVL4069:
	.loc 28 332 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	str	r4, [r3]
.LBE13407:
.LBE13406:
.LBE13395:
	.loc 28 322 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4070:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4071:
.L3748:
	.cfi_restore_state
.LBB13412:
	.loc 28 317 0
	movw	r1, #:lower16:.LC105
	movw	r0, #:lower16:.LC224
	ldr	r3, .L3755
	movt	r1, #:upper16:.LC105
	movt	r0, #:upper16:.LC224
	movw	r2, #317
.LVL4072:
	bl	_assert_fail
.LVL4073:
.L3746:
.LBE13412:
	.loc 28 320 0
	bl	switchToIdleThread
.LVL4074:
	.loc 28 322 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4075:
.L3754:
	.cfi_restore_state
.LBB13413:
.LBB13414:
.LBB13415:
	.loc 28 316 0
	movw	r1, #:lower16:.LC105
	movw	r0, #:lower16:.LC223
	ldr	r3, .L3755
.LVL4076:
	movt	r1, #:upper16:.LC105
	movt	r0, #:upper16:.LC223
	mov	r2, #316
.LVL4077:
	bl	_assert_fail
.LVL4078:
.L3756:
	.align	2
.L3755:
	.word	.LANCHOR5-3732
.LBE13415:
.LBE13414:
.LBE13413:
	.cfi_endproc
.LFE708:
	.size	chooseThread, .-chooseThread
	.align	2
	.global	schedule
	.syntax unified
	.arm
	.fpu softvfp
	.type	schedule, %function
schedule:
.LFB707:
	.loc 28 270 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 28 273 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	.loc 28 270 0
	str	r6, [sp, #8]
	.loc 28 273 0
	ldr	r5, [r4]
.LVL4079:
	.loc 28 270 0
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 28 274 0
	cmn	r5, #1
	beq	.L3780
	.loc 28 283 0
	cmp	r5, #0
	beq	.L3757
	.loc 28 284 0
	movw	r6, #:lower16:ksCurThread
	movt	r6, #:upper16:ksCurThread
	ldr	r0, [r6]
.LVL4080:
.LBB13456:
.LBB13457:
.LBB13458:
.LBB13459:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
.LBE13459:
.LBE13458:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bhi	.L3764
.LVL4081:
.LBE13457:
.LBE13456:
.LBB13460:
.LBB13461:
.LBB13462:
.LBB13463:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE13463:
.LBE13462:
	.loc 27 80 0
	tst	r3, #1
	beq	.L3781
.LVL4082:
.L3764:
.LBE13461:
.LBE13460:
.LBB13465:
.LBB13466:
.LBB13467:
.LBB13468:
	.loc 9 22 0
	mov	r0, r5
	bl	setVMRoot
.LVL4083:
.LBB13469:
.LBB13470:
	.loc 17 116 0
	add	r3, sp, #4
	.syntax divided
@ 116 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	strex r0, r1, [r3]
@ 0 "" 2
	.arm
	.syntax unified
.LBE13470:
.LBE13469:
.LBE13468:
.LBE13467:
	.loc 28 331 0
	mov	r0, r5
	bl	tcbSchedDequeue
.LVL4084:
.LBE13466:
.LBE13465:
	.loc 28 289 0
	mov	r3, #0
.LBB13472:
.LBB13471:
	.loc 28 332 0
	str	r5, [r6]
.LBE13471:
.LBE13472:
	.loc 28 289 0
	str	r3, [r4]
.L3757:
	.loc 28 296 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4085:
.L3780:
	.cfi_restore_state
.LBB13473:
.LBB13474:
	.loc 28 275 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL4086:
.LBB13475:
.LBB13476:
.LBB13477:
.LBB13478:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
.LBE13478:
.LBE13477:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bls	.L3782
.LVL4087:
.L3759:
.LBE13476:
.LBE13475:
	.loc 28 278 0
	movw	r2, #:lower16:ksDomainTime
	movt	r2, #:upper16:ksDomainTime
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L3761
.LBB13479:
.LBB13480:
	.loc 28 259 0
	movw	r1, #:lower16:ksDomScheduleIdx
	.loc 28 263 0
	movw	ip, #:lower16:ksWorkUnitsCompleted
	.loc 28 259 0
	movt	r1, #:upper16:ksDomScheduleIdx
	.loc 28 264 0
	movw	r0, #:lower16:ksCurDomain
	.loc 28 259 0
	ldr	r5, [r1]
.LVL4088:
	.loc 28 263 0
	movt	ip, #:upper16:ksWorkUnitsCompleted
	.loc 28 264 0
	movt	r0, #:upper16:ksCurDomain
	.loc 28 265 0
	mov	lr, #1
	.loc 28 264 0
	str	r3, [r0]
	.loc 28 263 0
	str	r3, [ip]
	.loc 28 261 0
	cmn	r5, #1
	.loc 28 265 0
	str	lr, [r2]
	.loc 28 261 0
	moveq	r3, #0
	str	r3, [r1]
.L3761:
.LBE13480:
.LBE13479:
	.loc 28 281 0
	bl	chooseThread
.LVL4089:
	.loc 28 282 0
	mov	r3, #0
	str	r3, [r4]
	b	.L3757
.LVL4090:
.L3782:
.LBB13481:
.LBB13482:
.LBB13483:
.LBB13484:
	.loc 36 78 0
	ldr	r3, [r0, #452]
.LBE13484:
.LBE13483:
	.loc 27 80 0
	tst	r3, #1
	bne	.L3759
	bl	tcbSchedEnqueue.part.280
.LVL4091:
	b	.L3759
.LVL4092:
.L3781:
.LBE13482:
.LBE13481:
.LBE13474:
.LBE13473:
.LBB13485:
.LBB13464:
	bl	tcbSchedEnqueue.part.280
.LVL4093:
	ldr	r5, [r4]
.LVL4094:
	b	.L3764
.LBE13464:
.LBE13485:
	.cfi_endproc
.LFE707:
	.size	schedule, .-schedule
	.align	2
	.global	setDomain
	.syntax unified
	.arm
	.fpu softvfp
	.type	setDomain, %function
setDomain:
.LFB711:
	.loc 28 347 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4095:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	mov	r5, r1
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 28 348 0
	bl	tcbSchedDequeue
.LVL4096:
.LBB13486:
.LBB13487:
.LBB13488:
.LBB13489:
	.loc 36 116 0
	ldr	r3, [r4, #448]
.LBE13489:
.LBE13488:
.LBE13487:
.LBE13486:
	.loc 28 349 0
	str	r5, [r4, #480]
.LVL4097:
.LBB13493:
.LBB13492:
.LBB13491:
.LBB13490:
	.loc 36 116 0
	and	r3, r3, #15
.LBE13490:
.LBE13491:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bhi	.L3784
.LVL4098:
.LBE13492:
.LBE13493:
.LBB13494:
.LBB13495:
.LBB13496:
.LBB13497:
	.loc 36 78 0
	ldr	r3, [r4, #452]
.LBE13497:
.LBE13496:
	.loc 27 80 0
	tst	r3, #1
	beq	.L3792
.LVL4099:
.L3784:
.LBE13495:
.LBE13494:
	.loc 28 353 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L3793
	.loc 28 356 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL4100:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4101:
.L3792:
	.cfi_restore_state
.LBB13499:
.LBB13498:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL4102:
	b	.L3784
.LVL4103:
.L3793:
.LBE13498:
.LBE13499:
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4104:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 28 354 0
	b	rescheduleRequired
.LVL4105:
	.cfi_endproc
.LFE711:
	.size	setDomain, .-setDomain
	.align	2
	.global	setPriority
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPriority, %function
setPriority:
.LFB713:
	.loc 28 366 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4106:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	mov	r5, r1
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 28 367 0
	bl	tcbSchedDequeue
.LVL4107:
.LBB13500:
.LBB13501:
.LBB13502:
.LBB13503:
	.loc 36 116 0
	ldr	r3, [r4, #448]
.LBE13503:
.LBE13502:
.LBE13501:
.LBE13500:
	.loc 28 368 0
	str	r5, [r4, #488]
.LVL4108:
.LBB13507:
.LBB13506:
.LBB13505:
.LBB13504:
	.loc 36 116 0
	and	r3, r3, #15
.LBE13504:
.LBE13505:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bhi	.L3795
.LVL4109:
.LBE13506:
.LBE13507:
.LBB13508:
.LBB13509:
.LBB13510:
.LBB13511:
	.loc 36 78 0
	ldr	r3, [r4, #452]
.LBE13511:
.LBE13510:
	.loc 27 80 0
	tst	r3, #1
	beq	.L3803
.LVL4110:
.L3795:
.LBE13509:
.LBE13508:
	.loc 28 372 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L3804
	.loc 28 375 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL4111:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4112:
.L3803:
	.cfi_restore_state
.LBB13513:
.LBB13512:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL4113:
	b	.L3795
.LVL4114:
.L3804:
.LBE13512:
.LBE13513:
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4115:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 28 373 0
	b	rescheduleRequired
.LVL4116:
	.cfi_endproc
.LFE713:
	.size	setPriority, .-setPriority
	.align	2
	.global	tcbDebugAppend
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbDebugAppend, %function
tcbDebugAppend:
.LFB820:
	.loc 27 176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4117:
	.loc 27 180 0
	movw	r3, #:lower16:ksDebugTCBs
	.loc 27 178 0
	mov	r1, #0
	.loc 27 180 0
	movt	r3, #:upper16:ksDebugTCBs
	ldr	r2, [r3]
	.loc 27 178 0
	str	r1, [r0, #524]
	.loc 27 185 0
	str	r0, [r3]
	.loc 27 180 0
	cmp	r2, r1
	.loc 27 181 0
	strne	r0, [r2, #524]
	.loc 27 184 0
	str	r2, [r0, #520]
	.loc 27 186 0
	bx	lr
	.cfi_endproc
.LFE820:
	.size	tcbDebugAppend, .-tcbDebugAppend
	.align	2
	.global	tcbDebugRemove
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbDebugRemove, %function
tcbDebugRemove:
.LFB821:
	.loc 27 189 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4118:
	.loc 27 190 0
	movw	r3, #:lower16:ksDebugTCBs
	.loc 27 189 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 27 190 0
	movt	r3, #:upper16:ksDebugTCBs
	ldr	r2, [r3]
	.loc 27 189 0
	str	lr, [sp, #4]
	.loc 27 190 0
	cmp	r2, #0
	beq	.L3820
	.loc 27 191 0
	cmp	r2, r0
	beq	.L3821
	.loc 27 194 0
	ldr	r3, [r0, #524]
	cmp	r3, #0
	beq	.L3822
	.loc 27 195 0
	ldr	r2, [r0, #520]
	str	r2, [r3, #520]
	ldr	r2, [r0, #520]
.L3813:
	.loc 27 198 0
	cmp	r2, #0
	.loc 27 204 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	.loc 27 199 0
	ldrne	r3, [r0, #524]
	strne	r3, [r2, #524]
	.loc 27 202 0
	mov	r3, #0
	.loc 27 203 0
	str	r3, [r0, #520]
	.loc 27 202 0
	str	r3, [r0, #524]
	.loc 27 204 0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L3821:
	.cfi_restore_state
	.loc 27 192 0
	ldr	r2, [r0, #520]
	str	r2, [r3]
	b	.L3813
.L3820:
	.loc 27 190 0 discriminator 1
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC225
.LVL4119:
	ldr	r3, .L3823
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC225
	mov	r2, #190
	bl	_assert_fail
.LVL4120:
.L3822:
.LBB13516:
.LBB13517:
	.loc 27 194 0
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC226
.LVL4121:
	ldr	r3, .L3823
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC226
	mov	r2, #194
	bl	_assert_fail
.LVL4122:
.L3824:
	.align	2
.L3823:
	.word	.LANCHOR5-3716
.LBE13517:
.LBE13516:
	.cfi_endproc
.LFE821:
	.size	tcbDebugRemove, .-tcbDebugRemove
	.align	2
	.global	finaliseCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	finaliseCap, %function
finaliseCap:
.LFB802:
	.loc 58 100 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4123:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	ip, r1
	mov	r4, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
.LVL4124:
	.loc 58 100 0
	mov	lr, sp
	stm	sp, {r1, r2}
.LVL4125:
.LBB13561:
.LBB13562:
.LBB13563:
.LBB13564:
	.loc 36 903 0
	and	r2, r1, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r1
	.loc 36 904 0
	andne	r2, r1, #15
.LBE13564:
.LBE13563:
.LBE13562:
.LBE13561:
	.loc 58 103 0
	ands	r1, r2, #1
	bne	.L3885
	.loc 58 109 0
	cmp	r2, #6
	ldr	r0, [sp, #4]
.LVL4126:
	beq	.L3831
	bhi	.L3832
	cmp	r2, #0
	beq	.L3840
	cmp	r2, #4
	bne	.L3830
	.loc 58 111 0
	cmp	r3, #0
	beq	.L3840
.LVL4127:
.LBB13565:
.LBB13566:
	.loc 36 1059 0
	and	ip, ip, #15
	cmp	ip, #4
	bne	.L3886
.LBE13566:
.LBE13565:
	.loc 58 112 0
	bic	r0, r0, #15
	bl	cancelAllIPC
.LVL4128:
.L3840:
	.loc 58 203 0
	mov	r3, #0
	mvn	r2, #0
	str	r3, [r4]
	str	r3, [r4, #4]
	strh	r2, [r4, #8]	@ movhi
.LVL4129:
.L3825:
	.loc 58 204 0
	mov	r0, r4
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4130:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4131:
.L3832:
	.cfi_restore_state
	.loc 58 109 0
	cmp	r2, #8
	beq	.L3840
	cmp	r2, #62
	beq	.L3840
.L3830:
	.loc 58 138 0
	ldr	r1, [sp, #40]
	cmp	r1, #0
	bne	.L3887
	.loc 58 142 0
	sub	r2, r2, #10
	cmp	r2, #36
	ldrls	pc, [pc, r2, asl #2]
	b	.L3840
.L3842:
	.word	.L3841
	.word	.L3840
	.word	.L3843
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3844
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3840
	.word	.L3845
.LVL4132:
.L3885:
	.loc 58 104 0
	ldm	sp, {r1, r2}
	add	r0, sp, #12
.LVL4133:
	bl	Arch_finaliseCap
.LVL4134:
	ldrd	r2, [sp, #12]
.LVL4135:
	.loc 58 106 0
	mvn	r1, #0
	strd	r2, [r4]
	strh	r1, [r4, #8]	@ movhi
	b	.L3825
.LVL4136:
.L3831:
	.loc 58 120 0
	cmp	r3, #0
	beq	.L3840
.LVL4137:
.LBB13568:
.LBB13569:
.LBB13570:
	.loc 36 1277 0
	and	r3, ip, #15
.LVL4138:
	cmp	r3, #6
	bne	.L3888
	.loc 36 1280 0
	bic	r0, ip, #15
.LVL4139:
	ldr	r3, [r0, #12]
.LVL4140:
.LBE13570:
.LBE13569:
.LBB13572:
.LBB13573:
	.loc 35 233 0
	bics	r2, r3, #15
.LVL4141:
	beq	.L3838
.LVL4142:
.LBB13574:
.LBB13575:
.LBB13576:
.LBB13577:
	.loc 36 163 0
	and	r3, r3, #15
	.loc 36 164 0
	str	r3, [r0, #12]
.LVL4143:
.LBE13577:
.LBE13576:
	.loc 35 224 0
	str	r1, [r2, #460]
.LVL4144:
.L3838:
.LBE13575:
.LBE13574:
.LBE13573:
.LBE13572:
	.loc 58 124 0
	bl	cancelAllSignals
.LVL4145:
	b	.L3840
.LVL4146:
.L3845:
.LBE13568:
	.loc 58 186 0
	mvn	r3, #0
.LVL4147:
	str	ip, [r4]
	str	r0, [r4, #4]
	strh	r3, [r4, #8]	@ movhi
	b	.L3825
.LVL4148:
.L3844:
	.loc 58 189 0
	cmp	r3, #0
	beq	.L3840
.LVL4149:
.LBB13579:
.LBB13580:
.LBB13581:
	.loc 36 2120 0
	uxtb	ip, ip
	cmp	ip, #30
	bne	.L3889
.LBE13581:
.LBE13580:
	.loc 58 190 0
	uxtb	r5, r0
.LVL4150:
	.loc 58 192 0
	mov	r0, r5
	bl	deletingIRQHandler
.LVL4151:
	.loc 58 196 0
	mov	r3, #0
	str	r3, [r4]
	str	r3, [r4, #4]
	strh	r5, [r4, #8]	@ movhi
	b	.L3825
.LVL4152:
.L3843:
.LBE13579:
	.loc 58 158 0
	cmp	r3, #0
	beq	.L3840
.LVL4153:
.LBB13584:
.LBB13585:
.LBB13586:
	.loc 36 1469 0
	and	r3, ip, #15
.LVL4154:
	cmp	r3, #12
	bne	.L3890
	.loc 36 1472 0
	bic	r5, ip, #15
.LVL4155:
.LBE13586:
.LBE13585:
	.loc 58 164 0
	bic	r6, ip, #1020
.LBB13588:
.LBB13589:
	.loc 35 242 0
	ldr	r3, [r5, #460]
.LBE13589:
.LBE13588:
	.loc 58 164 0
	bic	r6, r6, #3
.LVL4156:
.LBB13597:
.LBB13596:
	.loc 35 244 0
	cmp	r3, #0
	beq	.L3848
.LVL4157:
.LBB13590:
.LBB13591:
.LBB13592:
.LBB13593:
	.loc 36 163 0
	ldr	r2, [r3, #12]
.LBE13593:
.LBE13592:
	.loc 35 224 0
	mov	r1, #0
.LBB13595:
.LBB13594:
	.loc 36 163 0
	and	r2, r2, #15
	.loc 36 164 0
	str	r2, [r3, #12]
.LVL4158:
.LBE13594:
.LBE13595:
	.loc 35 224 0
	str	r1, [r5, #460]
.LVL4159:
.L3848:
.LBE13591:
.LBE13590:
.LBE13596:
.LBE13597:
	.loc 58 166 0
	mov	r0, r5
	bl	suspend
.LVL4160:
	.loc 58 168 0
	mov	r0, r5
	bl	tcbDebugRemove
.LVL4161:
.LBB13598:
.LBB13599:
	.loc 13 576 0
	ldr	r0, [r5, #440]
	cmp	r0, #0
	beq	.L3849
	.loc 13 577 0
	mov	r1, r5
	bl	dissociateVCPUTCB
.LVL4162:
.L3849:
.LBE13599:
.LBE13598:
	.loc 58 178 0
	eor	ip, r6, #5
.LVL4163:
	movw	r2, #8238
	mvn	r3, #0
	stm	r4, {r2, ip}
	strh	r3, [r4, #8]	@ movhi
	b	.L3825
.LVL4164:
.L3841:
.LBE13584:
	.loc 58 144 0
	cmp	r3, #0
	beq	.L3840
.LVL4165:
.LBB13601:
.LBB13602:
	.loc 36 1399 0
	and	r3, ip, #15
.LVL4166:
	cmp	r3, #10
	bne	.L3891
	.loc 36 1402 0
	ubfx	r0, r0, #18, #5
.LVL4167:
.LBE13602:
.LBE13601:
.LBB13604:
.LBB13605:
	.loc 36 1442 0
	bic	ip, ip, #31
.LVL4168:
.LBE13605:
.LBE13604:
	.loc 58 147 0
	mov	r3, #1
.LBB13606:
.LBB13607:
	.loc 39 96 0
	mvn	r2, #0
	.loc 39 93 0
	add	r1, r0, r3
.LVL4169:
	.loc 39 96 0
	eor	r3, ip, r3, lsl r0
.LBB13608:
.LBB13609:
	.loc 36 2140 0
	lsl	r0, r0, #8
.LVL4170:
.LBE13609:
.LBE13608:
.LBE13607:
.LBE13606:
	.loc 58 152 0
	strh	r2, [r4, #8]	@ movhi
.LBB13613:
.LBB13612:
	.loc 39 96 0
	bic	r3, r3, r2, lsl r1
.LBB13611:
.LBB13610:
	.loc 36 2141 0
	orr	r0, r0, #46
.LBE13610:
.LBE13611:
	.loc 39 96 0
	eor	ip, ip, r3
.LVL4171:
.LBE13612:
.LBE13613:
	.loc 58 152 0
	stm	r4, {r0, ip}
	b	.L3825
.LVL4172:
.L3887:
	.loc 58 139 0
	movw	r1, #:lower16:.LC221
	movw	r0, #:lower16:.LC227
	ldr	r3, .L3892
.LVL4173:
	movt	r1, #:upper16:.LC221
	movt	r0, #:upper16:.LC227
	mov	r2, #139
	bl	_fail
.LVL4174:
.L3891:
.LBB13614:
.LBB13603:
	bl	cap_cnode_cap_get_capCNodeRadix.part.100
.LVL4175:
.L3890:
.LBE13603:
.LBE13614:
.LBB13615:
.LBB13600:
.LBB13587:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL4176:
.L3889:
.LBE13587:
.LBE13600:
.LBE13615:
.LBB13616:
.LBB13583:
.LBB13582:
	bl	cap_irq_handler_cap_get_capIRQ.part.276
.LVL4177:
.L3886:
.LBE13582:
.LBE13583:
.LBE13616:
.LBB13617:
.LBB13567:
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL4178:
.L3888:
.LBE13567:
.LBE13617:
.LBB13618:
.LBB13578:
.LBB13571:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL4179:
.L3893:
	.align	2
.L3892:
	.word	.LANCHOR5-3700
.LBE13571:
.LBE13578:
.LBE13618:
	.cfi_endproc
.LFE802:
	.size	finaliseCap, .-finaliseCap
	.align	2
	.global	cteDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteDelete, %function
cteDelete:
.LFB752:
	.loc 52 586 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4180:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB13713:
.LBB13714:
.LBB13715:
.LBB13716:
	.loc 6 24 0
	movw	r5, #:lower16:ksWorkUnitsCompleted
.LBE13716:
.LBE13715:
.LBE13714:
.LBE13713:
	.loc 52 586 0
	mov	r4, r0
	strd	r6, [sp, #8]
.LBB13830:
.LBB13826:
.LBB13719:
.LBB13717:
	.loc 6 24 0
	movt	r5, #:upper16:ksWorkUnitsCompleted
.LBE13717:
.LBE13719:
.LBE13826:
.LBE13830:
	.loc 52 586 0
	mov	r6, r1
.LVL4181:
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
.LVL4182:
.L3895:
.LBB13831:
.LBB13827:
	.loc 52 663 0
	mov	r7, #0
.L3932:
	ldr	r3, [r4]
.LVL4183:
.LBB13720:
.LBB13721:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4184:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE13721:
.LBE13720:
	.loc 52 661 0
	cmp	r3, #0
	beq	.L3958
	.loc 52 662 0
	mov	r0, r4
	bl	isFinalCapability
.LVL4185:
	.loc 52 663 0
	mov	r3, r0
	str	r7, [sp]
	add	r0, sp, #12
.LVL4186:
	ldm	r4, {r1, r2}
	bl	finaliseCap
.LVL4187:
	ldr	r3, [sp, #12]
	ldrh	r1, [sp, #20]
.LVL4188:
.LBB13722:
.LBB13723:
.LBB13724:
.LBB13725:
	.loc 36 903 0
	and	ip, r3, #14
	cmp	ip, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL4189:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE13725:
.LBE13724:
	.loc 52 633 0
	cmp	r2, #0
	beq	.L3901
	cmp	r2, #46
	bne	.L3959
.LVL4190:
.LBB13726:
.LBB13727:
.LBB13728:
.LBB13729:
.LBB13730:
.LBB13731:
.LBB13732:
	.loc 36 2177 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L3918
	.loc 36 2180 0
	lsr	r0, r3, #8
	ldr	lr, [sp, #16]
	and	r8, r0, #63
.LVL4191:
.LBE13732:
.LBE13731:
	.loc 39 103 0
	cmp	r8, #32
	beq	.L3900
.LVL4192:
.LBE13730:
.LBE13729:
	.loc 39 113 0
	mvn	r9, #0
.LBB13737:
.LBB13735:
	.loc 39 106 0
	and	r3, r0, #31
.LVL4193:
.LBE13735:
.LBE13737:
	.loc 39 113 0
	add	r3, r3, #1
	mov	r2, r9
	bic	r9, lr, r9, lsl r3
.LVL4194:
	lsl	r3, r2, r3
.L3930:
.LVL4195:
.LBE13728:
.LBE13727:
	.loc 52 639 0
	cmp	r9, #0
	beq	.L3901
.LVL4196:
.LBB13741:
.LBB13742:
	.loc 39 120 0
	and	r3, r3, lr
.LBE13742:
.LBE13741:
.LBE13726:
.LBE13723:
.LBE13722:
	.loc 52 665 0
	cmp	r4, r3
	cmpeq	r9, #1
	beq	.L3901
	.loc 52 672 0
	ldrd	r2, [sp, #12]
	.loc 52 674 0
	cmp	r6, #0
	.loc 52 672 0
	strd	r2, [r4]
	.loc 52 674 0
	bne	.L3904
.LVL4197:
.LBB13752:
.LBB13753:
.LBB13754:
.LBB13755:
	.loc 36 903 0
	cmp	ip, #14
	beq	.L3960
.LVL4198:
.L3904:
	ldr	r3, [r4]
.LVL4199:
.LBE13755:
.LBE13754:
.LBE13753:
.LBE13752:
.LBB13761:
.LBB13762:
.LBB13763:
.LBB13764:
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L3961
.LVL4200:
.L3907:
.LBE13764:
.LBE13763:
	.loc 52 710 0
	movw	r1, #:lower16:.LC206
.LVL4201:
	movw	r0, #:lower16:.LC229
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC229
	movw	r2, #710
	bl	_assert_fail
.LVL4202:
.L3959:
.LBE13762:
.LBE13761:
.LBB13816:
.LBB13749:
.LBB13745:
.LBB13746:
	.loc 52 642 0
	movw	r1, #:lower16:.LC206
.LVL4203:
	movw	r0, #:lower16:.LC228
	ldr	r3, .L3967+4
.LVL4204:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC228
	movw	r2, #642
	bl	_fail
.LVL4205:
.L3961:
.LBE13746:
.LBE13745:
.LBE13749:
.LBE13816:
.LBB13817:
.LBB13811:
.LBB13766:
.LBB13765:
	.loc 36 905 0
	uxtb	r2, r3
.LBE13765:
.LBE13766:
	.loc 52 710 0
	cmp	r2, #46
	bne	.L3907
.LVL4206:
.LBB13767:
.LBB13768:
.LBB13769:
.LBB13770:
.LBB13771:
.LBB13772:
	.loc 36 2180 0
	lsr	r3, r3, #8
	ldr	r10, [r4, #4]
.LVL4207:
	and	r9, r3, #63
.LBE13772:
.LBE13771:
	.loc 39 103 0
	cmp	r9, #32
	beq	.L3909
.LVL4208:
.LBE13770:
.LBE13769:
	.loc 39 120 0
	mvn	r8, #0
.LBB13774:
.LBB13773:
	.loc 39 106 0
	and	r3, r3, #31
.LBE13773:
.LBE13774:
	.loc 39 120 0
	add	r3, r3, #1
	mov	r2, r8
	and	r8, r10, r8, lsl r3
.LVL4209:
	mvn	r3, r2, lsl r3
.L3933:
.LVL4210:
.LBE13768:
.LBE13767:
	.loc 52 716 0
	ands	r10, r3, r10
.LVL4211:
	beq	.L3962
	.loc 52 718 0
	cmp	r6, #0
	bne	.L3963
	.loc 52 754 0
	cmp	r4, r8
	beq	.L3964
	ldr	r3, [r8]
.LVL4212:
.LBB13776:
.LBB13777:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L3965
.LVL4213:
.L3925:
.LBE13777:
.LBE13776:
.LBB13779:
.LBB13780:
	mov	r0, r8
	mov	r1, r4
	bl	capSwapForDelete.part.249
.LVL4214:
.L3916:
.LBE13780:
.LBE13779:
.LBE13811:
.LBE13817:
.LBB13818:
.LBB13718:
	.loc 6 24 0
	ldr	r3, [r5]
	add	r3, r3, #1
	.loc 6 34 0
	cmp	r3, #99
	.loc 6 24 0
	str	r3, [r5]
	.loc 6 34 0
	bls	.L3932
	bl	preemptionPoint.part.63
.LVL4215:
.LBE13718:
.LBE13818:
	.loc 52 690 0
	cmp	r0, #0
	beq	.L3895
.LVL4216:
.L3894:
.LBE13827:
.LBE13831:
	.loc 52 598 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4217:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4218:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4219:
.L3963:
	.cfi_restore_state
.LBB13832:
.LBB13828:
.LBB13819:
.LBB13812:
.LBB13781:
	.loc 52 719 0
	sub	fp, r10, #-268435455
	.loc 52 721 0
	mov	r1, #0
.LVL4220:
	.loc 52 719 0
	add	fp, r8, fp, lsl #4
.LVL4221:
	.loc 52 721 0
	mov	r0, fp
	bl	cteDelete
.LVL4222:
	.loc 52 722 0
	cmp	r0, #0
	bne	.L3894
	ldr	r3, [r4]
.LVL4223:
.LBB13782:
.LBB13783:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL4224:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE13783:
.LBE13782:
	.loc 52 726 0
	cmp	r2, #0
	beq	.L3916
	cmp	r2, #46
	bne	.L3951
.LVL4225:
.LBB13784:
.LBB13785:
.LBB13786:
.LBB13787:
.LBB13788:
.LBB13789:
.LBB13790:
	.loc 36 2177 0
	uxtb	r2, r3
	ldr	r1, [r4, #4]
.LVL4226:
	cmp	r2, #46
	bne	.L3918
	.loc 36 2180 0
	lsr	r3, r3, #8
	and	r0, r3, #63
.LVL4227:
.LBE13790:
.LBE13789:
	.loc 39 103 0
	cmp	r0, #32
	beq	.L3919
.LVL4228:
	.loc 39 106 0
	and	r3, r3, #31
.LBE13788:
.LBE13787:
	.loc 39 120 0
	mvn	r2, #0
	add	r3, r3, #1
	and	r2, r1, r2, lsl r3
.LVL4229:
.LBE13786:
.LBE13785:
	.loc 52 734 0
	cmp	r8, r2
	mvneq	ip, #0
	mvneq	r3, ip, lsl r3
	beq	.L3934
.LVL4230:
.L3920:
	.loc 52 744 0
	sub	r8, r4, r8
.LVL4231:
	clz	r8, r8
	lsr	r8, r8, #5
	cmp	r4, r2
	moveq	r2, r8
	orrne	r2, r8, #1
.LVL4232:
	cmp	r2, #0
	beq	.L3916
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC232
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC232
	mov	r2, #744
	bl	_assert_fail
.LVL4233:
.L3960:
.LBE13784:
.LBE13781:
.LBE13812:
.LBE13819:
.LBB13820:
.LBB13760:
.LBB13756:
.LBB13757:
.LBB13758:
.LBB13759:
	.loc 39 103 0
	cmp	r8, #32
	mvneq	r3, #31
	beq	.L3905
	.loc 39 106 0
	and	r3, r0, #31
	mvn	r2, #0
	add	r3, r3, #1
	lsl	r3, r2, r3
.L3905:
.LVL4234:
.LBE13759:
.LBE13758:
	.loc 39 120 0
	and	lr, lr, r3
.LVL4235:
.LBE13757:
.LBE13756:
	.loc 52 649 0
	cmp	r4, lr
	bne	.L3904
	b	.L3954
.LVL4236:
.L3909:
.LBE13760:
.LBE13820:
.LBB13821:
.LBB13813:
.LBB13801:
.LBB13775:
	.loc 39 120 0
	bic	r8, r10, #31
.LVL4237:
.LBE13775:
.LBE13801:
	.loc 52 711 0
	mov	r3, #31
	b	.L3933
.LVL4238:
.L3965:
.LBB13802:
.LBB13778:
	.loc 36 905 0
	uxtb	r2, r3
.LBE13778:
.LBE13802:
	.loc 52 756 0
	cmp	r2, #46
	bne	.L3925
.LVL4239:
.LBB13803:
.LBB13804:
.LBB13805:
.LBB13806:
.LBB13807:
.LBB13808:
	.loc 36 2180 0
	lsr	r3, r3, #8
.LVL4240:
	ldr	r1, [r8, #4]
.LVL4241:
	and	r2, r3, #63
.LBE13808:
.LBE13807:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r3, #31
	beq	.L3926
	.loc 39 106 0
	and	r3, r3, #31
	mvn	r2, #0
	add	r3, r3, #1
	lsl	r3, r2, r3
.L3926:
.LVL4242:
.LBE13806:
.LBE13805:
	.loc 39 120 0
	and	r3, r3, r1
.LBE13804:
.LBE13803:
	.loc 52 758 0
	cmp	r8, r3
	bne	.L3925
	movw	r1, #:lower16:.LC206
.LVL4243:
	movw	r0, #:lower16:.LC235
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC235
	movw	r2, #758
	bl	_assert_fail
.LVL4244:
.L3958:
.LBE13813:
.LBE13821:
	.loc 52 700 0
	movw	r1, #65535
.L3901:
.LVL4245:
.LBE13828:
.LBE13832:
	.loc 52 595 0
	mov	r0, r4
	bl	emptySlot
.LVL4246:
.L3954:
	.loc 52 597 0
	mov	r0, #0
	b	.L3894
.LVL4247:
.L3900:
.LBB13833:
.LBB13829:
.LBB13822:
.LBB13750:
.LBB13747:
.LBB13743:
.LBB13739:
	.loc 39 113 0
	and	r9, lr, #31
.LVL4248:
	mvn	r3, #31
.LVL4249:
	b	.L3930
.LVL4250:
.L3951:
.LBE13739:
.LBE13743:
.LBE13747:
.LBE13750:
.LBE13822:
.LBB13823:
.LBB13814:
.LBB13809:
	.loc 52 750 0
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC233
.LVL4251:
	ldr	r3, .L3967+8
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC233
	movw	r2, #750
	bl	_fail
.LVL4252:
.L3919:
.LBB13799:
.LBB13792:
.LBB13791:
	.loc 39 120 0
	bic	r2, r1, #31
.LVL4253:
.LBE13791:
.LBE13792:
	.loc 52 734 0
	cmp	r8, r2
	bne	.L3920
	mov	r3, #31
.L3934:
.LVL4254:
.LBB13793:
.LBB13794:
	.loc 39 113 0
	and	r1, r1, r3
.LBE13794:
.LBE13793:
	.loc 52 734 0
	cmp	r10, r1
	bne	.L3920
	.loc 52 735 0
	cmp	r9, r0
	bne	.L3920
	ldr	r1, [fp]
.LVL4255:
.LBB13795:
.LBB13796:
	.loc 36 903 0
	and	r0, r1, #14
	cmp	r0, #14
	.loc 36 905 0
	uxtbeq	r1, r1
.LVL4256:
	.loc 36 904 0
	andne	r1, r1, #15
.LBE13796:
.LBE13795:
	.loc 52 737 0
	cmp	r1, #0
	bne	.L3966
.LVL4257:
	.loc 52 739 0
	sub	r10, r10, #1
.LVL4258:
.LBB13797:
.LBB13798:
	.loc 39 128 0
	and	r3, r3, r10
.LVL4259:
	orr	r2, r3, r2
.LVL4260:
.LBE13798:
.LBE13797:
	.loc 52 738 0
	str	r2, [r4, #4]
.LVL4261:
	b	.L3916
.LVL4262:
.L3962:
.LBE13799:
.LBE13809:
	.loc 52 716 0
	movw	r1, #:lower16:.LC206
.LVL4263:
	movw	r0, #:lower16:.LC230
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC230
	mov	r2, #716
	bl	_assert_fail
.LVL4264:
.L3964:
	.loc 52 754 0
	movw	r1, #:lower16:.LC206
.LVL4265:
	movw	r0, #:lower16:.LC234
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC234
	movw	r2, #754
	bl	_assert_fail
.LVL4266:
.L3918:
.LBE13814:
.LBE13823:
.LBB13824:
.LBB13751:
.LBB13748:
.LBB13744:
.LBB13740:
.LBB13738:
.LBB13736:
.LBB13734:
.LBB13733:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL4267:
.L3966:
.LBE13733:
.LBE13734:
.LBE13736:
.LBE13738:
.LBE13740:
.LBE13744:
.LBE13748:
.LBE13751:
.LBE13824:
.LBB13825:
.LBB13815:
.LBB13810:
.LBB13800:
	.loc 52 737 0
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC231
	ldr	r3, .L3967
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC231
	movw	r2, #737
.LVL4268:
	bl	_assert_fail
.LVL4269:
.L3968:
	.align	2
.L3967:
	.word	.LANCHOR5-3672
	.word	.LANCHOR5-3688
	.word	.LANCHOR5-3656
.LBE13800:
.LBE13810:
.LBE13815:
.LBE13825:
.LBE13829:
.LBE13833:
	.cfi_endproc
.LFE752:
	.size	cteDelete, .-cteDelete
	.align	2
	.global	invokeCNodeDelete
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeDelete, %function
invokeCNodeDelete:
.LFB740:
	.loc 52 320 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4270:
	.loc 52 321 0
	mov	r1, #1
	b	cteDelete
.LVL4271:
	.cfi_endproc
.LFE740:
	.size	invokeCNodeDelete, .-invokeCNodeDelete
	.align	2
	.global	cteRevoke
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteRevoke, %function
cteRevoke:
.LFB751:
	.loc 52 561 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4272:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB13834:
.LBB13835:
	.loc 36 271 0
	ldr	r4, [r0, #12]
.LVL4273:
.LBE13835:
.LBE13834:
	.loc 52 561 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 52 567 0
	bics	r4, r4, #7
.LVL4274:
.LBB13836:
.LBB13837:
	.loc 6 24 0
	movwne	r6, #:lower16:ksWorkUnitsCompleted
	movne	r5, r0
	movtne	r6, #:upper16:ksWorkUnitsCompleted
.LBE13837:
.LBE13836:
	.loc 52 567 0
	bne	.L3974
	b	.L3975
.LVL4275:
.L3976:
.LBB13839:
.LBB13840:
	.loc 36 271 0
	ldr	r4, [r5, #12]
.LVL4276:
.LBE13840:
.LBE13839:
	.loc 52 567 0
	bics	r4, r4, #7
.LVL4277:
	beq	.L3975
.L3974:
	.loc 52 568 0
	mov	r1, r4
	mov	r0, r5
	bl	isMDBParentOf
.LVL4278:
	cmp	r0, #0
	.loc 52 570 0
	mov	r1, #1
	mov	r0, r4
	.loc 52 568 0
	beq	.L3975
.LVL4279:
	.loc 52 570 0
	bl	cteDelete
.LVL4280:
	.loc 52 571 0
	cmp	r0, #0
	bne	.L3970
.LBB13841:
.LBB13838:
	.loc 6 24 0
	ldr	r3, [r6]
	add	r3, r3, #1
	.loc 6 34 0
	cmp	r3, #99
	.loc 6 24 0
	str	r3, [r6]
	.loc 6 34 0
	bls	.L3976
	bl	preemptionPoint.part.63
.LVL4281:
.LBE13838:
.LBE13841:
	.loc 52 576 0
	cmp	r0, #0
	beq	.L3976
.L3970:
	.loc 52 582 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL4282:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4283:
.L3975:
	.cfi_restore_state
	.loc 52 581 0
	mov	r0, #0
	b	.L3970
	.cfi_endproc
.LFE751:
	.size	cteRevoke, .-cteRevoke
	.align	2
	.global	invokeCNodeRevoke
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeCNodeRevoke, %function
invokeCNodeRevoke:
.LFB739:
	.loc 52 314 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4284:
	.loc 52 315 0
	b	cteRevoke
.LVL4285:
	.cfi_endproc
.LFE739:
	.size	invokeCNodeRevoke, .-invokeCNodeRevoke
	.align	2
	.global	decodeCNodeInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeCNodeInvocation, %function
decodeCNodeInvocation:
.LFB738:
	.loc 52 43 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4286:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	mov	r4, r0
	strd	r6, [sp, #8]
	mov	r6, r1
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #132
	.cfi_def_cfa_offset 168
	.loc 52 43 0
	add	ip, sp, #24
	ldr	r8, [sp, #180]
	stm	ip, {r2, r3}
	mov	r3, r2
.LVL4287:
.LBB13842:
.LBB13843:
	.loc 36 903 0
	and	r2, r2, #14
.LVL4288:
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4289:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE13843:
.LBE13842:
	.loc 52 50 0
	cmp	r3, #10
	bne	.L4063
	.loc 52 52 0
	sub	r3, r0, #14
	cmp	r3, #8
	bhi	.L4064
	.loc 52 58 0
	cmp	r1, #1
	bls	.L4065
.LBB13844:
.LBB13845:
	.loc 43 31 0
	movw	r7, #:lower16:ksCurThread
	ldrd	r2, [sp, #24]
	add	lr, sp, #52
	movt	r7, #:upper16:ksCurThread
.LBE13845:
.LBE13844:
.LBB13850:
.LBB13851:
	.loc 45 128 0
	mov	r1, #0
.LVL4290:
	ldrd	r10, [sp, #168]
.LBE13851:
.LBE13850:
.LBB13855:
.LBB13848:
	.loc 43 31 0
	ldr	ip, [r7]
.LVL4291:
.LBE13848:
.LBE13855:
.LBB13856:
.LBB13852:
	.loc 45 128 0
	add	r0, sp, #36
.LVL4292:
	strd	r2, [sp, #52]
	ldm	lr, {r2, r3}
.LBE13852:
.LBE13856:
.LBB13857:
.LBB13849:
.LBB13846:
.LBB13847:
	.loc 10 36 0
	ldr	lr, [ip, #8]
.LBE13847:
.LBE13846:
.LBE13849:
.LBE13857:
.LBB13858:
.LBB13859:
.LBB13860:
.LBB13861:
	ldr	ip, [ip, #12]
.LBE13861:
.LBE13860:
.LBE13859:
.LBE13858:
.LBB13862:
.LBB13853:
	.loc 45 128 0
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL4293:
	ldr	r5, [sp, #36]
.LVL4294:
.LBE13853:
.LBE13862:
	.loc 52 67 0
	cmp	r5, #0
	bne	.L4066
	.loc 52 73 0
	sub	r3, r4, #17
.LBB13863:
.LBB13854:
	.loc 45 128 0
	ldr	r9, [sp, #40]
.LVL4295:
.LBE13854:
.LBE13863:
	.loc 52 73 0
	cmp	r3, #3
	bls	.L4067
	.loc 52 194 0
	cmp	r4, #14
	beq	.L4068
	.loc 52 199 0
	cmp	r4, #15
	beq	.L4069
	.loc 52 204 0
	cmp	r4, #22
	beq	.L4070
	.loc 52 215 0
	cmp	r4, #16
	beq	.L4071
	.loc 52 229 0
	cmp	r4, #21
	bne	.L3981
.LBB13864:
	.loc 52 236 0 discriminator 1
	cmp	fp, #0
	cmpne	r10, #0
	moveq	r3, #1
	movne	r3, #0
	cmp	r6, #7
	movhi	r6, r3
	orrls	r6, r3, #1
.LVL4296:
	cmp	r6, #0
	bne	.L4072
.LVL4297:
.LBB13865:
.LBB13866:
	.loc 43 31 0
	ldr	r3, [r7]
.LVL4298:
.LBE13866:
.LBE13865:
.LBB13870:
.LBB13871:
	.loc 43 34 0
	cmp	r8, #0
.LBE13871:
.LBE13870:
.LBB13874:
.LBB13875:
.LBB13876:
.LBB13877:
	.loc 10 36 0
	ldrd	r2, [r3, #16]
	str	r3, [sp, #16]
.LBE13877:
.LBE13876:
.LBE13875:
.LBE13874:
.LBB13878:
.LBB13869:
.LBB13867:
.LBB13868:
	str	r2, [sp, #20]
.LVL4299:
.LBE13868:
.LBE13867:
.LBE13869:
.LBE13878:
.LBB13879:
.LBB13872:
	.loc 43 34 0
	beq	.L4008
	ldr	lr, [fp]
.LBE13872:
.LBE13879:
.LBB13880:
.LBB13881:
	.loc 45 122 0
	add	r3, sp, #92
	mov	r1, #1
.LBE13881:
.LBE13880:
	.loc 52 248 0
	ldr	r2, [fp, #4]
.LBB13885:
.LBB13882:
	.loc 45 122 0
	add	r0, sp, #100
.LBE13882:
.LBE13885:
.LBB13886:
.LBB13887:
	.loc 43 35 0
	ldr	ip, [r8, #28]
.LBE13887:
.LBE13886:
.LBB13888:
.LBB13889:
	ldr	r4, [r8, #32]
.LVL4300:
.LBE13889:
.LBE13888:
	.loc 52 247 0
	ldr	fp, [r10]
	str	lr, [sp, #92]
	ldr	r10, [r10, #4]
	str	r2, [sp, #96]
.LBB13890:
.LBB13883:
	.loc 45 122 0
	ldm	r3, {r2, r3}
	str	ip, [sp]
	str	r4, [sp, #4]
.LBE13883:
.LBE13890:
.LBB13891:
.LBB13873:
	.loc 43 35 0
	ldr	r6, [r8, #20]
.LVL4301:
.LBE13873:
.LBE13891:
.LBB13892:
.LBB13893:
	ldr	r8, [r8, #24]
.LVL4302:
.LBE13893:
.LBE13892:
.LBB13894:
.LBB13884:
	.loc 45 122 0
	bl	lookupSlotForCNodeOp
.LVL4303:
.LBE13884:
.LBE13894:
	.loc 52 250 0
	ldr	r5, [sp, #100]
.LVL4304:
	.loc 52 251 0
	cmp	r5, #0
	bne	.L3981
.LBB13895:
.LBB13896:
	.loc 45 134 0
	ldr	ip, [sp, #16]
	add	r3, sp, #108
	str	fp, [sp, #108]
	str	r10, [sp, #112]
	mov	r1, #1
	ldm	r3, {r2, r3}
	add	r0, sp, #116
.LBE13896:
.LBE13895:
	.loc 52 250 0
	ldr	r10, [sp, #104]
.LVL4305:
.LBB13898:
.LBB13897:
	.loc 45 134 0
	str	ip, [sp]
	str	r6, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL4306:
.LBE13897:
.LBE13898:
	.loc 52 256 0
	ldr	r5, [sp, #116]
.LVL4307:
	.loc 52 257 0
	cmp	r5, #0
	bne	.L3981
	.loc 52 256 0
	ldr	fp, [sp, #120]
.LVL4308:
	.loc 52 262 0
	cmp	r9, fp
	cmpne	r10, fp
	beq	.L4073
	.loc 52 268 0
	cmp	r10, r9
	beq	.L4027
.LVL4309:
	ldr	r3, [r9]
.LVL4310:
.LBB13899:
.LBB13900:
.LBB13901:
.LBB13902:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4311:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE13902:
.LBE13901:
	.loc 52 876 0
	cmp	r3, #0
	beq	.L4027
	.loc 52 877 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 52 878 0
	mov	r5, #3
.LVL4312:
	.loc 52 877 0
	str	r2, [r3, #24]
.LVL4313:
	b	.L3981
.LVL4314:
.L4065:
.LBE13900:
.LBE13899:
.LBE13864:
	.loc 52 59 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL4315:
	ldr	r2, .L4083
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL4316:
	mov	r1, #0
.LVL4317:
	mov	r3, #59
	.loc 52 61 0
	mov	r5, #3
	.loc 52 59 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4318:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4319:
	movw	r0, #:lower16:.LC238
	movt	r0, #:upper16:.LC238
.L4060:
.LBB13921:
	.loc 52 83 0
	bl	kprintf
.LVL4320:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4321:
	.loc 52 84 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4322:
.L3981:
.LBE13921:
	.loc 52 310 0
	mov	r0, r5
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4323:
.L4064:
	.cfi_restore_state
	.loc 52 53 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL4324:
	ldr	r2, .L4083
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL4325:
	mov	r1, #0
.LVL4326:
	mov	r3, #53
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4327:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4328:
	movw	r0, #:lower16:.LC237
	movt	r0, #:upper16:.LC237
.LVL4329:
.L4059:
.LBB13972:
	.loc 52 299 0
	bl	kprintf
.LVL4330:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4331:
	.loc 52 300 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 52 301 0
	mov	r5, r2
	.loc 52 300 0
	str	r2, [r3, #24]
	.loc 52 301 0
	b	.L3981
.LVL4332:
.L4067:
.LBE13972:
.LBB13973:
	.loc 52 82 0 discriminator 1
	cmp	r10, #0
	cmpne	r6, #3
	bls	.L4074
.LVL4333:
	ldr	fp, [r9]
.LBB13922:
.LBB13923:
	.loc 43 31 0
	ldr	r3, [r7]
.LVL4334:
.LBE13923:
.LBE13922:
.LBB13927:
.LBB13928:
.LBB13929:
.LBB13930:
	.loc 36 903 0
	and	r2, fp, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	fp, fp
.LVL4335:
	.loc 36 904 0
	andne	fp, fp, #15
.LBE13930:
.LBE13929:
	.loc 52 876 0
	cmp	fp, #0
	bne	.L4075
	ldr	lr, [r10]
.LBE13928:
.LBE13927:
.LBB13933:
.LBB13934:
	.loc 45 122 0
	add	r2, sp, #60
	mov	r1, #1
.LBE13934:
.LBE13933:
	.loc 52 90 0
	ldr	r5, [r10, #4]
.LVL4336:
.LBB13937:
.LBB13935:
	.loc 45 122 0
	add	r0, sp, #68
.LBE13935:
.LBE13937:
.LBB13938:
.LBB13926:
.LBB13924:
.LBB13925:
	.loc 10 36 0
	ldr	ip, [r3, #16]
.LBE13925:
.LBE13924:
.LBE13926:
.LBE13938:
.LBB13939:
.LBB13940:
.LBB13941:
.LBB13942:
	ldr	r10, [r3, #20]
	str	lr, [sp, #60]
.LVL4337:
	str	r5, [sp, #64]
.LVL4338:
.LBE13942:
.LBE13941:
.LBE13940:
.LBE13939:
.LBB13943:
.LBB13936:
	.loc 45 122 0
	ldm	r2, {r2, r3}
	str	ip, [sp]
	str	r10, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL4339:
.LBE13936:
.LBE13943:
	.loc 52 98 0
	ldr	r5, [sp, #68]
.LVL4340:
	.loc 52 99 0
	cmp	r5, #0
	bne	.L4076
	.loc 52 98 0
	ldr	fp, [sp, #72]
.LVL4341:
	ldr	r3, [fp]
.LVL4342:
.LBB13944:
.LBB13945:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r1, r3
	.loc 36 904 0
	andne	r1, r3, #15
	.loc 36 905 0
	str	r1, [sp, #16]
.LVL4343:
.LBE13945:
.LBE13944:
	.loc 52 105 0
	ldr	r1, [sp, #16]
	cmp	r1, #0
	beq	.L4077
	.loc 52 114 0
	cmp	r4, #19
	beq	.L4000
	cmp	r4, #20
	beq	.L4001
	cmp	r4, #18
	beq	.L4002
	.loc 52 117 0
	cmp	r6, #4
	beq	.L4078
.LVL4344:
.LBB13946:
.LBB13947:
	.loc 43 34 0
	cmp	r8, #0
	beq	.L4008
.LVL4345:
.LBE13947:
.LBE13946:
	.loc 52 124 0
	add	r4, sp, #108
.LVL4346:
	ldm	fp, {r2, r3}
	mov	r0, r4
	ldr	r1, [r8, #20]
	bl	maskCapRights
.LVL4347:
	.loc 52 125 0
	ldm	r4, {r2, r3}
	mov	r1, fp
	add	r0, sp, #116
	bl	deriveCap
.LVL4348:
	ldr	r4, [sp, #116]
.LVL4349:
	.loc 52 126 0
	cmp	r4, #0
	bne	.L4079
.LVL4350:
.L4009:
	.loc 52 145 0
	ldr	r3, [sp, #120]
	.loc 52 151 0
	ldrd	r0, [sp, #120]
	and	r2, r3, #14
	strd	r0, [sp, #100]
.LVL4351:
.L4006:
.LBB13949:
.LBB13950:
	.loc 36 903 0
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL4352:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE13950:
.LBE13949:
	.loc 52 180 0
	cmp	r1, #0
	bne	.L4013
	.loc 52 181 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #181
.LVL4353:
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4354:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4355:
	movw	r0, #:lower16:.LC249
	movt	r0, #:upper16:.LC249
	b	.L4059
.LVL4356:
.L4066:
.LBE13973:
	.loc 52 68 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #68
	ldr	r2, .L4083
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4357:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4358:
	movw	r0, #:lower16:.LC239
	movt	r0, #:upper16:.LC239
	bl	kprintf
.LVL4359:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4360:
	.loc 52 69 0
	b	.L3981
.LVL4361:
.L4075:
.LBB13974:
	.loc 52 94 0
	ldr	r4, [r3, #68]
.LVL4362:
.LBB13951:
.LBB13931:
	.loc 52 877 0
	movw	ip, #:lower16:current_syscall_error
	mov	lr, #8
	movt	ip, #:upper16:current_syscall_error
.LBE13931:
.LBE13951:
	.loc 52 94 0
	add	r2, r3, #528
	str	r3, [sp]
.LVL4363:
	movw	r0, #:lower16:.LC14
	mov	r1, #0
	mov	r3, #94
	movt	r0, #:upper16:.LC14
	stmib	sp, {r2, r4}
	ldr	r2, .L4083
.LBB13952:
.LBB13932:
	.loc 52 878 0
	mov	r5, #3
.LVL4364:
	.loc 52 877 0
	str	lr, [ip, #24]
.LVL4365:
.LBE13932:
.LBE13952:
	.loc 52 94 0
	bl	kprintf
.LVL4366:
	movw	r0, #:lower16:.LC241
	movt	r0, #:upper16:.LC241
	bl	kprintf
.LVL4367:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4368:
	.loc 52 95 0
	b	.L3981
.LVL4369:
.L4074:
	.loc 52 83 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r1, r5
	movt	r0, #:upper16:.LC14
	mov	r3, #83
	ldr	r2, .L4083
	.loc 52 85 0
	mov	r5, #3
.LVL4370:
	.loc 52 83 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4371:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4372:
	movw	r0, #:lower16:.LC240
	movt	r0, #:upper16:.LC240
	b	.L4060
.LVL4373:
.L4070:
	ldr	r3, [r9]
.LVL4374:
.LBE13974:
.LBB13975:
.LBB13976:
.LBB13977:
.LBB13978:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4375:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE13978:
.LBE13977:
	.loc 52 876 0
	cmp	r3, #0
	beq	.L4020
.LBE13976:
.LBE13975:
	.loc 52 207 0
	ldr	ip, [r7]
.LBB13982:
.LBB13979:
	.loc 52 877 0
	movw	r1, #:lower16:current_syscall_error
	mov	lr, #8
	movt	r1, #:upper16:current_syscall_error
.LBE13979:
.LBE13982:
	.loc 52 207 0
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4083
	mov	r3, #207
	movt	r0, #:upper16:.LC14
.LBB13983:
.LBB13980:
	.loc 52 877 0
	str	lr, [r1, #24]
.LVL4376:
.LBE13980:
.LBE13983:
	.loc 52 207 0
	mov	r1, #0
.LBB13984:
.LBB13981:
	.loc 52 878 0
	mov	r5, #3
.LVL4377:
.LBE13981:
.LBE13984:
	.loc 52 207 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4378:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4379:
	movw	r0, #:lower16:.LC250
	movt	r0, #:upper16:.LC250
	bl	kprintf
.LVL4380:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4381:
	.loc 52 208 0
	b	.L3981
.LVL4382:
.L4071:
.LBB13985:
	.loc 52 218 0
	ldrd	r2, [r9]
	add	r4, sp, #116
.LVL4383:
	strd	r2, [sp, #116]
	.loc 52 220 0
	ldm	r4, {r0, r1}
	bl	hasCancelSendRights
.LVL4384:
	cmp	r0, #0
	bne	.L4022
	.loc 52 221 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #221
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4385:
	movw	r0, #:lower16:.LC251
	movt	r0, #:upper16:.LC251
	b	.L4059
.LVL4386:
.L4020:
.LBE13985:
	.loc 52 211 0
	ldr	r0, [r7]
	mov	r1, #2
	bl	setThreadState
.LVL4387:
	.loc 52 212 0
	mov	r0, r9
	.loc 52 310 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4388:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4389:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 0
.LVL4390:
	.loc 52 212 0
	b	invokeCNodeSaveCaller
.LVL4391:
.L4072:
	.cfi_restore_state
.LBB13986:
	.loc 52 237 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 52 238 0
	mov	r5, #3
.LVL4392:
	.loc 52 237 0
	str	r2, [r3, #24]
	.loc 52 238 0
	b	.L3981
.LVL4393:
.L4068:
.LBE13986:
	.loc 52 195 0
	ldr	r0, [r7]
	mov	r1, #2
	bl	setThreadState
.LVL4394:
.LBB13987:
.LBB13988:
	.loc 52 315 0
	mov	r0, r9
.LBE13988:
.LBE13987:
	.loc 52 310 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4395:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4396:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 0
.LVL4397:
.LBB13990:
.LBB13989:
	.loc 52 315 0
	b	cteRevoke
.LVL4398:
.L4076:
	.cfi_restore_state
.LBE13989:
.LBE13990:
.LBB13991:
	.loc 52 100 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r1, fp
	mov	r3, #100
	ldr	r2, .L4083
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4399:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4400:
	movw	r0, #:lower16:.LC242
	movt	r0, #:upper16:.LC242
	bl	kprintf
.LVL4401:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4402:
	.loc 52 101 0
	b	.L3981
.LVL4403:
.L4069:
.LBE13991:
	.loc 52 200 0
	ldr	r0, [r7]
	mov	r1, #2
	bl	setThreadState
.LVL4404:
.LBB13992:
.LBB13993:
	.loc 52 321 0
	mov	r0, r9
	mov	r1, #1
.LBE13993:
.LBE13992:
	.loc 52 310 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4405:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4406:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 0
.LVL4407:
.LBB13995:
.LBB13994:
	.loc 52 321 0
	b	cteDelete
.LVL4408:
.L4022:
	.cfi_restore_state
.LBE13994:
.LBE13995:
.LBB13996:
	.loc 52 225 0
	mov	r1, #2
	ldr	r0, [r7]
	bl	setThreadState
.LVL4409:
	.loc 52 226 0
	ldm	r4, {r0, r1}
	bl	invokeCNodeCancelBadgedSends
.LVL4410:
	mov	r5, r0
.LVL4411:
	b	.L3981
.LVL4412:
.L4077:
.LBE13996:
.LBB13997:
	.loc 52 106 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #106
	ldr	r2, .L4083
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4413:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4414:
	movw	r0, #:lower16:.LC243
	movt	r0, #:upper16:.LC243
	bl	kprintf
.LVL4415:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4416:
	.loc 52 107 0
	movw	r3, #:lower16:current_syscall_error
.LBB13953:
.LBB13954:
	.loc 36 552 0
	bics	r2, r10, #63
.LBE13954:
.LBE13953:
	.loc 52 107 0
	movt	r3, #:upper16:current_syscall_error
	mov	r1, #6
	.loc 52 108 0
	mov	r2, #1
	str	r2, [r3, #20]
.LVL4417:
	.loc 52 107 0
	str	r1, [r3, #24]
.LBB13958:
.LBB13955:
	.loc 36 552 0
	bne	.L4033
.LVL4418:
	.loc 36 556 0
	lsl	r2, r10, #2
.LBE13955:
.LBE13958:
	.loc 52 109 0
	ldr	r1, [sp, #16]
	movw	r3, #:lower16:current_lookup_fault
	movt	r3, #:upper16:current_lookup_fault
.LBB13959:
.LBB13956:
	.loc 36 557 0
	orr	r2, r2, #1
.LBE13956:
.LBE13959:
	.loc 52 111 0
	mov	r5, #3
.LVL4419:
	.loc 52 109 0
	str	r2, [r3]
	str	r1, [r3, #4]
	.loc 52 111 0
	b	.L3981
.LVL4420:
.L4013:
	.loc 52 186 0
	mov	r1, #2
	ldr	r0, [r7]
	str	r3, [sp, #16]
	bl	setThreadState
.LVL4421:
	.loc 52 187 0
	ldr	r3, [sp, #16]
	cmp	r4, #0
	str	r3, [sp, #100]
	beq	.L4014
	ldrd	r0, [sp, #100]
	add	ip, sp, #76
.LBB13960:
.LBB13961:
	.loc 52 347 0
	mov	r3, r9
	mov	r2, fp
	strd	r0, [sp, #76]
.LVL4422:
	ldm	ip, {r0, r1}
	bl	cteMove
.LVL4423:
.LBE13961:
.LBE13960:
	.loc 52 188 0
	b	.L3981
.LVL4424:
.L4002:
	.loc 52 136 0
	cmp	r6, #5
	bls	.L4080
.LVL4425:
.LBB13962:
.LBB13963:
	.loc 43 34 0
	cmp	r8, #0
	beq	.L4008
.LVL4426:
.LBE13963:
.LBE13962:
	.loc 52 144 0
	ldm	fp, {r2, r3}
	add	r0, sp, #108
	.loc 52 145 0
	add	r4, sp, #44
.LVL4427:
	.loc 52 144 0
	ldr	r1, [r8, #20]
.LBB13964:
.LBB13965:
	.loc 43 35 0
	ldr	r6, [r8, #24]
.LVL4428:
.LBE13965:
.LBE13964:
	.loc 52 144 0
	bl	maskCapRights
.LVL4429:
	.loc 52 145 0
	mov	r0, r4
	mov	r1, #0
	ldr	r3, [sp, #108]
	ldr	ip, [sp, #112]
	mov	r2, r6
	str	ip, [sp]
	bl	updateCapData
.LVL4430:
	ldm	r4, {r2, r3}
	mov	r1, fp
	add	r0, sp, #116
	bl	deriveCap
.LVL4431:
	ldr	r4, [sp, #116]
.LVL4432:
	.loc 52 147 0
	cmp	r4, #0
	beq	.L4009
	.loc 52 148 0
	ldr	ip, [r7]
	.loc 52 149 0
	mov	r5, r4
.LVL4433:
	.loc 52 148 0
	movw	r0, #:lower16:.LC14
	mov	r3, #148
	ldr	r2, .L4083
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4434:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4435:
	movw	r0, #:lower16:.LC247
	movt	r0, #:upper16:.LC247
	bl	kprintf
.LVL4436:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4437:
	.loc 52 149 0
	b	.L3981
.LVL4438:
.L4001:
	.loc 52 163 0
	cmp	r6, #4
	beq	.L4081
.LVL4439:
.LBB13966:
.LBB13967:
	.loc 43 34 0
	cmp	r8, #0
	beq	.L4008
.LVL4440:
.LBE13967:
.LBE13966:
	.loc 52 170 0
	ldr	r3, [fp, #4]
	mov	r1, #1
	add	r0, sp, #100
	ldr	r2, [r8, #20]
	.loc 52 171 0
	mov	r4, r1
.LVL4441:
	.loc 52 170 0
	str	r3, [sp]
	ldr	r3, [fp]
	bl	updateCapData
.LVL4442:
	ldr	r3, [sp, #100]
.LVL4443:
	and	r2, r3, #14
	.loc 52 173 0
	b	.L4006
.LVL4444:
.L4000:
	.loc 52 157 0
	ldrd	r0, [fp]
	.loc 52 158 0
	mov	r4, #1
.LVL4445:
	.loc 52 157 0
	strd	r0, [sp, #100]
.LVL4446:
	.loc 52 160 0
	b	.L4006
.LVL4447:
.L4014:
	ldrd	r0, [sp, #100]
	add	ip, sp, #84
.LBB13968:
.LBB13969:
	.loc 52 339 0
	mov	r3, r9
	mov	r2, fp
	strd	r0, [sp, #84]
.LVL4448:
	ldm	ip, {r0, r1}
	bl	cteInsert
.LVL4449:
.LBE13969:
.LBE13968:
	.loc 52 190 0
	b	.L3981
.LVL4450:
.L4078:
	.loc 52 118 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #118
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	mov	r1, #0
	.loc 52 120 0
	mov	r5, #3
.LVL4451:
	.loc 52 118 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4452:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4453:
	movw	r0, #:lower16:.LC244
	movt	r0, #:upper16:.LC244
	b	.L4060
.LVL4454:
.L4080:
	.loc 52 137 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #137
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	mov	r1, #0
	.loc 52 139 0
	mov	r5, #3
.LVL4455:
	.loc 52 137 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4456:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4457:
	movw	r0, #:lower16:.LC246
	movt	r0, #:upper16:.LC246
	b	.L4060
.LVL4458:
.L4081:
	.loc 52 164 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r3, #164
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	mov	r1, #0
	.loc 52 166 0
	mov	r5, #3
.LVL4459:
	.loc 52 164 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4460:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4461:
	movw	r0, #:lower16:.LC248
	movt	r0, #:upper16:.LC248
	b	.L4060
.LVL4462:
.L4079:
	.loc 52 127 0
	ldr	ip, [r7]
	.loc 52 128 0
	mov	r5, r4
.LVL4463:
	.loc 52 127 0
	movw	r0, #:lower16:.LC14
	mov	r3, #127
	ldr	r2, .L4083
	mov	r1, #0
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL4464:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4465:
	movw	r0, #:lower16:.LC245
	movt	r0, #:upper16:.LC245
	bl	kprintf
.LVL4466:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4467:
	.loc 52 128 0
	b	.L3981
.LVL4468:
.L4027:
	ldr	r2, [r10]
.LVL4469:
.LBE13997:
.LBB13998:
.LBB13903:
.LBB13904:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r2, r2
.LVL4470:
	.loc 36 904 0
	andne	r2, r2, #15
.LBE13904:
.LBE13903:
	.loc 52 275 0
	cmp	r2, #0
	bne	.L4032
	.loc 52 276 0
	movw	r3, #:lower16:current_syscall_error
.LBB13905:
.LBB13906:
	.loc 36 552 0
	bics	r1, r4, #63
.LBE13906:
.LBE13905:
	.loc 52 276 0
	movt	r3, #:upper16:current_syscall_error
	mov	r0, #6
	.loc 52 277 0
	mov	r1, #1
	str	r1, [r3, #20]
.LVL4471:
	.loc 52 276 0
	str	r0, [r3, #24]
.LBB13908:
.LBB13907:
	.loc 36 552 0
	bne	.L4033
.LVL4472:
	.loc 36 556 0
	lsl	r3, r4, #2
.L4061:
.LBE13907:
.LBE13908:
	.loc 52 285 0
	movw	r1, #:lower16:current_lookup_fault
	movt	r1, #:upper16:current_lookup_fault
.LBB13909:
.LBB13910:
	.loc 36 557 0
	orr	r3, r3, #1
.LBE13910:
.LBE13909:
	.loc 52 286 0
	mov	r5, #3
.LVL4473:
	.loc 52 285 0
	str	r3, [r1]
	str	r2, [r1, #4]
	.loc 52 286 0
	b	.L3981
.LVL4474:
.L4063:
.LBE13998:
	.loc 52 50 0 discriminator 1
	movw	r1, #:lower16:.LC206
.LVL4475:
	movw	r0, #:lower16:.LC236
.LVL4476:
	ldr	r3, .L4083+4
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC236
	mov	r2, #50
	bl	_assert_fail
.LVL4477:
.L4073:
.LBB13999:
	.loc 52 263 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	mov	r1, r5
	movt	r0, #:upper16:.LC14
	movw	r3, #263
	ldr	r2, .L4083
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4478:
	movw	r0, #:lower16:.LC252
	movt	r0, #:upper16:.LC252
	b	.L4059
.L4032:
	ldr	r2, [fp]
.LVL4479:
.LBB13913:
.LBB13914:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r2, r2
.LVL4480:
	.loc 36 904 0
	andne	r2, r2, #15
.LBE13914:
.LBE13913:
	.loc 52 282 0
	cmp	r2, #0
	bne	.L4036
	.loc 52 283 0
	movw	r3, #:lower16:current_syscall_error
.LBB13915:
.LBB13911:
	.loc 36 552 0
	bics	r1, r6, #63
.LBE13911:
.LBE13915:
	.loc 52 283 0
	movt	r3, #:upper16:current_syscall_error
	mov	r1, #6
	.loc 52 284 0
	str	r2, [r3, #20]
.LVL4481:
	.loc 52 283 0
	str	r1, [r3, #24]
.LBB13916:
.LBB13912:
	.loc 36 552 0
	bne	.L4033
.LVL4482:
	.loc 36 556 0
	lsl	r3, r6, #2
	b	.L4061
.L4036:
.LBE13912:
.LBE13916:
	.loc 52 289 0
	ldr	r3, [r10, #4]
	add	r4, sp, #76
	mov	r2, r8
	mov	r0, r4
	mov	r1, #1
	.loc 52 290 0
	add	r5, sp, #84
.LVL4483:
	.loc 52 289 0
	str	r3, [sp]
	ldr	r3, [r10]
	bl	updateCapData
.LVL4484:
	.loc 52 290 0
	ldr	r3, [fp, #4]
	mov	r1, #1
	mov	r0, r5
	ldr	r2, [sp, #20]
	str	r3, [sp]
	ldr	r3, [fp]
	bl	updateCapData
.LVL4485:
	ldr	r1, [sp, #76]
.LVL4486:
.LBB13917:
.LBB13918:
	.loc 36 903 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r1, r1
.LVL4487:
	.loc 36 904 0
	andne	r1, r1, #15
.LBE13918:
.LBE13917:
	.loc 52 292 0
	cmp	r1, #0
	beq	.L4082
	ldr	r1, [sp, #84]
.LVL4488:
.LBB13919:
.LBB13920:
	.loc 36 903 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r1, r1
.LVL4489:
	.loc 36 904 0
	andne	r1, r1, #15
.LBE13920:
.LBE13919:
	.loc 52 298 0
	cmp	r1, #0
	bne	.L4042
	.loc 52 299 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	movw	r3, #299
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4490:
	movw	r0, #:lower16:.LC254
	movt	r0, #:upper16:.LC254
	b	.L4059
.LVL4491:
.L4008:
.LBE13999:
.LBB14000:
.LBB13970:
.LBB13948:
	bl	getSyscallArg.part.206
.LVL4492:
.L4033:
.LBE13948:
.LBE13970:
.LBB13971:
.LBB13957:
	bl	lookup_fault_missing_capability_new.part.98
.LVL4493:
.L4042:
.LBE13957:
.LBE13971:
.LBE14000:
.LBB14001:
	.loc 52 304 0
	mov	r1, #2
	ldr	r0, [r7]
	bl	setThreadState
.LVL4494:
	.loc 52 305 0
	str	r10, [sp]
	ldm	r5, {r2, r3}
	str	fp, [sp, #4]
	ldm	r4, {r0, r1}
	str	r9, [sp, #8]
	bl	invokeCNodeRotate
.LVL4495:
	mov	r5, r0
.LVL4496:
	b	.L3981
.LVL4497:
.L4082:
	.loc 52 293 0
	ldr	ip, [r7]
	movw	r0, #:lower16:.LC14
	movw	r3, #293
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4083
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4498:
	movw	r0, #:lower16:.LC253
	movt	r0, #:upper16:.LC253
	b	.L4059
.L4084:
	.align	2
.L4083:
	.word	.LANCHOR5-3616
	.word	.LANCHOR5-3640
.LBE14001:
	.cfi_endproc
.LFE738:
	.size	decodeCNodeInvocation, .-decodeCNodeInvocation
	.align	2
	.global	cteDeleteOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	cteDeleteOne, %function
cteDeleteOne:
.LFB758:
	.loc 52 768 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4499:
	ldr	r3, [r0]
.LVL4500:
.LBB14032:
.LBB14033:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4501:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE14033:
.LBE14032:
	.loc 52 770 0
	cmp	r3, #0
	bxeq	lr
	.loc 52 768 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
.LBB14034:
	.loc 52 777 0
	bl	isFinalCapability
.LVL4502:
	.loc 52 778 0
	mov	ip, #1
	ldm	r4, {r1, r2}
	mov	r3, r0
	add	r0, sp, #12
.LVL4503:
	str	ip, [sp]
	bl	finaliseCap
.LVL4504:
	ldr	r3, [sp, #12]
.LVL4505:
	ldr	r1, [sp, #16]
.LVL4506:
.LBB14035:
.LBB14036:
.LBB14037:
.LBB14038:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL4507:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE14038:
.LBE14037:
	.loc 52 633 0
	cmp	r2, #0
	beq	.L4092
	cmp	r2, #46
	bne	.L4105
.LVL4508:
.LBB14039:
.LBB14040:
.LBB14041:
.LBB14042:
.LBB14043:
.LBB14044:
.LBB14045:
	.loc 36 2177 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L4109
	.loc 36 2180 0
	lsr	r3, r3, #8
.LVL4509:
	and	r2, r3, #63
.LBE14045:
.LBE14044:
	.loc 39 103 0
	cmp	r2, #32
	beq	.L4095
.LVL4510:
.LBE14043:
.LBE14042:
	.loc 39 113 0
	mvn	r0, #0
.LBB14050:
.LBB14048:
	.loc 39 106 0
	and	r3, r3, #31
.LBE14048:
.LBE14050:
	.loc 39 113 0
	add	r3, r3, #1
	mov	r2, r0
	bic	r0, r1, r0, lsl r3
.LVL4511:
	lsl	r3, r2, r3
.L4098:
.LVL4512:
.LBE14041:
.LBE14040:
	.loc 52 639 0
	cmp	r0, #0
	beq	.L4092
.LVL4513:
.LBB14053:
.LBB14054:
	.loc 39 120 0
	and	r3, r3, r1
.LBE14054:
.LBE14053:
.LBE14039:
.LBE14036:
.LBE14035:
	.loc 52 780 0
	cmp	r4, r3
	cmpeq	r0, #1
	bne	.L4096
.LVL4514:
.L4092:
	.loc 52 780 0 is_stmt 0 discriminator 2
	ldrh	r1, [sp, #20]
.LVL4515:
	movw	r3, #65535
	cmp	r1, r3
	bne	.L4096
	.loc 52 782 0 is_stmt 1
	mov	r0, r4
.LBE14034:
	.loc 52 784 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4516:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB14063:
	.loc 52 782 0
	b	emptySlot
.LVL4517:
.L4105:
	.cfi_restore_state
.LBB14061:
.LBB14059:
.LBB14056:
.LBB14057:
	.loc 52 642 0
	movw	r1, #:lower16:.LC206
.LVL4518:
	movw	r0, #:lower16:.LC228
	ldr	r3, .L4110
.LVL4519:
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC228
	movw	r2, #642
	bl	_fail
.LVL4520:
.L4096:
.LBE14057:
.LBE14056:
.LBE14059:
.LBE14061:
.LBE14063:
.LBB14064:
.LBB14065:
.LBB14066:
	.loc 52 780 0
	movw	r1, #:lower16:.LC206
	movw	r0, #:lower16:.LC255
	ldr	r3, .L4110+4
	movt	r1, #:upper16:.LC206
	movt	r0, #:upper16:.LC255
	movw	r2, #781
	bl	_assert_fail
.LVL4521:
.L4095:
.LBE14066:
.LBE14065:
.LBE14064:
.LBB14067:
.LBB14062:
.LBB14060:
.LBB14058:
.LBB14055:
.LBB14052:
	.loc 39 113 0
	and	r0, r1, #31
.LVL4522:
	mvn	r3, #31
	b	.L4098
.LVL4523:
.L4109:
.LBB14051:
.LBB14049:
.LBB14047:
.LBB14046:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL4524:
.L4111:
	.align	2
.L4110:
	.word	.LANCHOR5-3688
	.word	.LANCHOR5-3592
.LBE14046:
.LBE14047:
.LBE14049:
.LBE14051:
.LBE14052:
.LBE14055:
.LBE14058:
.LBE14060:
.LBE14062:
.LBE14067:
	.cfi_endproc
.LFE758:
	.size	cteDeleteOne, .-cteDeleteOne
	.align	2
	.global	cancelIPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	cancelIPC, %function
cancelIPC:
.LFB774:
	.loc 56 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4525:
	ldr	r1, [r0, #448]
.LVL4526:
.LBB14096:
.LBB14097:
	.loc 36 127 0
	and	r3, r1, #15
.LBE14097:
.LBE14096:
	.loc 56 228 0
	sub	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L4112
.L4115:
	.word	.L4114
	.word	.L4114
	.word	.L4116
	.word	.L4117
.L4117:
.LVL4527:
	.loc 56 254 0
	bic	r1, r1, #15
	b	cancelSignal
.LVL4528:
.L4116:
.LBB14098:
	.loc 56 264 0
	bic	r3, r0, #1020
	.loc 56 261 0
	mov	r2, #0
	.loc 56 264 0
	bic	r3, r3, #3
.LBB14099:
.LBB14100:
	.loc 36 271 0
	ldr	r3, [r3, #44]
.LBE14100:
.LBE14099:
	.loc 56 261 0
	str	r2, [r0, #464]
	str	r2, [r0, #468]
.LVL4529:
	.loc 56 267 0
	bics	r0, r3, #7
.LVL4530:
	bxeq	lr
	.loc 56 270 0
	b	cteDeleteOne
.LVL4531:
.L4114:
.LBE14098:
.LBB14101:
.LBB14102:
.LBB14103:
	.loc 36 97 0
	bic	r1, r1, #15
.LVL4532:
.LBE14103:
.LBE14102:
.LBE14101:
	.loc 56 225 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	ldr	r3, [r1]
.LVL4533:
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB14144:
	.loc 56 238 0
	tst	r3, #3
	beq	.L4133
.LVL4534:
.LBB14104:
.LBB14105:
	.loc 27 227 0
	ldr	ip, [r0, #516]
.LBE14105:
.LBE14104:
.LBB14109:
.LBB14110:
.LBB14111:
.LBB14112:
	.loc 36 480 0
	bic	lr, r3, #15
	ldr	r2, [r1, #4]
.LVL4535:
.LBE14112:
.LBE14111:
.LBE14110:
.LBE14109:
.LBB14116:
.LBB14106:
	.loc 27 227 0
	cmp	ip, #0
.LBE14106:
.LBE14116:
.LBB14117:
.LBB14115:
.LBB14113:
.LBB14114:
	.loc 36 461 0
	bic	r4, r2, #15
.LVL4536:
.LBE14114:
.LBE14113:
.LBE14115:
.LBE14117:
.LBB14118:
.LBB14107:
	.loc 27 227 0
	beq	.L4119
	.loc 27 228 0
	ldr	r5, [r0, #512]
	str	r5, [ip, #512]
	ldr	r5, [r0, #512]
.LVL4537:
.L4120:
	.loc 27 233 0
	cmp	r5, #0
	.loc 27 227 0
	moveq	lr, ip
.LVL4538:
	.loc 27 234 0
	strne	ip, [r5, #516]
.LBE14107:
.LBE14118:
.LBB14119:
.LBB14120:
.LBB14121:
.LBB14122:
	.loc 36 472 0
	tst	r4, #15
	bne	.L4134
	.loc 36 473 0
	and	ip, r2, #15
	.loc 36 474 0
	bic	r2, r4, #15
.LVL4539:
	orr	r2, ip, r2
.LBE14122:
.LBE14121:
.LBB14125:
.LBB14126:
	.loc 36 491 0
	tst	lr, #15
.LBE14126:
.LBE14125:
.LBB14130:
.LBB14123:
	.loc 36 474 0
	str	r2, [r1, #4]
.LVL4540:
.LBE14123:
.LBE14130:
.LBB14131:
.LBB14127:
	.loc 36 491 0
	bne	.L4135
	.loc 36 493 0
	bic	lr, lr, #15
.LVL4541:
	.loc 36 492 0
	and	r3, r3, #15
.LVL4542:
.LBE14127:
.LBE14131:
.LBE14120:
.LBE14119:
.LBE14144:
	.loc 56 276 0
	ldr	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 6
.LBB14145:
.LBB14137:
.LBB14135:
.LBB14132:
.LBB14128:
	.loc 36 493 0
	orr	r3, r3, lr
.LVL4543:
.LBE14128:
.LBE14132:
.LBE14135:
.LBE14137:
	.loc 56 245 0
	cmp	r4, #0
.LBE14145:
	.loc 56 276 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4544:
.LBB14146:
.LBB14138:
.LBB14139:
	.loc 36 511 0
	biceq	r3, r3, #3
.LBE14139:
.LBE14138:
.LBE14146:
	.loc 56 276 0
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
.LBB14147:
.LBB14141:
.LBB14140:
	.loc 36 512 0
	str	r3, [r1]
.LVL4545:
.LBE14140:
.LBE14141:
	.loc 56 249 0
	mov	r1, #0
.LVL4546:
	b	setThreadState
.LVL4547:
.L4112:
	bx	lr
.LVL4548:
.L4119:
	.cfi_restore_state
.LBB14142:
.LBB14108:
	.loc 27 230 0
	ldr	r4, [r0, #512]
.LVL4549:
	mov	r5, r4
	b	.L4120
.LVL4550:
.L4134:
.LBE14108:
.LBE14142:
.LBB14143:
.LBB14136:
.LBB14133:
.LBB14124:
	bl	endpoint_ptr_set_epQueue_head.isra.256.part.257
.LVL4551:
.L4135:
.LBE14124:
.LBE14133:
.LBB14134:
.LBB14129:
	bl	endpoint_ptr_set_epQueue_tail.isra.258.part.259
.LVL4552:
.L4133:
.LBE14129:
.LBE14134:
.LBE14136:
.LBE14143:
	.loc 56 238 0 discriminator 1
	movw	r1, #:lower16:.LC213
.LVL4553:
	movw	r0, #:lower16:.LC256
.LVL4554:
	ldr	r3, .L4136
	movt	r1, #:upper16:.LC213
	movt	r0, #:upper16:.LC256
	mov	r2, #238
	bl	_assert_fail
.LVL4555:
.L4137:
	.align	2
.L4136:
	.word	.LANCHOR5-3576
.LBE14147:
	.cfi_endproc
.LFE774:
	.size	cancelIPC, .-cancelIPC
	.align	2
	.global	suspend
	.syntax unified
	.arm
	.fpu softvfp
	.type	suspend, %function
suspend:
.LFB698:
	.loc 28 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4556:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	.loc 28 84 0
	bl	cancelIPC
.LVL4557:
	.loc 28 85 0
	mov	r0, r4
	mov	r1, #0
	bl	setThreadState
.LVL4558:
	.loc 28 86 0
	mov	r0, r4
	.loc 28 87 0
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4559:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 28 86 0
	b	tcbSchedDequeue
.LVL4560:
	.cfi_endproc
.LFE698:
	.size	suspend, .-suspend
	.align	2
	.global	restart
	.syntax unified
	.arm
	.fpu softvfp
	.type	restart, %function
restart:
.LFB699:
	.loc 28 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4561:
.LBB14164:
.LBB14165:
.LBB14166:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
	cmp	r3, #6
	bxhi	lr
	mov	r1, #1
	lsl	r3, r1, r3
	tst	r3, #121
	beq	.L4148
.LVL4562:
.LBE14166:
.LBE14165:
.LBE14164:
	.loc 28 91 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL4563:
	str	lr, [sp, #4]
.LBB14167:
.LBB14168:
	.loc 28 93 0
	bl	cancelIPC
.LVL4564:
	.loc 28 94 0
	mov	r0, r4
	bl	setupReplyMaster
.LVL4565:
	.loc 28 95 0
	mov	r1, #2
	mov	r0, r4
	bl	setThreadState
.LVL4566:
.LBB14169:
.LBB14170:
.LBB14171:
.LBB14172:
	.loc 36 78 0
	ldr	r3, [r4, #452]
.LBE14172:
.LBE14171:
	.loc 27 80 0
	tst	r3, #1
	beq	.L4149
.L4144:
.LVL4567:
.LBE14170:
.LBE14169:
.LBB14174:
.LBB14175:
	.loc 28 415 0
	mov	r0, r4
	mov	r1, #0
.LBE14175:
.LBE14174:
.LBE14168:
.LBE14167:
	.loc 28 99 0
	ldr	r4, [sp]
	.cfi_restore 4
.LVL4568:
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB14180:
.LBB14179:
.LBB14177:
.LBB14176:
	.loc 28 415 0
	b	possibleSwitchTo
.LVL4569:
.L4148:
	bx	lr
.LVL4570:
.L4149:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBE14176:
.LBE14177:
.LBB14178:
.LBB14173:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.280
.LVL4571:
	b	.L4144
.LBE14173:
.LBE14178:
.LBE14179:
.LBE14180:
	.cfi_endproc
.LFE699:
	.size	restart, .-restart
	.align	2
	.global	sendSignal
	.syntax unified
	.arm
	.fpu softvfp
	.type	sendSignal, %function
sendSignal:
.LFB791:
	.loc 35 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4572:
	ldr	r3, [r0]
.LVL4573:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r1
	str	r6, [sp, #8]
	str	lr, [sp, #12]
.LBB14226:
.LBB14227:
	.loc 36 227 0
	and	r2, r3, #3
.LBE14227:
.LBE14226:
	.loc 35 52 0
	cmp	r2, #1
	beq	.L4152
	bcc	.L4153
	cmp	r2, #2
	bne	.L4150
.LVL4574:
.LBB14228:
	.loc 35 115 0
	ldr	r3, [r0, #8]
	orr	r4, r3, r1
.LBB14229:
.LBB14230:
	.loc 36 183 0
	str	r4, [r0, #8]
.LVL4575:
.L4150:
.LBE14230:
.LBE14229:
.LBE14228:
	.loc 35 121 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L4153:
	.cfi_restore_state
.LVL4576:
.LBB14231:
.LBB14232:
.LBB14233:
	.loc 36 151 0
	ldr	r2, [r0, #12]
.LVL4577:
.LBE14233:
.LBE14232:
	.loc 35 56 0
	bics	r5, r2, #15
.LVL4578:
	beq	.L4155
.LVL4579:
.LBB14234:
.LBB14235:
	.loc 36 127 0
	ldr	r2, [r5, #448]
	and	r2, r2, #15
.LBE14235:
.LBE14234:
	.loc 35 57 0
	cmp	r2, #3
	beq	.L4169
.LVL4580:
.L4155:
.LBB14236:
.LBB14237:
.LBB14238:
	.loc 36 239 0
	bic	r3, r3, #3
.LBE14238:
.LBE14237:
.LBB14240:
.LBB14241:
	.loc 36 183 0
	str	r4, [r0, #8]
.LBE14241:
.LBE14240:
.LBB14242:
.LBB14239:
	.loc 36 240 0
	orr	r3, r3, #2
	str	r3, [r0]
.LVL4581:
	b	.L4150
.LVL4582:
.L4152:
	ldr	r2, [r0, #4]
.LVL4583:
.LBE14239:
.LBE14242:
.LBE14236:
.LBE14231:
.LBB14243:
.LBB14244:
.LBB14245:
.LBB14246:
.LBB14247:
	.loc 36 208 0
	bic	ip, r3, #15
.LVL4584:
.LBE14247:
.LBE14246:
.LBE14245:
.LBE14244:
	.loc 35 94 0
	bics	r5, r2, #15
.LVL4585:
	beq	.L4170
.LVL4586:
.LBB14248:
.LBB14249:
	.loc 27 227 0
	ldr	r1, [r5, #516]
.LVL4587:
	cmp	r1, #0
	beq	.L4158
	.loc 27 228 0
	ldr	r6, [r5, #512]
	mov	lr, r5
	str	r6, [r1, #512]
	ldr	r6, [r5, #512]
.LVL4588:
.L4159:
	.loc 27 233 0
	cmp	r6, #0
	.loc 27 227 0
	moveq	ip, r1
.LVL4589:
	.loc 27 234 0
	strne	r1, [r6, #516]
.LBE14249:
.LBE14248:
.LBB14251:
.LBB14252:
.LBB14253:
.LBB14254:
	.loc 36 200 0
	tst	lr, #15
	bne	.L4171
	.loc 36 201 0
	and	r1, r2, #15
	.loc 36 202 0
	bic	r2, lr, #15
	orr	r2, r1, r2
.LBE14254:
.LBE14253:
.LBB14257:
.LBB14258:
	.loc 36 219 0
	tst	ip, #15
.LBE14258:
.LBE14257:
.LBB14261:
.LBB14255:
	.loc 36 202 0
	str	r2, [r0, #4]
.LVL4590:
.LBE14255:
.LBE14261:
.LBB14262:
.LBB14259:
	.loc 36 219 0
	bne	.L4172
	.loc 36 220 0
	and	r3, r3, #15
.LVL4591:
	.loc 36 221 0
	bic	ip, ip, #15
.LVL4592:
	orr	r3, r3, ip
.LVL4593:
.LBE14259:
.LBE14262:
.LBE14252:
.LBE14251:
	.loc 35 101 0
	cmp	lr, #0
.LBB14266:
.LBB14267:
	.loc 36 239 0
	biceq	r3, r3, #3
	.loc 36 240 0
	str	r3, [r0]
.LVL4594:
.L4168:
.LBE14267:
.LBE14266:
	.loc 35 105 0
	mov	r0, r5
	mov	r1, #1
	bl	setThreadState
.LVL4595:
.LBE14243:
	.loc 35 121 0
	ldr	r6, [sp, #8]
	.cfi_remember_state
	.cfi_restore 6
.LBB14276:
.LBB14268:
.LBB14269:
	.loc 28 415 0
	mov	r0, r5
	mov	r1, #0
.LBE14269:
.LBE14268:
.LBE14276:
	.loc 35 121 0
	ldr	lr, [sp, #12]
	.cfi_restore 14
.LBB14277:
.LBB14271:
.LBB14272:
	.loc 10 30 0
	str	r4, [r5]
.LVL4596:
.LBE14272:
.LBE14271:
.LBE14277:
	.loc 35 121 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4597:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
.LBB14278:
.LBB14273:
.LBB14270:
	.loc 28 415 0
	b	possibleSwitchTo
.LVL4598:
.L4169:
	.cfi_restore_state
.LBE14270:
.LBE14273:
.LBE14278:
.LBB14279:
	.loc 35 59 0
	mov	r0, r5
.LVL4599:
	bl	cancelIPC
.LVL4600:
	b	.L4168
.LVL4601:
.L4158:
.LBE14279:
.LBB14280:
.LBB14274:
.LBB14250:
	.loc 27 230 0
	ldr	lr, [r5, #512]
.LVL4602:
	mov	r6, lr
	b	.L4159
.LVL4603:
.L4170:
.LBE14250:
.LBE14274:
	.loc 35 94 0 discriminator 1
	movw	r1, #:lower16:.LC34
.LVL4604:
	movw	r0, #:lower16:.LC257
.LVL4605:
	ldr	r3, .L4173
	movt	r1, #:upper16:.LC34
	movt	r0, #:upper16:.LC257
	mov	r2, #94
	bl	_assert_fail
.LVL4606:
.L4171:
.LBB14275:
.LBB14265:
.LBB14263:
.LBB14256:
	bl	notification_ptr_set_ntfnQueue_head.isra.265.part.266
.LVL4607:
.L4172:
.LBE14256:
.LBE14263:
.LBB14264:
.LBB14260:
	bl	notification_ptr_set_ntfnQueue_tail.isra.267.part.268
.LVL4608:
.L4174:
	.align	2
.L4173:
	.word	.LANCHOR5-3564
.LBE14260:
.LBE14264:
.LBE14265:
.LBE14275:
.LBE14280:
	.cfi_endproc
.LFE791:
	.size	sendSignal, .-sendSignal
	.align	2
	.global	performInvocation_Notification
	.syntax unified
	.arm
	.fpu softvfp
	.type	performInvocation_Notification, %function
performInvocation_Notification:
.LFB812:
	.loc 58 625 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4609:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 58 626 0
	bl	sendSignal
.LVL4610:
	.loc 58 629 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE812:
	.size	performInvocation_Notification, .-performInvocation_Notification
	.align	2
	.global	invokeIRQHandler_SetIRQHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeIRQHandler_SetIRQHandler, %function
invokeIRQHandler_SetIRQHandler:
.LFB781:
	.loc 53 152 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4611:
	.loc 53 155 0
	movw	ip, #:lower16:intStateIRQNode
	.loc 53 152 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 53 155 0
	movt	ip, #:upper16:intStateIRQNode
	.loc 53 152 0
	str	r6, [sp, #8]
	mov	r6, r3
	.loc 53 155 0
	ldr	r5, [ip]
	.loc 53 152 0
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 53 152 0
	stm	sp, {r1, r2}
	.loc 53 155 0
	add	r5, r5, r0, lsl #4
.LVL4612:
	.loc 53 157 0
	mov	r0, r5
.LVL4613:
	bl	cteDeleteOne
.LVL4614:
	.loc 53 158 0
	ldm	sp, {r0, r1}
	mov	r3, r5
	mov	r2, r6
	.loc 53 159 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL4615:
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 53 158 0
	b	cteInsert
.LVL4616:
	.cfi_endproc
.LFE781:
	.size	invokeIRQHandler_SetIRQHandler, .-invokeIRQHandler_SetIRQHandler
	.align	2
	.global	deletingIRQHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	deletingIRQHandler, %function
deletingIRQHandler:
.LFB783:
	.loc 53 173 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4617:
	.loc 53 176 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	.loc 53 178 0
	add	r0, r3, r0, lsl #4
.LVL4618:
	b	cteDeleteOne
.LVL4619:
	.cfi_endproc
.LFE783:
	.size	deletingIRQHandler, .-deletingIRQHandler
	.align	2
	.global	invokeIRQHandler_ClearIRQHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeIRQHandler_ClearIRQHandler, %function
invokeIRQHandler_ClearIRQHandler:
.LFB1190:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	deletingIRQHandler
	.cfi_endproc
.LFE1190:
	.size	invokeIRQHandler_ClearIRQHandler, .-invokeIRQHandler_ClearIRQHandler
	.align	2
	.global	decodeIRQHandlerInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeIRQHandlerInvocation, %function
decodeIRQHandlerInvocation:
.LFB779:
	.loc 53 97 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4620:
	.loc 53 97 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 53 98 0
	cmp	r0, #25
	.loc 53 97 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	mov	r4, r1
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
.LVL4621:
	.loc 53 97 0
	add	r1, sp, #36
.LVL4622:
	stmib	r1, {r2, r3}
.LVL4623:
	.loc 53 98 0
	beq	.L4183
	cmp	r0, #26
	.loc 53 133 0
	movw	r3, #:lower16:ksCurThread
	.loc 53 98 0
	beq	.L4184
	cmp	r0, #24
	beq	.L4200
	.loc 53 138 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
.LVL4624:
	ldr	r2, .L4205
	ldr	ip, [r3]
	mov	r1, #0
	mov	r3, #138
	movt	r0, #:upper16:.LC14
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4625:
	movw	r0, #:lower16:.LC260
	movt	r0, #:upper16:.LC260
	bl	kprintf
.LVL4626:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4627:
	.loc 53 139 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	.loc 53 140 0
	mov	r0, r2
	.loc 53 139 0
	str	r2, [r3, #24]
.L4181:
	.loc 53 142 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL4628:
.L4200:
	.cfi_restore_state
	.loc 53 100 0
	movt	r3, #:upper16:ksCurThread
	mov	r1, #2
	ldr	r0, [r3]
.LVL4629:
	bl	setThreadState
.LVL4630:
.LBB14281:
.LBB14282:
.LBB14283:
.LBB14284:
	.loc 7 158 0
	lsr	r1, r4, #5
.LVL4631:
	.loc 7 160 0
	movw	r3, #16895
	.loc 7 159 0
	and	r4, r4, #31
.LVL4632:
	.loc 7 160 0
	lsl	r1, r1, #2
.LVL4633:
	mov	r2, #1
	movt	r3, 65520
	add	r3, r1, r3
	lsl	r4, r2, r4
.LBE14284:
.LBE14283:
.LBE14282:
.LBE14281:
	.loc 53 102 0
	mov	r0, #0
.LBB14288:
.LBB14287:
.LBB14286:
.LBB14285:
	.loc 7 160 0
	str	r4, [r3, #-255]
.LVL4634:
.LBE14285:
.LBE14286:
.LBE14287:
.LBE14288:
	.loc 53 102 0
	b	.L4181
.LVL4635:
.L4184:
	.loc 53 133 0
	movt	r3, #:upper16:ksCurThread
	mov	r1, #2
	ldr	r0, [r3]
.LVL4636:
	bl	setThreadState
.LVL4637:
.LBB14289:
.LBB14290:
	.loc 53 166 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r0, [r3]
	.loc 53 168 0
	add	r0, r0, r4, lsl #4
	bl	cteDeleteOne
.LVL4638:
.LBE14290:
.LBE14289:
	.loc 53 135 0
	mov	r0, #0
	b	.L4181
.LVL4639:
.L4183:
	ldr	r5, [sp, #40]
.LBB14291:
	.loc 53 108 0
	cmp	r5, #0
	beq	.L4201
	.loc 53 112 0
	ldr	r1, [r5]
	ldrd	r2, [r5]
.LBB14292:
.LBB14293:
	.loc 36 903 0
	and	r0, r1, #14
.LVL4640:
	cmp	r0, #14
.LBE14293:
.LBE14292:
	.loc 53 112 0
	strd	r2, [sp, #16]
.LVL4641:
.LBB14295:
.LBB14294:
	.loc 36 905 0
	uxtbeq	r3, r1
.LVL4642:
	.loc 36 904 0
	andne	r3, r1, #15
.LBE14294:
.LBE14295:
	.loc 53 115 0
	cmp	r3, #6
	beq	.L4202
	.loc 53 118 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4205
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
.LVL4643:
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	mov	r3, #118
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
.LVL4644:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4645:
	movw	r0, #:lower16:.LC258
	movt	r0, #:upper16:.LC258
	bl	kprintf
.LVL4646:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4647:
.L4195:
	.loc 53 122 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 53 123 0
	mov	r1, #0
	.loc 53 124 0
	mov	r0, #3
	.loc 53 123 0
	str	r1, [r3, #4]
	.loc 53 122 0
	str	r2, [r3, #24]
	.loc 53 124 0
	b	.L4181
.LVL4648:
.L4202:
.LBB14296:
.LBB14297:
	.loc 36 1251 0 discriminator 1
	and	r3, r1, #15
.LBE14297:
.LBE14296:
	.loc 53 112 0 discriminator 1
	ldr	r6, [r5, #4]
	str	r1, [sp, #16]
.LVL4649:
.LBB14300:
.LBB14298:
	.loc 36 1251 0 discriminator 1
	cmp	r3, #6
	bne	.L4203
.LVL4650:
.LBE14298:
.LBE14300:
	.loc 53 115 0
	ands	r1, r6, #1
.LVL4651:
	bne	.L4204
	.loc 53 120 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4205
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
	mov	r3, #120
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
.LVL4652:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL4653:
	movw	r0, #:lower16:.LC259
	movt	r0, #:upper16:.LC259
	bl	kprintf
.LVL4654:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL4655:
	b	.L4195
.LVL4656:
.L4204:
	.loc 53 127 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, #2
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState
.LVL4657:
	.loc 53 128 0
	add	r2, sp, #24
	mov	r0, r4
	str	r6, [sp, #20]
	mov	r3, r5
	ldmdb	r2, {r1, r2}
	bl	invokeIRQHandler_SetIRQHandler
.LVL4658:
	.loc 53 129 0
	mov	r0, #0
.LVL4659:
	b	.L4181
.LVL4660:
.L4201:
	.loc 53 109 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 53 110 0
	mov	r0, #3
.LVL4661:
	.loc 53 109 0
	str	r2, [r3, #24]
	.loc 53 110 0
	b	.L4181
.LVL4662:
.L4203:
.LBB14301:
.LBB14299:
	bl	cap_notification_cap_get_capNtfnCanSend.part.263
.LVL4663:
.L4206:
	.align	2
.L4205:
	.word	.LANCHOR5-3552
.LBE14299:
.LBE14301:
.LBE14291:
	.cfi_endproc
.LFE779:
	.size	decodeIRQHandlerInvocation, .-decodeIRQHandlerInvocation
	.align	2
	.global	tcbEPAppend
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbEPAppend, %function
tcbEPAppend:
.LFB822:
	.loc 27 210 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4664:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 27 210 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	ldr	r2, [sp]
.LVL4665:
	mov	r3, r0
	ldr	r0, [sp, #4]
.LVL4666:
	.loc 27 217 0
	mov	ip, #0
	.loc 27 220 0
	str	r1, [r3, #4]
	.loc 27 211 0
	cmp	r2, #0
	moveq	r2, r1
.LVL4667:
	.loc 27 214 0
	strne	r1, [r0, #512]
	.loc 27 220 0
	str	r2, [r3]
	.loc 27 216 0
	str	r0, [r1, #516]
	.loc 27 221 0
	mov	r0, r3
	.loc 27 217 0
	str	ip, [r1, #512]
	.loc 27 221 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE822:
	.size	tcbEPAppend, .-tcbEPAppend
	.align	2
	.global	tcbEPDequeue
	.syntax unified
	.arm
	.fpu softvfp
	.type	tcbEPDequeue, %function
tcbEPDequeue:
.LFB823:
	.loc 27 226 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4668:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 226 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	.loc 27 227 0
	ldr	r2, [r1, #516]
	.loc 27 226 0
	mov	r3, r0
	ldm	sp, {r0, ip}
.LVL4669:
	.loc 27 227 0
	cmp	r2, #0
	beq	.L4212
	.loc 27 228 0
	ldr	lr, [r1, #512]
	str	lr, [r2, #512]
	ldr	r1, [r1, #512]
.LVL4670:
.L4213:
	.loc 27 233 0
	cmp	r1, #0
	.loc 27 227 0
	moveq	ip, r2
.LVL4671:
	.loc 27 234 0
	strne	r2, [r1, #516]
	.loc 27 239 0
	stm	r3, {r0, ip}
	.loc 27 240 0
	mov	r0, r3
.LVL4672:
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL4673:
.L4212:
	.cfi_restore_state
	.loc 27 230 0
	ldr	r0, [r1, #512]
.LVL4674:
	mov	r1, r0
.LVL4675:
	b	.L4213
	.cfi_endproc
.LFE823:
	.size	tcbEPDequeue, .-tcbEPDequeue
	.align	2
	.global	getExtraCPtr
	.syntax unified
	.arm
	.fpu softvfp
	.type	getExtraCPtr, %function
getExtraCPtr:
.LFB824:
	.loc 27 244 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4676:
	.loc 27 245 0
	add	r1, r1, #122
.LVL4677:
	.loc 27 246 0
	ldr	r0, [r0, r1, lsl #2]
.LVL4678:
	bx	lr
	.cfi_endproc
.LFE824:
	.size	getExtraCPtr, .-getExtraCPtr
	.align	2
	.global	setExtraBadge
	.syntax unified
	.arm
	.fpu softvfp
	.type	setExtraBadge, %function
setExtraBadge:
.LFB825:
	.loc 27 251 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4679:
	.loc 27 252 0
	add	r2, r2, #122
.LVL4680:
	str	r1, [r0, r2, lsl #2]
	.loc 27 253 0
	bx	lr
	.cfi_endproc
.LFE825:
	.size	setExtraBadge, .-setExtraBadge
	.align	2
	.global	setupCallerCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupCallerCap, %function
setupCallerCap:
.LFB826:
	.loc 27 257 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4681:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r0
	mov	r4, r1
	str	lr, [sp, #8]
	.loc 27 261 0
	mov	r1, #5
.LVL4682:
	.loc 27 257 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 27 261 0
	bl	setThreadState
.LVL4683:
	.loc 27 262 0
	bic	r2, r5, #1020
	bic	r2, r2, #3
	.loc 27 263 0
	ldr	r3, [r2, #32]
	.loc 27 262 0
	add	r2, r2, #32
.LVL4684:
.LBB14312:
.LBB14313:
	.loc 36 903 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL4685:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE14313:
.LBE14312:
	.loc 27 265 0
	cmp	r1, #8
	bne	.L4231
.LVL4686:
.LBB14314:
.LBB14315:
	.loc 36 1337 0
	and	r1, r3, #15
	cmp	r1, #8
	bne	.L4232
.LVL4687:
.LBE14315:
.LBE14314:
	.loc 27 266 0
	tst	r3, #16
	beq	.L4233
.LBB14317:
.LBB14318:
	.loc 36 1326 0
	bic	r3, r3, #31
.LBE14318:
.LBE14317:
	.loc 27 267 0
	cmp	r5, r3
	bne	.L4234
	.loc 27 268 0
	bic	r3, r4, #1020
	bic	r3, r3, #3
	.loc 27 269 0
	ldr	r1, [r3, #48]
	.loc 27 268 0
	add	r3, r3, #48
.LVL4688:
.LBB14319:
.LBB14320:
	.loc 36 903 0
	and	r0, r1, #14
	cmp	r0, #14
	.loc 36 905 0
	uxtbeq	r1, r1
.LVL4689:
	.loc 36 904 0
	andne	r1, r1, #15
.LBE14320:
.LBE14319:
	.loc 27 271 0
	cmp	r1, #0
	bne	.L4235
.LVL4690:
.LBB14321:
.LBB14322:
	.loc 36 1294 0
	tst	r5, #31
	bne	.L4236
.LVL4691:
	.loc 36 1299 0
	bic	r5, r5, #31
.LVL4692:
	.loc 36 1303 0
	str	r1, [sp, #4]
.LVL4693:
.LBE14322:
.LBE14321:
	.loc 27 272 0
	add	r1, sp, #8
.LBB14325:
.LBB14323:
	.loc 36 1300 0
	orr	r5, r5, #8
	.loc 36 1303 0
	str	r5, [sp]
.LBE14323:
.LBE14325:
	.loc 27 272 0
	ldmdb	r1, {r0, r1}
	bl	cteInsert
.LVL4694:
	.loc 27 274 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4695:
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4696:
.L4231:
	.cfi_restore_state
	.loc 27 265 0 discriminator 1
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC261
	ldr	r3, .L4237
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC261
	movw	r2, #265
.LVL4697:
	bl	_assert_fail
.LVL4698:
.L4236:
.LBB14326:
.LBB14324:
	.loc 36 1294 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC212
	ldr	r3, .L4237+4
.LVL4699:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC212
	movw	r2, #1294
.LVL4700:
	bl	_assert_fail
.LVL4701:
.L4235:
.LBE14324:
.LBE14326:
	.loc 27 271 0 discriminator 1
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC264
	ldr	r3, .L4237
.LVL4702:
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC264
	movw	r2, #271
.LVL4703:
	bl	_assert_fail
.LVL4704:
.L4234:
	.loc 27 267 0 discriminator 1
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC263
	ldr	r3, .L4237
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC263
	movw	r2, #267
.LVL4705:
	bl	_assert_fail
.LVL4706:
.L4233:
	.loc 27 266 0 discriminator 1
	movw	r1, #:lower16:.LC117
	movw	r0, #:lower16:.LC262
	ldr	r3, .L4237
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC262
	movw	r2, #266
.LVL4707:
	bl	_assert_fail
.LVL4708:
.L4232:
.LBB14327:
.LBB14316:
	bl	cap_reply_cap_get_capReplyMaster.isra.90.part.91
.LVL4709:
.L4238:
	.align	2
.L4237:
	.word	.LANCHOR5-3524
	.word	.LANCHOR3+3240
.LBE14316:
.LBE14327:
	.cfi_endproc
.LFE826:
	.size	setupCallerCap, .-setupCallerCap
	.align	2
	.global	deleteCallerCap
	.syntax unified
	.arm
	.fpu softvfp
	.type	deleteCallerCap, %function
deleteCallerCap:
.LFB827:
	.loc 27 278 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4710:
	.loc 27 281 0
	bic	r0, r0, #1020
.LVL4711:
	bic	r0, r0, #3
	.loc 27 283 0
	add	r0, r0, #48
	b	cteDeleteOne
.LVL4712:
	.cfi_endproc
.LFE827:
	.size	deleteCallerCap, .-deleteCallerCap
	.align	2
	.global	lookupExtraCaps
	.syntax unified
	.arm
	.fpu softvfp
	.type	lookupExtraCaps, %function
lookupExtraCaps:
.LFB828:
	.loc 27 290 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4713:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 27 295 0
	subs	r5, r1, #0
	.loc 27 296 0
	movweq	r3, #:lower16:current_extra_caps
	.loc 27 290 0
	strd	r6, [sp, #8]
	.loc 27 297 0
	moveq	r0, r5
.LVL4714:
	.loc 27 296 0
	movteq	r3, #:upper16:current_extra_caps
	.loc 27 290 0
	strd	r8, [sp, #16]
	str	lr, [sp, #24]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 27 296 0
	streq	r5, [r3]
	.loc 27 295 0
	beq	.L4240
.LVL4715:
.LBB14328:
.LBB14329:
	.loc 30 93 0
	ubfx	r7, r2, #7, #2
.LVL4716:
.LBE14329:
.LBE14328:
	.loc 27 302 0
	cmp	r7, #0
	beq	.L4246
	.loc 27 311 0
	movw	r6, #:lower16:current_extra_caps
	mov	r8, r0
	add	r5, r5, #484
	movt	r6, #:upper16:current_extra_caps
	.loc 27 302 0
	mov	r4, #0
	b	.L4245
.LVL4717:
.L4244:
	.loc 27 311 0 discriminator 2
	ldr	r3, [sp, #4]
	str	r3, [r6, r4, lsl #2]
	.loc 27 302 0 discriminator 2
	add	r4, r4, #1
.LVL4718:
	cmp	r4, r7
	beq	.L4252
.LVL4719:
.L4245:
.LBB14330:
.LBB14331:
	.loc 27 245 0
	ldr	r9, [r5, #4]!
.LVL4720:
.LBE14331:
.LBE14330:
	.loc 27 305 0
	mov	r0, sp
	mov	r1, r8
	mov	r2, r9
.LVL4721:
	bl	lookupSlot
.LVL4722:
	ldr	r0, [sp]
.LVL4723:
	.loc 27 311 0
	mov	r2, r6
	.loc 27 306 0
	cmp	r0, #0
	beq	.L4244
.LVL4724:
	.loc 27 307 0
	movw	r3, #:lower16:current_fault
	mov	r2, #1
	movt	r3, #:upper16:current_fault
	stm	r3, {r2, r9}
.LVL4725:
.L4240:
	.loc 27 318 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4726:
.L4252:
	.cfi_restore_state
	.loc 27 313 0
	cmp	r4, #3
	beq	.L4240
.LVL4727:
.L4243:
	.loc 27 314 0
	mov	r3, #0
	.loc 27 317 0
	mov	r0, r3
	.loc 27 314 0
	str	r3, [r2, r4, lsl #2]
	b	.L4240
.LVL4728:
.L4246:
	movw	r2, #:lower16:current_extra_caps
.LVL4729:
	.loc 27 302 0
	mov	r4, r7
	movt	r2, #:upper16:current_extra_caps
	b	.L4243
	.cfi_endproc
.LFE828:
	.size	lookupExtraCaps, .-lookupExtraCaps
	.align	2
	.global	doNormalTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	doNormalTransfer, %function
doNormalTransfer:
.LFB702:
	.loc 28 150 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4730:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB14384:
.LBB14385:
	.loc 10 36 0
	ldr	r4, [r0, #4]
.LBE14385:
.LBE14384:
	.loc 28 150 0
	mov	r5, r0
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	mov	r8, r1
	mov	r9, r3
	strd	r10, [sp, #24]
	mov	r10, r2
	str	lr, [sp, #32]
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
.LBB14386:
.LBB14387:
.LBB14388:
.LBB14389:
	.loc 30 113 0
	and	r7, r4, #127
.LBE14389:
.LBE14388:
.LBE14387:
.LBE14386:
	.loc 28 150 0
	ldr	r1, [sp, #96]
.LVL4731:
.LBB14396:
.LBB14394:
	.loc 41 89 0
	cmp	r7, #120
.LBB14390:
.LBB14391:
	.loc 30 125 0
	bichi	r3, r4, #127
.LVL4732:
	.loc 30 126 0
	movhi	r7, #120
.LBE14391:
.LBE14390:
.LBE14394:
.LBE14396:
	.loc 28 150 0
	ldr	r6, [sp, #100]
.LVL4733:
.LBB14397:
.LBB14395:
.LBB14393:
.LBB14392:
	.loc 30 126 0
	orrhi	fp, r3, r7
.LVL4734:
.LBE14392:
.LBE14393:
	.loc 41 89 0
	movls	fp, r4
.LVL4735:
.LBE14395:
.LBE14397:
	.loc 28 158 0
	cmp	r1, #0
	bne	.L4291
	.loc 28 165 0
	movw	lr, #:lower16:current_extra_caps
	.loc 28 166 0
	mov	r2, r1
.LVL4736:
	.loc 28 165 0
	movt	lr, #:upper16:current_extra_caps
	add	ip, sp, #20
	ldrd	r0, [lr]
.LVL4737:
.LBB14398:
.LBB14399:
	.loc 27 328 0
	cmp	r7, #0
.LBE14399:
.LBE14398:
	.loc 28 165 0
	ldr	lr, [lr, #8]
	strd	r0, [sp, #20]
	str	lr, [ip, #8]
.LVL4738:
.LBB14408:
.LBB14404:
	.loc 27 328 0
	beq	.L4257
.LVL4739:
.L4295:
	ldr	lr, .L4298
	mov	r1, #2
	mov	r4, #0
.LVL4740:
.L4261:
.LBB14400:
.LBB14401:
	.loc 10 36 0
	ldr	r3, [r5, r1, lsl #2]
.LVL4741:
.LBE14401:
.LBE14400:
	.loc 27 328 0
	add	r4, r4, #1
.LVL4742:
	cmp	r4, #3
	cmpls	r4, r7
.LBB14402:
.LBB14403:
	.loc 10 30 0
	str	r3, [r6, r1, lsl #2]
.LVL4743:
.LBE14403:
.LBE14402:
	.loc 27 328 0
	bcs	.L4292
	ldr	r1, [lr, r4, lsl #2]
	b	.L4261
.L4292:
	.loc 27 333 0
	ldr	r3, [sp, #104]
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	r8, #0
	movne	r1, r0
	orreq	r1, r0, #1
	cmp	r1, #0
	bne	.L4293
	.loc 27 338 0
	cmp	r4, r7
	bcs	.L4259
	ldr	r3, [sp, #104]
	lsl	r4, r4, #2
.LVL4744:
	add	r0, r8, r7, lsl #2
	add	r8, r8, r4
.LVL4745:
	add	r4, r3, r4
.L4262:
	.loc 27 339 0
	ldr	r3, [r8, #4]!
	.loc 27 338 0
	cmp	r0, r8
	.loc 27 339 0
	str	r3, [r4, #4]!
	.loc 27 338 0
	bne	.L4262
	mov	r4, r7
.L4259:
.LVL4746:
	str	r2, [sp, #20]
	ldr	r2, [ip, #8]
.LVL4747:
.LBE14404:
.LBE14408:
.LBB14409:
.LBB14410:
.LBB14411:
.LBB14412:
	.loc 30 85 0
	bic	r5, fp, #3968
.LVL4748:
	ldr	r8, [sp, #20]
	ldr	r3, [sp, #24]
.LBE14412:
.LBE14411:
	.loc 28 205 0
	cmp	r8, #0
	movne	r7, r1
	orreq	r7, r1, #1
	str	r8, [sp, #32]
	cmp	r7, #0
	str	r3, [sp, #36]
	str	r2, [sp, #40]
.LVL4749:
	beq	.L4294
.LVL4750:
.L4263:
.LBE14410:
.LBE14409:
.LBB14439:
.LBB14440:
	.loc 30 125 0
	bic	r5, r5, #127
.LVL4751:
.LBE14440:
.LBE14439:
.LBB14442:
.LBB14443:
	.loc 10 30 0
	str	r9, [r6]
.LBE14443:
.LBE14442:
.LBB14444:
.LBB14441:
	.loc 30 126 0
	orr	r4, r5, r4
.LVL4752:
.LBE14441:
.LBE14444:
.LBB14445:
.LBB14446:
	.loc 10 30 0
	str	r4, [r6, #4]
.LVL4753:
.LBE14446:
.LBE14445:
	.loc 28 177 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4754:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4755:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
.LVL4756:
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4757:
.L4293:
	.cfi_restore_state
.LBB14447:
.LBB14405:
	.loc 27 333 0
	mov	r1, r0
	b	.L4259
.LVL4758:
.L4291:
.LBE14405:
.LBE14447:
	.loc 28 159 0
	mov	r2, fp
.LVL4759:
	mov	r1, r8
	bl	lookupExtraCaps
.LVL4760:
	.loc 28 160 0
	movw	lr, #:lower16:current_extra_caps
	.loc 28 162 0
	cmp	r0, #0
	.loc 28 160 0
	movt	lr, #:upper16:current_extra_caps
	add	ip, sp, #20
	ldr	r2, [lr]
.LVL4761:
	.loc 28 162 0
	movne	r2, #0
.LVL4762:
.LBB14448:
.LBB14406:
	.loc 27 328 0
	cmp	r7, #0
.LBE14406:
.LBE14448:
	.loc 28 160 0
	ldrd	r0, [lr]
.LVL4763:
	ldr	lr, [lr, #8]
.LVL4764:
	strd	r0, [sp, #20]
.LVL4765:
	str	lr, [ip, #8]
.LBB14449:
.LBB14407:
	.loc 27 328 0
	bne	.L4295
.LVL4766:
.L4257:
	.loc 27 333 0
	ldr	r3, [sp, #104]
	.loc 27 328 0
	mov	r4, r7
	.loc 27 333 0
	clz	r1, r3
	lsr	r1, r1, #5
	b	.L4259
.LVL4767:
.L4294:
.LBE14407:
.LBE14449:
.LBB14450:
.LBB14438:
	.loc 28 209 0
	ldr	r1, [sp, #104]
	mov	r0, r6
	add	r3, r1, #488
	str	r3, [sp, #4]
	bl	getReceiveSlots
.LVL4768:
.LBB14413:
.LBB14414:
	.loc 28 241 0
	str	r4, [sp]
	ldr	r4, [sp, #4]
.LBE14414:
.LBE14413:
	.loc 28 209 0
	mov	fp, r0
.LVL4769:
.L4273:
.LBB14434:
	.loc 28 213 0
	ldr	r1, [r8]
	ldrd	r2, [r8]
	ldr	ip, [r8, #4]
.LVL4770:
.LBB14417:
.LBB14418:
	.loc 36 903 0
	and	r0, r1, #14
	cmp	r0, #14
.LBE14418:
.LBE14417:
	.loc 28 213 0
	strd	r2, [sp, #12]
.LBB14420:
.LBB14419:
	.loc 36 905 0
	uxtbeq	r3, r1
.LVL4771:
	.loc 36 904 0
	andne	r3, r1, #15
.LBE14419:
.LBE14420:
	.loc 28 215 0
	cmp	r3, #4
	beq	.L4296
.L4266:
.LBB14421:
	.loc 28 228 0
	cmp	fp, #0
	beq	.L4289
	.loc 28 232 0
	add	r3, sp, #12
	str	r1, [sp, #12]
	add	r0, sp, #44
	str	ip, [sp, #16]
	mov	r1, r8
.LVL4772:
	ldm	r3, {r2, r3}
	bl	deriveCap
.LVL4773:
	.loc 28 234 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bne	.L4289
	ldr	r3, [sp, #48]
.LVL4774:
.LBB14415:
.LBB14416:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL4775:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE14416:
.LBE14415:
	.loc 28 237 0
	cmp	r3, #0
	beq	.L4289
	.loc 28 241 0
	add	r1, sp, #48
	mov	r3, fp
	mov	r2, r8
	ldm	r1, {r0, r1}
	.loc 28 243 0
	mov	fp, #0
.LVL4776:
	.loc 28 241 0
	bl	cteInsert
.LVL4777:
.L4268:
.LBE14421:
.LBE14434:
	.loc 28 211 0
	add	r7, r7, #1
.LVL4778:
	add	r4, r4, #4
	cmp	r7, #3
	beq	.L4277
	add	r3, sp, #32
	ldr	r8, [r3, r7, lsl #2]
.LVL4779:
	cmp	r8, #0
	bne	.L4273
.LVL4780:
.L4289:
	lsl	r3, r7, #7
	ldr	r4, [sp]
	and	r3, r3, #384
.L4272:
.LVL4781:
.LBB14435:
.LBB14436:
	.loc 30 105 0
	bic	r5, r5, #384
.LVL4782:
	.loc 30 106 0
	orr	r5, r5, r3
	b	.L4263
.LVL4783:
.L4277:
.LBE14436:
.LBE14435:
	.loc 28 211 0
	mov	r3, #384
	ldr	r4, [sp]
	b	.L4272
.LVL4784:
.L4296:
.LBB14437:
.LBB14422:
.LBB14423:
	.loc 36 1059 0
	and	r3, r1, #15
	str	r1, [sp, #12]
.LVL4785:
	cmp	r3, #4
	bne	.L4297
.LVL4786:
	.loc 36 1062 0
	bic	r3, ip, #15
.LBE14423:
.LBE14422:
	.loc 28 215 0
	cmp	r10, r3
	bne	.L4266
.LVL4787:
.LBB14425:
.LBB14426:
	.loc 30 73 0
	ubfx	r3, r5, #9, #3
.LBE14426:
.LBE14425:
.LBB14427:
.LBB14428:
	.loc 36 1154 0
	lsr	r1, r1, #4
.LVL4788:
.LBE14428:
.LBE14427:
	.loc 28 223 0
	mov	r2, #1
	.loc 28 222 0
	orr	r3, r3, r2, lsl r7
.LBB14429:
.LBB14430:
	.loc 27 252 0
	str	r1, [r4]
.LVL4789:
.LBE14430:
.LBE14429:
.LBB14431:
.LBB14432:
	.loc 30 86 0
	bfi	r5, r3, #9, #3
	b	.L4268
.LVL4790:
.L4297:
.LBE14432:
.LBE14431:
.LBB14433:
.LBB14424:
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL4791:
.L4299:
	.align	2
.L4298:
	.word	.LANCHOR3+1968
.LBE14424:
.LBE14433:
.LBE14437:
.LBE14438:
.LBE14450:
	.cfi_endproc
.LFE702:
	.size	doNormalTransfer, .-doNormalTransfer
	.align	2
	.global	doIPCTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	doIPCTransfer, %function
doIPCTransfer:
.LFB700:
	.loc 28 104 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4792:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 28 107 0
	mov	r0, #1
.LVL4793:
	.loc 28 104 0
	strd	r6, [sp, #8]
	mov	r6, r2
	strd	r8, [sp, #16]
	mov	r8, r1
	mov	r9, r3
	str	lr, [sp, #24]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 28 104 0
	ldr	r5, [sp, #48]
	.loc 28 107 0
	mov	r1, r5
.LVL4794:
	bl	lookupIPCBuffer
.LVL4795:
	mov	r7, r0
.LVL4796:
.LBB14451:
.LBB14452:
	.loc 36 2546 0
	ldr	r0, [r4, #464]
.LVL4797:
.LBE14452:
.LBE14451:
	.loc 28 109 0
	ands	r0, r0, #7
	bne	.L4301
	.loc 28 110 0
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL4798:
	.loc 28 111 0
	mov	r1, r0
	mov	r3, r6
	str	r9, [sp]
	mov	r2, r8
	mov	r0, r4
.LVL4799:
	stmib	sp, {r5, r7}
	bl	doNormalTransfer
.LVL4800:
	.loc 28 116 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4801:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4802:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL4803:
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4804:
.L4301:
	.cfi_restore_state
	.loc 28 114 0
	mov	r3, r7
	mov	r2, r5
	mov	r1, r4
	mov	r0, r6
	.loc 28 116 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4805:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4806:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL4807:
	ldr	lr, [sp, #24]
	.cfi_restore 14
	add	sp, sp, #28
	.cfi_def_cfa_offset 0
	.loc 28 114 0
	b	doFaultTransfer
.LVL4808:
	.cfi_endproc
.LFE700:
	.size	doIPCTransfer, .-doIPCTransfer
	.align	2
	.global	doReplyTransfer
	.syntax unified
	.arm
	.fpu softvfp
	.type	doReplyTransfer, %function
doReplyTransfer:
.LFB701:
	.loc 28 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4809:
.LBB14472:
.LBB14473:
	.loc 36 116 0
	ldr	r3, [r1, #448]
.LBE14473:
.LBE14472:
	.loc 28 120 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
.LBB14475:
.LBB14474:
	.loc 36 116 0
	and	r3, r3, #15
.LBE14474:
.LBE14475:
	.loc 28 121 0
	cmp	r3, #5
	bne	.L4311
	mov	r5, r2
.LBB14476:
.LBB14477:
	.loc 36 2546 0
	ldr	r2, [r1, #464]
.LVL4810:
	mov	r4, r1
.LBE14477:
.LBE14476:
	.loc 28 124 0
	ands	r2, r2, #7
	bne	.L4307
	.loc 28 125 0
	mov	r1, r2
.LVL4811:
	mov	r3, #1
	str	r4, [sp]
	bl	doIPCTransfer
.LVL4812:
	.loc 28 127 0
	mov	r0, r5
	bl	cteDeleteOne
.LVL4813:
	.loc 28 128 0
	mov	r1, #1
.L4310:
.LBB14478:
.LBB14479:
.LBB14480:
	.loc 28 138 0
	mov	r0, r4
	bl	setThreadState
.LVL4814:
.LBB14481:
.LBB14482:
	.loc 28 409 0
	mov	r0, r4
	mov	r1, #1
.LBE14482:
.LBE14481:
.LBE14480:
.LBE14479:
.LBE14478:
	.loc 28 144 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4815:
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
.LBB14489:
.LBB14487:
.LBB14485:
.LBB14484:
.LBB14483:
	.loc 28 409 0
	b	possibleSwitchTo
.LVL4816:
.L4307:
	.cfi_restore_state
	mov	r6, r0
.LVL4817:
.LBE14483:
.LBE14484:
	.loc 28 134 0
	mov	r0, r5
.LVL4818:
	bl	cteDeleteOne
.LVL4819:
	.loc 28 135 0
	mov	r1, r6
	mov	r0, r4
	bl	handleFaultReply
.LVL4820:
	.loc 28 137 0
	subs	r1, r0, #0
	.loc 28 136 0
	mov	r3, #0
	str	r3, [r4, #464]
	str	r3, [r4, #468]
	.loc 28 137 0
	bne	.L4312
	.loc 28 141 0
	mov	r0, r4
.LVL4821:
.LBE14485:
.LBE14487:
.LBE14489:
	.loc 28 144 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL4822:
	ldr	r6, [sp, #8]
	.cfi_restore 6
.LVL4823:
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
.LBB14490:
.LBB14488:
.LBB14486:
	.loc 28 141 0
	b	setThreadState
.LVL4824:
.L4312:
	.cfi_restore_state
	.loc 28 138 0
	mov	r1, #2
	b	.L4310
.LVL4825:
.L4311:
.LBE14486:
.LBE14488:
.LBE14490:
	.loc 28 121 0 discriminator 1
	movw	r1, #:lower16:.LC105
.LVL4826:
	movw	r0, #:lower16:.LC265
.LVL4827:
	ldr	r3, .L4313
	movt	r1, #:upper16:.LC105
	movt	r0, #:upper16:.LC265
	mov	r2, #122
.LVL4828:
	bl	_assert_fail
.LVL4829:
.L4314:
	.align	2
.L4313:
	.word	.LANCHOR5-3508
	.cfi_endproc
.LFE701:
	.size	doReplyTransfer, .-doReplyTransfer
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleReply, %function
handleReply:
.LFB358:
	.file 59 "/home/sel4/work/work2/kernel/src/api/syscall.c"
	.loc 59 307 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 59 311 0
	movw	r3, #:lower16:ksCurThread
	.loc 59 307 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 59 311 0
	movt	r3, #:upper16:ksCurThread
	ldr	ip, [r3]
	bic	r2, ip, #1020
	bic	r2, r2, #3
	.loc 59 312 0
	ldr	r3, [r2, #48]
	.loc 59 311 0
	add	r2, r2, #48
.LVL4830:
.LBB14491:
.LBB14492:
	.loc 36 903 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL4831:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE14492:
.LBE14491:
	.loc 59 314 0
	cmp	r1, #0
	beq	.L4319
	cmp	r1, #8
	bne	.L4318
.LVL4832:
.LBB14493:
.LBB14494:
.LBB14495:
	.loc 36 1337 0
	and	r1, r3, #15
	cmp	r1, #8
	bne	.L4324
.LVL4833:
.LBE14495:
.LBE14494:
	.loc 59 318 0
	tst	r3, #16
	bne	.L4318
.LBB14497:
.LBB14498:
	.loc 36 1326 0
	bic	r1, r3, #31
.LVL4834:
.LBE14498:
.LBE14497:
	.loc 59 324 0
	cmp	ip, r1
	beq	.L4325
	.loc 59 325 0
	mov	r0, ip
.LBE14493:
	.loc 59 338 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB14500:
	.loc 59 325 0
	b	doReplyTransfer
.LVL4835:
.L4318:
	.cfi_restore_state
.LBE14500:
	.loc 59 337 0
	movw	r1, #:lower16:.LC266
	movw	r0, #:lower16:.LC269
	ldr	r3, .L4326
	movt	r1, #:upper16:.LC266
	movt	r0, #:upper16:.LC269
	movw	r2, #337
.LVL4836:
	bl	_fail
.LVL4837:
.L4319:
	.loc 59 330 0
	ldr	lr, [ip, #68]
	add	r3, ip, #528
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4326
.LVL4838:
	str	ip, [sp]
.LVL4839:
	movt	r0, #:upper16:.LC14
	stmib	sp, {r3, lr}
	movw	r3, #330
	bl	kprintf
.LVL4840:
	movw	r0, #:lower16:.LC268
	movt	r0, #:upper16:.LC268
	bl	kprintf
.LVL4841:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	.loc 59 338 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 59 330 0
	b	kprintf
.LVL4842:
.L4324:
	.cfi_restore_state
.LBB14501:
.LBB14499:
.LBB14496:
	bl	cap_reply_cap_get_capReplyMaster.isra.90.part.91
.LVL4843:
.L4325:
.LBE14496:
.LBE14499:
	.loc 59 324 0 discriminator 1
	movw	r1, #:lower16:.LC266
.LVL4844:
	movw	r0, #:lower16:.LC267
	ldr	r3, .L4326+4
.LVL4845:
	movt	r1, #:upper16:.LC266
	movt	r0, #:upper16:.LC267
	mov	r2, #324
.LVL4846:
	bl	_assert_fail
.LVL4847:
.L4327:
	.align	2
.L4326:
	.word	.LANCHOR5-3480
	.word	.LANCHOR5-3492
.LBE14501:
	.cfi_endproc
.LFE358:
	.size	handleReply, .-handleReply
	.align	2
	.global	performInvocation_Reply
	.syntax unified
	.arm
	.fpu softvfp
	.type	performInvocation_Reply, %function
performInvocation_Reply:
.LFB813:
	.loc 58 633 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4848:
	.loc 58 634 0
	movw	r3, #:lower16:ksCurThread
	.loc 58 633 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 58 634 0
	mov	r2, r1
	movt	r3, #:upper16:ksCurThread
	mov	r1, r0
.LVL4849:
	ldr	r0, [r3]
.LVL4850:
	.loc 58 633 0
	str	lr, [sp, #4]
	.loc 58 634 0
	bl	doReplyTransfer
.LVL4851:
	.loc 58 636 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE813:
	.size	performInvocation_Reply, .-performInvocation_Reply
	.align	2
	.global	sendIPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	sendIPC, %function
sendIPC:
.LFB770:
	.loc 56 42 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4852:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	mov	r6, r3
	mov	r7, r1
	strd	r8, [sp, #16]
	str	lr, [sp, #24]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 56 42 0
	ldrd	r4, [sp, #40]
	ldr	r3, [r5]
.LVL4853:
.LBB14556:
.LBB14557:
	.loc 36 499 0
	and	r1, r3, #3
.LVL4854:
.LBE14557:
.LBE14556:
	.loc 56 43 0
	cmp	r1, #1
	bls	.L4332
	cmp	r1, #2
	bne	.L4330
.LVL4855:
	ldr	r1, [r5, #4]
.LVL4856:
.LBB14558:
.LBB14559:
.LBB14560:
.LBB14561:
.LBB14562:
	.loc 36 480 0
	bic	ip, r3, #15
.LVL4857:
.LBE14562:
.LBE14561:
.LBE14560:
.LBE14559:
	.loc 56 80 0
	bics	r8, r1, #15
.LVL4858:
	beq	.L4358
.LVL4859:
.LBB14563:
.LBB14564:
	.loc 27 227 0
	ldr	r0, [r8, #516]
.LVL4860:
	cmp	r0, #0
	beq	.L4343
	.loc 27 228 0
	ldr	r9, [r8, #512]
	mov	lr, r8
	str	r9, [r0, #512]
	ldr	r9, [r8, #512]
.LVL4861:
.L4344:
	.loc 27 233 0
	cmp	r9, #0
	.loc 27 227 0
	moveq	ip, r0
.LVL4862:
	.loc 27 234 0
	strne	r0, [r9, #516]
.LBE14564:
.LBE14563:
.LBB14566:
.LBB14567:
.LBB14568:
.LBB14569:
	.loc 36 472 0
	tst	lr, #15
	bne	.L4346
	.loc 36 473 0
	and	r0, r1, #15
	.loc 36 474 0
	bic	r1, lr, #15
	orr	r1, r0, r1
.LBE14569:
.LBE14568:
.LBB14571:
.LBB14572:
	.loc 36 491 0
	tst	ip, #15
.LBE14572:
.LBE14571:
.LBB14575:
.LBB14570:
	.loc 36 474 0
	str	r1, [r5, #4]
.LVL4863:
.LBE14570:
.LBE14575:
.LBB14576:
.LBB14573:
	.loc 36 491 0
	bne	.L4347
	.loc 36 493 0
	bic	ip, ip, #15
.LVL4864:
	.loc 36 492 0
	and	r3, r3, #15
.LVL4865:
	.loc 36 493 0
	orr	r3, r3, ip
.LBE14573:
.LBE14576:
.LBE14567:
.LBE14566:
	.loc 56 86 0
	cmp	lr, #0
	.loc 56 91 0
	mov	r1, r5
	mov	r0, r4
.LBB14579:
.LBB14578:
.LBB14577:
.LBB14574:
	.loc 36 493 0
	str	r3, [r5]
.LVL4866:
.LBE14574:
.LBE14577:
.LBE14578:
.LBE14579:
.LBB14580:
.LBB14581:
	.loc 36 511 0
	biceq	r3, r3, #3
	.loc 36 512 0
	streq	r3, [r5]
.LBE14581:
.LBE14580:
	.loc 56 91 0
	mov	r3, r6
	str	r8, [sp]
	bl	doIPCTransfer
.LVL4867:
	.loc 56 93 0
	mov	r1, #1
	mov	r0, r8
	bl	setThreadState
.LVL4868:
.LBB14582:
.LBB14583:
	.loc 28 409 0
	mov	r1, #1
	mov	r0, r8
	bl	possibleSwitchTo
.LVL4869:
.LBE14583:
.LBE14582:
	.loc 56 96 0
	cmp	r7, #0
	beq	.L4359
	.loc 56 98 0
	cmp	r6, #0
	bne	.L4360
.L4351:
	.loc 56 101 0
	mov	r1, r6
	mov	r0, r4
.LBE14558:
	.loc 56 108 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4870:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL4871:
	ldr	lr, [sp, #24]
	.cfi_restore 14
	add	sp, sp, #28
	.cfi_def_cfa_offset 0
.LBB14587:
	.loc 56 101 0
	b	setThreadState
.LVL4872:
.L4332:
	.cfi_restore_state
.LBE14587:
	.loc 56 46 0
	cmp	r0, #0
	beq	.L4330
.LVL4873:
.LBB14588:
.LBB14589:
.LBB14590:
	.loc 36 139 0
	ldr	r3, [r4, #448]
.LBE14590:
.LBE14589:
.LBB14592:
.LBB14593:
	.loc 36 108 0
	tst	r5, #15
.LBE14593:
.LBE14592:
.LBB14600:
.LBB14591:
	.loc 36 139 0
	bic	r3, r3, #15
	.loc 36 140 0
	orr	r3, r3, #4
	str	r3, [r4, #448]
.LVL4874:
.LBE14591:
.LBE14600:
.LBB14601:
.LBB14596:
	.loc 36 108 0
	bne	.L4361
.LBE14596:
.LBE14601:
.LBB14602:
.LBB14603:
	.loc 36 33 0
	ldr	r3, [r4, #456]
.LBE14603:
.LBE14602:
.LBB14605:
.LBB14597:
	.loc 36 110 0
	bic	r1, r5, #15
.LBE14597:
.LBE14605:
.LBB14606:
.LBB14607:
	.loc 36 51 0
	bics	r0, r6, #1
.LVL4875:
.LBE14607:
.LBE14606:
.LBB14611:
.LBB14598:
	.loc 36 110 0
	orr	r1, r1, #4
	str	r1, [r4, #448]
.LVL4876:
.LBE14598:
.LBE14611:
.LBB14612:
.LBB14604:
	.loc 36 33 0
	and	r3, r3, #15
	.loc 36 34 0
	orr	r2, r3, r2, lsl #4
.LVL4877:
	str	r2, [r4, #456]
.LVL4878:
.LBE14604:
.LBE14612:
.LBB14613:
.LBB14608:
	.loc 36 51 0
	bne	.L4362
	.loc 36 53 0
	lsl	r6, r6, #3
.LVL4879:
	.loc 36 52 0
	bic	r3, r2, #8
.LBE14608:
.LBE14613:
.LBB14614:
.LBB14615:
	.loc 36 70 0
	bics	r2, r7, #1
.LBE14615:
.LBE14614:
.LBB14620:
.LBB14609:
	.loc 36 53 0
	and	r2, r6, #8
	orr	r2, r2, r3
	str	r2, [r4, #456]
.LVL4880:
.LBE14609:
.LBE14620:
.LBB14621:
.LBB14616:
	.loc 36 70 0
	bne	.L4363
.LBE14616:
.LBE14621:
.LBB14622:
.LBB14623:
	.loc 28 428 0
	movw	r3, #:lower16:ksCurThread
.LBE14623:
.LBE14622:
.LBB14626:
.LBB14617:
	.loc 36 72 0
	lsl	r7, r7, #2
.LVL4881:
.LBE14617:
.LBE14626:
.LBB14627:
.LBB14624:
	.loc 28 428 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE14624:
.LBE14627:
.LBB14628:
.LBB14618:
	.loc 36 72 0
	and	r7, r7, #4
	.loc 36 71 0
	bic	r2, r2, #4
	.loc 36 72 0
	orr	r2, r7, r2
	str	r2, [r4, #456]
.LVL4882:
.LBE14618:
.LBE14628:
.LBB14629:
.LBB14625:
	.loc 28 428 0
	cmp	r4, r3
	bne	.L4338
	.loc 28 429 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 428 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4338
	mov	r0, r4
	bl	scheduleTCB.part.281
.LVL4883:
.L4338:
	ldm	r5, {r1, r3}
.LVL4884:
.LBE14625:
.LBE14629:
.LBB14630:
.LBB14631:
	.loc 27 211 0
	bics	r0, r3, #15
.LVL4885:
.LBE14631:
.LBE14630:
.LBB14635:
.LBB14636:
.LBB14637:
.LBB14638:
	.loc 36 480 0
	bic	ip, r1, #15
.LVL4886:
.LBE14638:
.LBE14637:
.LBE14636:
.LBE14635:
.LBB14639:
.LBB14632:
	.loc 27 211 0
	moveq	r0, r4
.LVL4887:
.LBE14632:
.LBE14639:
.LBB14640:
.LBB14641:
	.loc 36 511 0
	bic	r2, r1, #3
.LBE14641:
.LBE14640:
.LBB14644:
.LBB14633:
	.loc 27 214 0
	strne	r4, [ip, #512]
.LBE14633:
.LBE14644:
.LBB14645:
.LBB14642:
	.loc 36 512 0
	orr	r2, r2, #1
.LBE14642:
.LBE14645:
.LBB14646:
.LBB14647:
.LBB14648:
.LBB14649:
	.loc 36 472 0
	tst	r0, #15
.LBE14649:
.LBE14648:
.LBE14647:
.LBE14646:
.LBB14664:
.LBB14634:
	.loc 27 216 0
	str	ip, [r4, #516]
	.loc 27 217 0
	mov	ip, #0
.LVL4888:
	str	ip, [r4, #512]
.LVL4889:
.LBE14634:
.LBE14664:
.LBB14665:
.LBB14643:
	.loc 36 512 0
	str	r2, [r5]
.LVL4890:
.LBE14643:
.LBE14665:
.LBB14666:
.LBB14662:
.LBB14653:
.LBB14650:
	.loc 36 472 0
	bne	.L4346
	.loc 36 473 0
	and	r3, r3, #15
.LVL4891:
	.loc 36 474 0
	bic	r0, r0, #15
.LVL4892:
	orr	r3, r3, r0
.LBE14650:
.LBE14653:
.LBB14654:
.LBB14655:
	.loc 36 491 0
	tst	r4, #15
.LBE14655:
.LBE14654:
.LBB14658:
.LBB14651:
	.loc 36 474 0
	str	r3, [r5, #4]
.LVL4893:
.LBE14651:
.LBE14658:
.LBB14659:
.LBB14656:
	.loc 36 491 0
	bne	.L4347
	.loc 36 493 0
	bic	r4, r4, #15
.LVL4894:
	and	r1, r1, #12
.LVL4895:
	orr	r4, r4, #1
	orr	r1, r4, r1
	str	r1, [r5]
.L4330:
.LBE14656:
.LBE14659:
.LBE14662:
.LBE14666:
.LBE14588:
	.loc 56 108 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4896:
.L4359:
	.cfi_restore_state
.LBB14671:
.LBB14584:
.LBB14585:
	.loc 36 2551 0 discriminator 1
	ldr	r3, [r4, #464]
.LBE14585:
.LBE14584:
	.loc 56 96 0 discriminator 1
	tst	r3, #7
	beq	.L4330
	.loc 56 98 0
	cmp	r6, #0
	beq	.L4351
.LVL4897:
.L4360:
	.loc 56 99 0
	mov	r1, r8
	mov	r0, r4
.LBE14671:
	.loc 56 108 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4898:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
.LVL4899:
	ldr	lr, [sp, #24]
	.cfi_restore 14
	add	sp, sp, #28
	.cfi_def_cfa_offset 0
.LBB14672:
	.loc 56 99 0
	b	setupCallerCap
.LVL4900:
.L4343:
	.cfi_restore_state
.LBB14586:
.LBB14565:
	.loc 27 230 0
	ldr	lr, [r8, #512]
.LVL4901:
	mov	r9, lr
	b	.L4344
.LVL4902:
.L4346:
.LBE14565:
.LBE14586:
.LBE14672:
.LBB14673:
.LBB14667:
.LBB14663:
.LBB14660:
.LBB14652:
	bl	endpoint_ptr_set_epQueue_head.isra.256.part.257
.LVL4903:
.L4347:
.LBE14652:
.LBE14660:
.LBB14661:
.LBB14657:
	bl	endpoint_ptr_set_epQueue_tail.isra.258.part.259
.LVL4904:
.L4361:
.LBE14657:
.LBE14661:
.LBE14663:
.LBE14667:
.LBB14668:
.LBB14599:
.LBB14594:
.LBB14595:
	.loc 36 108 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC113
.LVL4905:
	ldr	r3, .L4364
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC113
	mov	r2, #108
.LVL4906:
	bl	_assert_fail
.LVL4907:
.L4362:
.LBE14595:
.LBE14594:
.LBE14599:
.LBE14668:
.LBB14669:
.LBB14610:
	.loc 36 51 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC270
	ldr	r3, .L4364+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC270
	mov	r2, #51
	bl	_assert_fail
.LVL4908:
.L4358:
.LBE14610:
.LBE14669:
.LBE14673:
.LBB14674:
	.loc 56 80 0 discriminator 1
	movw	r1, #:lower16:.LC213
	movw	r0, #:lower16:.LC257
.LVL4909:
	ldr	r3, .L4364+8
	movt	r1, #:upper16:.LC213
	movt	r0, #:upper16:.LC257
	mov	r2, #80
.LVL4910:
	bl	_assert_fail
.LVL4911:
.L4363:
.LBE14674:
.LBB14675:
.LBB14670:
.LBB14619:
	.loc 36 70 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC271
	ldr	r3, .L4364+12
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC271
	mov	r2, #70
	bl	_assert_fail
.LVL4912:
.L4365:
	.align	2
.L4364:
	.word	.LANCHOR5-3468
	.word	.LANCHOR5-3432
	.word	.LANCHOR5-3348
	.word	.LANCHOR5-3388
.LBE14619:
.LBE14670:
.LBE14675:
	.cfi_endproc
.LFE770:
	.size	sendIPC, .-sendIPC
	.align	2
	.global	sendFaultIPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	sendFaultIPC, %function
sendFaultIPC:
.LFB692:
	.loc 55 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4913:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 55 38 0
	movw	r4, #:lower16:current_lookup_fault
.LBB14676:
.LBB14677:
	.loc 45 25 0
	mov	r1, r0
.LBE14677:
.LBE14676:
	.loc 55 32 0
	strd	r6, [sp, #8]
	.loc 55 40 0
	ldr	r7, [r0, #496]
	.loc 55 38 0
	movt	r4, #:upper16:current_lookup_fault
	.loc 55 32 0
	strd	r8, [sp, #16]
	mov	r6, r0
	.loc 55 38 0
	ldr	r9, [r4]
.LVL4914:
	.loc 55 32 0
	str	lr, [sp, #24]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 55 38 0
	ldr	r8, [r4, #4]
.LVL4915:
.LBB14679:
.LBB14678:
	.loc 45 25 0
	add	r0, sp, #8
.LVL4916:
	mov	r2, r7
	bl	lookupSlot
.LVL4917:
	ldr	r5, [sp, #8]
.LVL4918:
	.loc 45 26 0
	cmp	r5, #0
	bne	.L4367
.LVL4919:
	.loc 45 33 0
	ldr	r3, [sp, #12]
	ldm	r3, {r2, ip}
.LVL4920:
.LBE14678:
.LBE14679:
.LBB14680:
.LBB14681:
	.loc 36 903 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r2
.LVL4921:
	.loc 36 904 0
	andne	r3, r2, #15
.LBE14681:
.LBE14680:
	.loc 55 48 0
	cmp	r3, #4
	beq	.L4375
.L4370:
.LVL4922:
	.loc 55 62 0
	mov	r2, #1
.LVL4923:
	movw	r3, #:lower16:current_fault
	movt	r3, #:upper16:current_fault
	.loc 55 63 0
	mov	r1, #0
	.loc 55 65 0
	mov	r5, r2
	.loc 55 63 0
	str	r2, [r4]
	.loc 55 62 0
	stm	r3, {r2, r7}
.LVL4924:
	.loc 55 63 0
	str	r1, [r4, #4]
.LVL4925:
.L4366:
	.loc 55 67 0
	mov	r0, r5
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL4926:
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4927:
.L4367:
	.cfi_restore_state
	.loc 55 43 0
	movw	r3, #:lower16:current_fault
	mov	r2, #1
	movt	r3, #:upper16:current_fault
	.loc 55 44 0
	mov	r5, r2
.LVL4928:
	.loc 55 43 0
	stm	r3, {r2, r7}
.LVL4929:
	.loc 55 44 0
	b	.L4366
.LVL4930:
.L4375:
.LBB14682:
.LBB14683:
	.loc 36 1125 0 discriminator 1
	and	r3, r2, #15
	cmp	r3, #4
	bne	.L4376
.LVL4931:
.LBE14683:
.LBE14682:
	.loc 55 49 0
	and	r3, ip, #5
	cmp	r3, #5
	bne	.L4370
	.loc 55 51 0
	movw	r3, #:lower16:current_fault
	add	r4, r6, #464
	movt	r3, #:upper16:current_fault
.LBB14685:
.LBB14686:
	.loc 36 1062 0
	bic	ip, ip, #15
.LVL4932:
.LBE14686:
.LBE14685:
.LBB14687:
.LBB14688:
	.loc 36 2546 0
	ldr	lr, [r3]
.LBE14688:
.LBE14687:
	.loc 55 55 0
	lsr	r2, r2, #4
.LVL4933:
	.loc 55 51 0
	ldrd	r0, [r3]
.LBB14690:
.LBB14689:
	.loc 36 2546 0
	and	r3, lr, #7
.LBE14689:
.LBE14690:
	.loc 55 52 0
	cmp	r3, #1
	.loc 55 55 0
	mov	r3, #1
	.loc 55 51 0
	strd	r0, [r4]
	.loc 55 55 0
	mov	r0, r3
	mov	r1, #0
	.loc 55 53 0
	streq	r9, [r6, #472]
	streq	r8, [r6, #476]
	.loc 55 55 0
	stm	sp, {r6, ip}
.LVL4934:
	bl	sendIPC
.LVL4935:
	.loc 55 60 0
	b	.L4366
.LVL4936:
.L4376:
.LBB14691:
.LBB14684:
	bl	cap_endpoint_cap_get_capCanSend.part.104
.LVL4937:
.LBE14684:
.LBE14691:
	.cfi_endproc
.LFE692:
	.size	sendFaultIPC, .-sendFaultIPC
	.align	2
	.global	handleFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleFault, %function
handleFault:
.LFB691:
	.loc 55 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4938:
	.loc 55 22 0
	movw	r3, #:lower16:current_fault
	.loc 55 20 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r0
	.loc 55 22 0
	movt	r3, #:upper16:current_fault
	ldrd	r2, [r3]
	.loc 55 20 0
	str	lr, [sp, #8]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 55 22 0
	strd	r2, [sp]
	.loc 55 24 0
	bl	sendFaultIPC
.LVL4939:
	.loc 55 25 0
	cmp	r0, #0
	beq	.L4377
	.loc 55 26 0
	mov	r0, r5
.LVL4940:
	ldm	sp, {r1, r2}
	bl	handleDoubleFault
.LVL4941:
.L4377:
	.loc 55 28 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE691:
	.size	handleFault, .-handleFault
	.align	2
	.global	handleUserLevelFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleUserLevelFault, %function
handleUserLevelFault:
.LFB355:
	.loc 59 204 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4942:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14698:
.LBB14699:
	.loc 36 2647 0
	ands	r4, r1, #-536870912
.LBE14699:
.LBE14698:
	.loc 59 204 0
	str	lr, [sp, #4]
.LBB14702:
.LBB14700:
	.loc 36 2647 0
	bne	.L4386
.LVL4943:
	.loc 36 2651 0
	lsl	r1, r1, #3
.LVL4944:
.LBE14700:
.LBE14702:
	.loc 59 205 0
	movw	r3, #:lower16:current_fault
	mov	ip, r0
.LBB14703:
.LBB14701:
	.loc 36 2652 0
	orr	r1, r1, #3
.LBE14701:
.LBE14703:
	.loc 59 205 0
	movt	r3, #:upper16:current_fault
	.loc 59 206 0
	movw	r2, #:lower16:ksCurThread
	movt	r2, #:upper16:ksCurThread
	.loc 59 205 0
	stm	r3, {r1, ip}
	.loc 59 206 0
	ldr	r0, [r2]
.LVL4945:
	bl	handleFault
.LVL4946:
	.loc 59 208 0
	bl	schedule
.LVL4947:
	.loc 59 209 0
	bl	activateThread
.LVL4948:
	.loc 59 212 0
	mov	r0, r4
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL4949:
.L4386:
	.cfi_restore_state
.LBB14704:
.LBB14705:
.LBB14706:
	.loc 36 2647 0
	movw	r1, #:lower16:.LC37
.LVL4950:
	movw	r0, #:lower16:.LC272
.LVL4951:
	ldr	r3, .L4387
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC272
	movw	r2, #2647
	bl	_assert_fail
.LVL4952:
.L4388:
	.align	2
.L4387:
	.word	.LANCHOR5-3340
.LBE14706:
.LBE14705:
.LBE14704:
	.cfi_endproc
.LFE355:
	.size	handleUserLevelFault, .-handleUserLevelFault
	.section	.vectors.text,"ax",%progbits
	.align	2
	.global	c_handle_undefined_instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_undefined_instruction, %function
c_handle_undefined_instruction:
.LFB523:
	.file 60 "/home/sel4/work/work2/kernel/src/arch/arm/c_traps.c"
	.loc 60 27 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB14707:
.LBB14708:
	.loc 10 36 0
	movw	r4, #:lower16:ksCurThread
.LBE14708:
.LBE14707:
	.loc 60 32 0
	movw	r3, #:lower16:ksKernelEntry
	.loc 60 27 0
	str	r7, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB14711:
.LBB14709:
	.loc 10 36 0
	movt	r4, #:upper16:ksCurThread
.LBE14709:
.LBE14711:
.LBB14712:
.LBB14713:
	.loc 32 110 0
	movw	r0, #:lower16:isFPUEnabledCached
.LBE14713:
.LBE14712:
.LBB14715:
.LBB14710:
	.loc 10 36 0
	ldr	r1, [r4]
.LBE14710:
.LBE14715:
	.loc 60 32 0
	movt	r3, #:upper16:ksKernelEntry
.LBB14716:
.LBB14714:
	.loc 32 110 0
	movt	r0, #:upper16:isFPUEnabledCached
.LBE14714:
.LBE14716:
	.loc 60 32 0
	ldrb	ip, [r3]	@ zero_extendqisi2
	mov	r7, #2
	.loc 60 33 0
	ldrb	r6, [r1, #60]	@ zero_extendqisi2
	ldrb	r5, [r1, #61]	@ zero_extendqisi2
	.loc 60 27 0
	str	lr, [sp, #4]
	.loc 60 32 0
	bfi	ip, r7, #0, #3
	.loc 60 38 0
	ldr	lr, [r0]
	.loc 60 33 0
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	.loc 60 32 0
	strb	ip, [r3]
	.loc 60 33 0
	ldrb	r0, [r1, #63]	@ zero_extendqisi2
	strb	r6, [r3, #1]
	strb	r5, [r3, #2]
	.loc 60 38 0
	cmp	lr, #0
	.loc 60 33 0
	ldrb	lr, [r1, #62]	@ zero_extendqisi2
	bic	r2, r2, #31
	and	r1, r0, #31
	orr	r2, r2, r1
	strb	lr, [r3, #3]
	strb	r2, [r3, #4]
	.loc 60 38 0
	bne	.L4390
	.loc 60 39 0
	bl	handleFPUFault
.LVL4953:
	.loc 60 42 0
	ldr	r3, [r4]
.LVL4954:
.LBB14717:
.LBB14718:
.LBB14719:
	.loc 10 30 0
	ldr	r2, [r3, #68]
	str	r2, [r3, #60]
.LVL4955:
.L4391:
.LBE14719:
.LBE14718:
.LBE14717:
	.loc 60 47 0
	bl	restore_user_context
.LVL4956:
.L4390:
	.loc 60 44 0
	mov	r1, #0
	mov	r0, r1
	bl	handleUserLevelFault
.LVL4957:
	b	.L4391
	.cfi_endproc
.LFE523:
	.size	c_handle_undefined_instruction, .-c_handle_undefined_instruction
	.text
	.align	2
	.global	handleVMFaultEvent
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleVMFaultEvent, %function
handleVMFaultEvent:
.LFB356:
	.loc 59 216 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4958:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 59 219 0
	movw	r4, #:lower16:ksCurThread
	mov	r1, r0
	movt	r4, #:upper16:ksCurThread
	.loc 59 216 0
	str	lr, [sp, #4]
	.loc 59 219 0
	ldr	r0, [r4]
.LVL4959:
	bl	handleVMFault
.LVL4960:
	.loc 59 220 0
	cmp	r0, #0
	beq	.L4394
	.loc 59 221 0
	ldr	r0, [r4]
.LVL4961:
	bl	handleFault
.LVL4962:
.L4394:
	.loc 59 224 0
	bl	schedule
.LVL4963:
	.loc 59 225 0
	bl	activateThread
.LVL4964:
	.loc 59 228 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE356:
	.size	handleVMFaultEvent, .-handleVMFaultEvent
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_vm_fault, %function
c_handle_vm_fault:
.LFB524:
	.loc 60 71 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4965:
.LBB14720:
.LBB14721:
	.loc 10 36 0
	movw	r2, #:lower16:ksCurThread
.LBE14721:
.LBE14720:
	.loc 60 76 0
	movw	r3, #:lower16:ksKernelEntry
	.loc 60 71 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14724:
.LBB14722:
	.loc 10 36 0
	movt	r2, #:upper16:ksCurThread
.LBE14722:
.LBE14724:
	.loc 60 76 0
	movt	r3, #:upper16:ksKernelEntry
.LBB14725:
.LBB14723:
	.loc 10 36 0
	ldr	r1, [r2]
.LBE14723:
.LBE14725:
	.loc 60 76 0
	mov	r4, #4
	.loc 60 77 0
	ldrb	ip, [r1, #63]	@ zero_extendqisi2
	ldrb	r6, [r1, #60]	@ zero_extendqisi2
	ldrb	r5, [r1, #61]	@ zero_extendqisi2
	.loc 60 71 0
	str	lr, [sp, #4]
	.loc 60 76 0
	ldrb	lr, [r3]	@ zero_extendqisi2
	.loc 60 77 0
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	strb	r6, [r3, #1]
	strb	r5, [r3, #2]
	.loc 60 76 0
	bfi	lr, r4, #0, #3
	.loc 60 77 0
	ldrb	r4, [r1, #62]	@ zero_extendqisi2
	and	r1, ip, #31
	bic	r2, r2, #31
	orr	r2, r2, r1
	.loc 60 76 0
	strb	lr, [r3]
	.loc 60 77 0
	strb	r4, [r3, #3]
	strb	r2, [r3, #4]
	.loc 60 80 0
	bl	handleVMFaultEvent
.LVL4966:
	.loc 60 81 0
	bl	restore_user_context
.LVL4967:
	.cfi_endproc
.LFE524:
	.size	c_handle_vm_fault, .-c_handle_vm_fault
	.section	.vectors.text
	.align	2
	.global	c_handle_data_fault
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_data_fault, %function
c_handle_data_fault:
.LFB525:
	.loc 60 87 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 60 88 0
	mov	r0, #0
	.loc 60 87 0
	str	lr, [sp, #4]
	.loc 60 88 0
	bl	c_handle_vm_fault
.LVL4968:
	.cfi_endproc
.LFE525:
	.size	c_handle_data_fault, .-c_handle_data_fault
	.align	2
	.global	c_handle_instruction_fault
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_instruction_fault, %function
c_handle_instruction_fault:
.LFB526:
	.loc 60 93 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 60 94 0
	mov	r0, #1
	.loc 60 93 0
	str	lr, [sp, #4]
	.loc 60 94 0
	bl	c_handle_vm_fault
.LVL4969:
	.cfi_endproc
.LFE526:
	.size	c_handle_instruction_fault, .-c_handle_instruction_fault
	.text
	.align	2
	.global	VGICMaintenance
	.syntax unified
	.arm
	.fpu softvfp
	.type	VGICMaintenance, %function
VGICMaintenance:
.LFB634:
	.loc 25 802 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 25 810 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL4970:
.LBB14758:
.LBB14759:
.LBB14760:
.LBB14761:
	.loc 36 116 0
	ldr	r3, [r0, #448]
	and	r3, r3, #15
.LBE14761:
.LBE14760:
	.loc 46 45 0
	sub	r3, r3, #1
	cmp	r3, #1
	bls	.L4425
.LVL4971:
.LBE14759:
.LBE14758:
	.loc 25 811 0
	movw	r0, #:lower16:.LC273
	movt	r0, #:upper16:.LC273
	b	kprintf
.LVL4972:
.L4425:
.LBB14762:
.LBB14763:
	.loc 25 372 0
	movw	r3, #24831
	movt	r3, 65520
	ldr	r2, [r3, #-223]
.LBE14763:
.LBE14762:
.LBB14764:
.LBB14765:
	.loc 25 378 0
	ldr	r1, [r3, #-219]
.LBE14765:
.LBE14764:
.LBB14766:
.LBB14767:
	.loc 25 384 0
	ldr	r3, [r3, #-239]
.LBE14767:
.LBE14766:
	.loc 25 819 0
	tst	r3, #1
	bne	.L4416
.L4410:
.LVL4973:
.LBB14768:
	.loc 25 832 0
	movw	r3, #:lower16:current_fault
	mov	r1, #6
	movt	r3, #:upper16:current_fault
	mov	r2, #0
	stm	r3, {r1, r2}
.LBE14768:
	.loc 25 855 0
	b	handleFault
.LVL4974:
.L4416:
.LBB14786:
	.loc 25 821 0
	cmp	r2, #0
	bne	.L4426
	.loc 25 823 0
	cmp	r1, #0
	beq	.L4410
.LVL4975:
.LBB14769:
.LBB14770:
	.loc 15 119 0
	rbit	r2, r1
	clz	r2, r2
.LVL4976:
.LBE14770:
.LBE14769:
	.loc 25 824 0
	add	r2, r2, #32
.LVL4977:
.L4409:
	.loc 25 831 0
	movw	r3, #:lower16:.LANCHOR4
	movt	r3, #:upper16:.LANCHOR4
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L4410
.LVL4978:
	lsl	r1, r2, #2
	sub	r1, r1, #1024000
.LBB14771:
.LBB14772:
.LBB14773:
	.loc 25 391 0
	ldr	ip, [r1, #256]
.LVL4979:
.LBE14773:
.LBE14772:
.LBB14774:
.LBB14775:
	.loc 36 2246 0
	ubfx	r3, ip, #28, #2
.LBE14775:
.LBE14774:
	.loc 25 835 0
	cmp	r3, #1
	beq	.L4414
	bcc	.L4414
	cmp	r3, #2
	bne	.L4412
.L4414:
.LVL4980:
.LBB14776:
.LBB14777:
	.loc 36 2256 0
	bic	ip, ip, #524288
.LVL4981:
.L4412:
.LBE14777:
.LBE14776:
.LBB14778:
.LBB14779:
	.loc 36 2760 0
	lsl	r2, r2, #26
.LBE14779:
.LBE14778:
	.loc 25 847 0
	movw	r3, #:lower16:current_fault
.LBB14781:
.LBB14782:
	.loc 25 398 0
	str	ip, [r1, #256]
.LBE14782:
.LBE14781:
	.loc 25 847 0
	movt	r3, #:upper16:current_fault
.LBB14783:
.LBB14780:
	.loc 36 2761 0
	orr	r2, r2, #33554432
.LBE14780:
.LBE14783:
	.loc 25 847 0
	mov	r1, #6
	str	r1, [r3]
	str	r2, [r3, #4]
.LVL4982:
.LBE14771:
.LBE14786:
	.loc 25 855 0
	b	handleFault
.LVL4983:
.L4426:
.LBB14787:
.LBB14784:
.LBB14785:
	.loc 15 119 0
	rbit	r2, r2
.LVL4984:
	clz	r2, r2
.LBE14785:
.LBE14784:
	b	.L4409
.LBE14787:
	.cfi_endproc
.LFE634:
	.size	VGICMaintenance, .-VGICMaintenance
	.align	2
	.global	handleInterrupt
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleInterrupt, %function
handleInterrupt:
.LFB785:
	.loc 53 189 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4985:
	.loc 53 190 0
	cmp	r0, #232
	.loc 53 189 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 53 190 0
	bhi	.L4455
	.loc 53 200 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
	ldr	r3, [r3, r0, lsl #2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L4433
.L4435:
	.word	.L4434
	.word	.L4436
	.word	.L4437
	.word	.L4438
.L4436:
.LBB14839:
	.loc 53 204 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	ldr	r0, [r3, r0, lsl #4]
.LVL4986:
	add	r3, r3, r4, lsl #4
.LVL4987:
.LBB14840:
.LBB14841:
	.loc 36 903 0
	and	r2, r0, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r0
.LVL4988:
	.loc 36 904 0
	andne	r2, r0, #15
.LBE14841:
.LBE14840:
	.loc 53 206 0
	cmp	r2, #6
	bne	.L4434
.LVL4989:
.LBB14842:
.LBB14843:
	.loc 36 1251 0 discriminator 1
	and	r2, r0, #15
	cmp	r2, #6
	bne	.L4456
.LBE14843:
.LBE14842:
	.loc 53 204 0
	ldr	r1, [r3, #4]
	.loc 53 206 0
	tst	r1, #1
	beq	.L4434
.LVL4990:
	.loc 53 208 0
	lsr	r1, r1, #4
	bic	r0, r0, #15
.LVL4991:
	bl	sendSignal
.LVL4992:
.L4434:
.LBE14839:
.LBB14846:
.LBB14847:
.LBB14848:
.LBB14849:
	.loc 7 149 0
	lsr	r3, r4, #5
.LVL4993:
	.loc 7 152 0
	movw	r2, #17023
	.loc 7 150 0
	and	r0, r4, #31
	.loc 7 152 0
	lsl	r3, r3, #2
	mov	r1, #1
	movt	r2, 65520
	add	r2, r3, r2
	lsl	r1, r1, r0
	str	r1, [r2, #-255]
.LVL4994:
.L4443:
.LBE14849:
.LBE14848:
.LBE14847:
.LBE14846:
.LBB14850:
.LBB14851:
	.loc 7 204 0
	movw	r1, #:lower16:.LANCHOR6
	movt	r1, #:upper16:.LANCHOR6
	ldr	ip, [r1]
	ubfx	r3, ip, #0, #10
	cmp	r3, #1020
	bcs	.L4430
	cmp	r3, r4
	bne	.L4430
.LVL4995:
.LBB14852:
.LBB14853:
	.loc 7 132 0
	lsr	r2, r4, #4
.LVL4996:
	.loc 7 134 0
	movw	r0, #16639
	movt	r0, 65520
	add	r2, r2, #768
	.loc 7 133 0
	and	r3, ip, #15
	.loc 7 134 0
	add	r2, r0, r2, lsl #2
	.loc 7 133 0
	lsl	r3, r3, #1
	.loc 7 134 0
	ldr	r2, [r2, #-255]
.LVL4997:
	add	r3, r3, #1
	lsr	r3, r2, r3
.LBE14853:
.LBE14852:
	.loc 7 205 0
	tst	r3, #1
	beq	.L4444
.LVL4998:
.LBB14854:
.LBB14855:
	.loc 7 140 0
	lsr	r4, r4, #5
.LVL4999:
	.loc 7 141 0
	and	r2, ip, #31
	.loc 7 143 0
	mov	r3, #1
	add	r4, r4, #160
.LVL5000:
	lsl	r3, r3, r2
	add	r4, r0, r4, lsl #2
.LVL5001:
	str	r3, [r4, #-255]
.L4444:
.LBE14855:
.LBE14854:
	.loc 7 208 0
	movw	r3, #20735
	.loc 7 209 0
	movw	r2, #1023
	.loc 7 208 0
	movt	r3, 65520
	str	ip, [r3, #-239]
	.loc 7 209 0
	str	r2, [r1]
.L4427:
.LBE14851:
.LBE14850:
	.loc 53 255 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5002:
.L4438:
	.cfi_restore_state
.LBB14856:
.LBB14857:
	.file 61 "/home/sel4/work/work2/kernel/include/plat/exynos5/plat/machine/hardware.h"
	.loc 61 300 0
	cmp	r0, #25
	bne	.L4443
	.loc 61 302 0
	bl	VGICMaintenance
.LVL5003:
	b	.L4443
.LVL5004:
.L4437:
.LBE14857:
.LBE14856:
	.loc 53 220 0
	bl	timerTick
.LVL5005:
.LBB14858:
.LBB14859:
.LBB14860:
	.file 62 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h"
	.loc 62 47 0
	movw	r3, #43392
	movt	r3, 3
	.syntax divided
@ 47 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 0
@ 0 "" 2
.LVL5006:
	.arm
	.syntax unified
.LBE14860:
.LBB14861:
	.loc 62 48 0
	mov	r3, #1
	.syntax divided
@ 48 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 1
@ 0 "" 2
	.arm
	.syntax unified
	b	.L4443
.LVL5007:
.L4433:
.LBE14861:
.LBE14859:
.LBE14858:
	.loc 53 251 0
	movw	r1, #:lower16:.LC275
	movw	r0, #:lower16:.LC276
.LVL5008:
	ldr	r3, .L4457
	movt	r1, #:upper16:.LC275
	movt	r0, #:upper16:.LC276
	mov	r2, #251
	bl	_fail
.LVL5009:
.L4455:
	.loc 53 195 0
	movw	r0, #:lower16:.LC274
.LVL5010:
	mov	r2, #232
	mov	r1, r4
	movt	r0, #:upper16:.LC274
	bl	kprintf
.LVL5011:
.LBB14862:
.LBB14863:
	.loc 7 204 0
	movw	r1, #:lower16:.LANCHOR6
	lsr	r3, r4, #5
	movt	r1, #:upper16:.LANCHOR6
	ldr	lr, [r1]
.LBE14863:
.LBE14862:
.LBB14870:
.LBB14871:
.LBB14872:
.LBB14873:
	.loc 7 150 0
	and	r2, r4, #31
	lsl	r3, r3, #2
	.loc 7 152 0
	mov	r5, #1
	sub	r3, r3, #1032192
	lsl	r5, r5, r2
.LBE14873:
.LBE14872:
.LBE14871:
.LBE14870:
.LBB14877:
.LBB14868:
	.loc 7 204 0
	ubfx	r2, lr, #0, #10
	cmp	r2, #1020
.LBE14868:
.LBE14877:
.LBB14878:
.LBB14876:
.LBB14875:
.LBB14874:
	.loc 7 152 0
	str	r5, [r3, #384]
.LVL5012:
.LBE14874:
.LBE14875:
.LBE14876:
.LBE14878:
.LBB14879:
.LBB14869:
	.loc 7 204 0
	bcs	.L4430
	cmp	r2, r4
	bne	.L4430
.LVL5013:
.LBB14864:
.LBB14865:
	.loc 7 132 0
	lsr	r2, r2, #4
.LVL5014:
	.loc 7 134 0
	movw	ip, #19711
	movt	ip, 65520
	lsl	r2, r2, #2
.LVL5015:
	.loc 7 133 0
	and	r0, lr, #15
	lsl	r0, r0, #1
	.loc 7 134 0
	add	ip, r2, ip
	ldr	ip, [ip, #-255]
.LVL5016:
	add	r2, r0, #1
	lsr	r2, ip, r2
.LBE14865:
.LBE14864:
	.loc 7 205 0
	tst	r2, #1
.LVL5017:
	.loc 7 209 0
	movw	r2, #1023
.LBB14866:
.LBB14867:
	.loc 7 143 0
	strne	r5, [r3, #640]
.LBE14867:
.LBE14866:
	.loc 7 208 0
	movw	r3, #20735
	movt	r3, 65520
	str	lr, [r3, #-239]
	.loc 7 209 0
	str	r2, [r1]
	b	.L4427
.LVL5018:
.L4430:
	bl	ackInterrupt.part.264
.LVL5019:
.L4456:
.LBE14869:
.LBE14879:
.LBB14880:
.LBB14845:
.LBB14844:
	bl	cap_notification_cap_get_capNtfnCanSend.part.263
.LVL5020:
.L4458:
	.align	2
.L4457:
	.word	.LANCHOR5-3308
.LBE14844:
.LBE14845:
.LBE14880:
	.cfi_endproc
.LFE785:
	.size	handleInterrupt, .-handleInterrupt
	.align	2
	.global	handleInterruptEntry
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleInterruptEntry, %function
handleInterruptEntry:
.LFB353:
	.loc 59 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB14881:
.LBB14882:
	.loc 7 167 0
	movw	r3, #:lower16:.LANCHOR6
.LBE14882:
.LBE14881:
	.loc 59 40 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14885:
.LBB14883:
	.loc 7 167 0
	movt	r3, #:upper16:.LANCHOR6
	ldr	r0, [r3]
.LBE14883:
.LBE14885:
	.loc 59 40 0
	str	lr, [sp, #4]
.LBB14886:
.LBB14884:
	.loc 7 167 0
	ubfx	r0, r0, #0, #10
	cmp	r0, #1020
	bcc	.L4460
	.loc 7 168 0
	movw	r2, #20735
	movt	r2, 65520
	ldr	r2, [r2, #-243]
	.loc 7 171 0
	ubfx	r0, r2, #0, #10
	.loc 7 168 0
	str	r2, [r3]
	.loc 7 171 0
	cmp	r0, #1020
	bcc	.L4460
.L4461:
.LBE14884:
.LBE14886:
	.loc 59 55 0
	bl	schedule
.LVL5021:
	.loc 59 56 0
	bl	activateThread
.LVL5022:
	.loc 59 59 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.L4460:
	.cfi_restore_state
	.loc 59 46 0
	bl	handleInterrupt
.LVL5023:
	b	.L4461
	.cfi_endproc
.LFE353:
	.size	handleInterruptEntry, .-handleInterruptEntry
	.section	.vectors.text
	.align	2
	.global	c_handle_interrupt
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_interrupt, %function
c_handle_interrupt:
.LFB527:
	.loc 60 99 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB14887:
.LBB14888:
	.loc 7 167 0
	movw	r1, #:lower16:.LANCHOR6
.LBE14888:
.LBE14887:
	.loc 60 104 0
	movw	r3, #:lower16:ksKernelEntry
	.loc 60 99 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14894:
.LBB14889:
	.loc 7 167 0
	movt	r1, #:upper16:.LANCHOR6
.LBE14889:
.LBE14894:
	.loc 60 104 0
	movt	r3, #:upper16:ksKernelEntry
.LBB14895:
.LBB14890:
	.loc 7 167 0
	ldr	r2, [r1]
.LBE14890:
.LBE14895:
	.loc 60 104 0
	ldrb	r0, [r3]	@ zero_extendqisi2
	.loc 60 99 0
	str	lr, [sp, #4]
.LBB14896:
.LBB14891:
	.loc 7 167 0
	ubfx	r2, r2, #0, #10
.LBE14891:
.LBE14896:
	.loc 60 104 0
	bfc	r0, #0, #3
.LBB14897:
.LBB14892:
	.loc 7 167 0
	cmp	r2, #1020
.LBE14892:
.LBE14897:
	.loc 60 104 0
	strb	r0, [r3]
.LBB14898:
.LBB14893:
	.loc 7 167 0
	bcc	.L4465
	.loc 7 168 0
	movw	r0, #20735
	.loc 7 174 0
	movw	ip, #65535
	.loc 7 168 0
	movt	r0, 65520
	ldr	r0, [r0, #-243]
	.loc 7 171 0
	ubfx	r2, r0, #0, #10
	.loc 7 168 0
	str	r0, [r1]
	.loc 7 174 0
	cmp	r2, #1020
	movcs	r2, ip
.L4465:
.LBE14893:
.LBE14898:
	.loc 60 105 0
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	lsr	r0, r2, #8
	mov	ip, #0
	strb	r2, [r3, #1]
	strb	r0, [r3, #2]
	and	r2, r1, #224
	strb	ip, [r3, #3]
	strb	r2, [r3, #4]
	.loc 60 108 0
	bl	handleInterruptEntry
.LVL5024:
	.loc 60 109 0
	bl	restore_user_context
.LVL5025:
	.cfi_endproc
.LFE527:
	.size	c_handle_interrupt, .-c_handle_interrupt
	.text
	.align	2
	.global	handleVCPUFault
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleVCPUFault, %function
handleVCPUFault:
.LFB650:
	.loc 25 1150 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5026:
	.loc 25 1151 0
	movw	r3, #:lower16:current_fault
	mov	r1, #7
	.loc 25 1150 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 1151 0
	movt	r3, #:upper16:current_fault
	.loc 25 1152 0
	movw	r2, #:lower16:ksCurThread
	.loc 25 1150 0
	str	lr, [sp, #4]
	.loc 25 1152 0
	movt	r2, #:upper16:ksCurThread
	.loc 25 1151 0
	str	r1, [r3]
	str	r0, [r3, #4]
	.loc 25 1152 0
	ldr	r0, [r2]
.LVL5027:
	bl	handleFault
.LVL5028:
	.loc 25 1153 0
	bl	schedule
.LVL5029:
	.loc 25 1155 0
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 25 1154 0
	b	activateThread
.LVL5030:
	.cfi_endproc
.LFE650:
	.size	handleVCPUFault, .-handleVCPUFault
	.section	.vectors.text
	.align	2
	.global	c_handle_vcpu_fault
	.syntax unified
	.arm
	.fpu softvfp
	.type	c_handle_vcpu_fault, %function
c_handle_vcpu_fault:
.LFB530:
	.loc 60 162 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5031:
	.loc 60 166 0
	movw	r3, #:lower16:ksKernelEntry
	.loc 60 162 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 60 167 0
	ubfx	r5, r0, #8, #8
	.loc 60 166 0
	movt	r3, #:upper16:ksKernelEntry
	.loc 60 167 0
	ubfx	r4, r0, #16, #8
	.loc 60 166 0
	ldrb	ip, [r3]	@ zero_extendqisi2
	.loc 60 162 0
	str	lr, [sp, #4]
	.loc 60 167 0
	ubfx	lr, r0, #24, #5
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	strb	r0, [r3, #1]
	strb	r5, [r3, #2]
	strb	r4, [r3, #3]
	.loc 60 166 0
	orr	r1, ip, #7
	.loc 60 167 0
	bic	r2, r2, #31
	orr	r2, r2, lr
	.loc 60 166 0
	strb	r1, [r3]
	.loc 60 167 0
	strb	r2, [r3, #4]
	.loc 60 169 0
	bl	handleVCPUFault
.LVL5032:
	.loc 60 170 0
	bl	restore_user_context
.LVL5033:
	.cfi_endproc
.LFE530:
	.size	c_handle_vcpu_fault, .-c_handle_vcpu_fault
	.text
	.align	2
	.global	handleUnknownSyscall
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleUnknownSyscall, %function
handleUnknownSyscall:
.LFB354:
	.loc 59 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5034:
	.loc 59 65 0
	cmn	r0, #9
	.loc 59 63 0
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 59 65 0
	beq	.L4530
	.loc 59 69 0
	cmn	r0, #10
	mov	r3, r0
	beq	.L4531
	.loc 59 77 0
	cmn	r0, #11
	beq	.L4532
	.loc 59 81 0
	cmn	r0, #13
	beq	.L4533
.LVL5035:
.LBB14956:
.LBB14957:
	.loc 59 86 0
	cmn	r0, #12
	beq	.L4534
	.loc 59 94 0
	cmn	r0, #14
	beq	.L4535
.LVL5036:
	.loc 59 193 0
	movw	r2, #:lower16:current_fault
	mov	ip, #2
	movt	r2, #:upper16:current_fault
	.loc 59 194 0
	movw	r1, #:lower16:ksCurThread
	movt	r1, #:upper16:ksCurThread
	ldr	r0, [r1]
.LVL5037:
	.loc 59 193 0
	str	ip, [r2]
	str	r3, [r2, #4]
	.loc 59 194 0
	bl	handleFault
.LVL5038:
	.loc 59 196 0
	bl	schedule
.LVL5039:
	.loc 59 197 0
	bl	activateThread
.LVL5040:
.L4517:
.LBE14957:
.LBE14956:
	.loc 59 200 0
	mov	r0, #0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5041:
.L4530:
	.cfi_restore_state
.LBB14991:
.LBB14992:
	.loc 10 36 0
	movw	r3, #:lower16:ksCurThread
.LBE14992:
.LBE14991:
.LBB14994:
.LBB14995:
.LBB14996:
.LBB14997:
.LBB14998:
	.loc 4 44 0
	mvn	r2, #1040384
.LBE14998:
.LBE14997:
.LBE14996:
.LBE14995:
.LBE14994:
.LBB15006:
.LBB14993:
	.loc 10 36 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE14993:
.LBE15006:
	.loc 59 66 0
	ldrb	r1, [r3]	@ zero_extendqisi2
.LVL5042:
.L4475:
.LBB15007:
.LBB15005:
.LBB15003:
.LBB15001:
.LBB14999:
	.loc 4 44 0
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L4475
.LBE14999:
.LBE15001:
.LBE15003:
	.loc 8 22 0
	cmp	r1, #10
.LBB15004:
.LBB15002:
.LBB15000:
	.loc 4 45 0
	str	r1, [r2, #-4063]
.LBE15000:
.LBE15002:
.LBE15004:
	.loc 8 22 0
	bne	.L4517
	bl	putchar.part.64
.LVL5043:
	b	.L4517
.LVL5044:
.L4535:
.LBE15005:
.LBE15007:
.LBB15008:
.LBB14988:
.LBB14958:
	.loc 59 99 0
	movw	r5, #:lower16:ksCurThread
	.loc 59 100 0
	add	r0, sp, #16
.LVL5045:
	.loc 59 99 0
	movt	r5, #:upper16:ksCurThread
	ldr	r1, [r5]
	.loc 59 100 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL5046:
	ldr	r4, [sp, #20]
.LVL5047:
.LBB14959:
.LBB14960:
	.loc 36 903 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r4
.LVL5048:
	.loc 36 904 0
	andne	r3, r4, #15
.LBE14960:
.LBE14959:
	.loc 59 103 0
	cmp	r3, #12
	bne	.L4536
	.loc 59 108 0
	ldr	r5, [r5]
	mov	r0, #1
	mov	r1, r5
	bl	lookupIPCBuffer
.LVL5049:
	.loc 59 109 0
	adds	r1, r0, #4
.LVL5050:
	beq	.L4500
	add	ip, r0, #480
	add	r3, r0, #3
	add	ip, ip, #3
	b	.L4501
.L4503:
.LVL5051:
.LBB14961:
.LBB14962:
	.file 63 "/home/sel4/work/work2/kernel/src/string.c"
	.loc 63 20 0
	cmp	ip, r3
	beq	.L4502
.L4501:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4503
.LVL5052:
.LBE14962:
.LBE14961:
.LBB14963:
.LBB14964:
	.loc 36 1469 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4537
.LVL5053:
.LBE14964:
.LBE14963:
.LBB14967:
.LBB14968:
.LBB14969:
.LBB14970:
	.loc 63 27 0
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LBE14970:
.LBE14969:
.LBE14968:
.LBE14967:
.LBB14974:
.LBB14965:
	.loc 36 1472 0
	bic	r4, r4, #15
.LVL5054:
.LBE14965:
.LBE14974:
.LBB14975:
.LBB14973:
	.loc 27 1584 0
	add	ip, r4, #528
.LVL5055:
.LBB14972:
.LBB14971:
	.loc 63 27 0
	cmp	r3, #0
	movne	r0, ip
	.loc 63 28 0
	strbne	r3, [r4, #528]
.LVL5056:
	movne	r3, #1
	.loc 63 27 0
	bne	.L4510
	b	.L4506
.LVL5057:
.L4507:
	add	r3, r3, #1
.LVL5058:
	.loc 63 28 0
	strb	r2, [r0, #1]!
.LVL5059:
	.loc 63 27 0
	cmp	r3, #239
	beq	.L4506
.LVL5060:
.L4510:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4507
.LVL5061:
.L4506:
	.loc 63 30 0
	mov	r2, #0
	strb	r2, [ip, r3]
.LVL5062:
	b	.L4517
.LVL5063:
.L4534:
.LBE14971:
.LBE14972:
.LBE14973:
.LBE14975:
.LBE14958:
.LBB14977:
	.loc 59 87 0
	movw	r5, #:lower16:ksCurThread
	.loc 59 88 0
	add	r0, sp, #16
.LVL5064:
	.loc 59 87 0
	movt	r5, #:upper16:ksCurThread
	ldr	r1, [r5]
	.loc 59 88 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL5065:
	ldr	r3, [sp, #20]
.LVL5066:
.LBB14978:
.LBB14979:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE14979:
.LBE14978:
.LBB14981:
.LBB14982:
	.loc 10 30 0
	ldr	r2, [r5]
.LBE14982:
.LBE14981:
.LBB14984:
.LBB14980:
	.loc 36 905 0
	uxtbeq	r3, r3
.LVL5067:
	.loc 36 904 0
	andne	r3, r3, #15
.LBE14980:
.LBE14984:
.LBB14985:
.LBB14983:
	.loc 10 30 0
	str	r3, [r2]
.LVL5068:
	b	.L4517
.LVL5069:
.L4531:
.LBE14983:
.LBE14985:
.LBE14977:
.LBE14988:
.LBE15008:
.LBB15009:
.LBB15010:
	.loc 29 130 0
	movw	r0, #:lower16:.LC285
.LVL5070:
	movt	r0, #:upper16:.LC285
	bl	kprintf
.LVL5071:
	.loc 29 131 0
	movw	r0, #:lower16:.LC286
	movt	r0, #:upper16:.LC286
	bl	kprintf
.LVL5072:
	.loc 29 132 0
	movw	r0, #:lower16:.LC287
	movt	r0, #:upper16:.LC287
	bl	kprintf
.LVL5073:
.LBB15011:
	.loc 29 133 0
	movw	r3, #:lower16:ksDebugTCBs
	movt	r3, #:upper16:ksDebugTCBs
	ldr	r4, [r3]
.LVL5074:
	cmp	r4, #0
	beq	.L4517
.LBB15012:
.LBB15013:
	.loc 29 88 0
	movw	r5, #:lower16:.LC288
	.loc 29 98 0
	movw	r6, #:lower16:.LC279
	.loc 29 92 0
	movw	r7, #:lower16:.LC277
	.loc 29 88 0
	movt	r5, #:upper16:.LC288
	.loc 29 98 0
	movt	r6, #:upper16:.LC279
	.loc 29 92 0
	movt	r7, #:upper16:.LC277
.L4490:
.LVL5075:
	.loc 29 88 0
	add	r1, r4, #528
	mov	r0, r5
	bl	kprintf
.LVL5076:
.LBB15014:
.LBB15015:
	.loc 36 116 0
	ldr	r3, [r4, #448]
	and	r3, r3, #15
.LBE15015:
.LBE15014:
	.loc 29 90 0
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L4480
.L4482:
	.word	.L4481
	.word	.L4483
	.word	.L4511
	.word	.L4485
	.word	.L4486
	.word	.L4487
	.word	.L4488
	.word	.L4489
.LVL5077:
.L4533:
.LBE15013:
.LBE15012:
.LBE15011:
.LBE15010:
.LBE15009:
	.loc 59 82 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC293
.LVL5078:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC293
	ldr	r1, [r3]
	bl	kprintf
.LVL5079:
	.loc 59 83 0
	bl	capDL
.LVL5080:
	.loc 59 84 0
	b	.L4517
.LVL5081:
.L4511:
.LBB15022:
.LBB15021:
.LBB15020:
.LBB15018:
.LBB15016:
	.loc 29 98 0
	mov	r1, r6
.L4484:
.LVL5082:
	.loc 29 124 0
	movw	r0, #:lower16:.LC291
	ldr	r2, [r4, #68]
	ldr	r3, [r4, #488]
	movt	r0, #:upper16:.LC291
	bl	kprintf
.LVL5083:
.LBE15016:
.LBE15018:
	.loc 29 133 0
	ldr	r4, [r4, #520]
.LVL5084:
	cmp	r4, #0
	bne	.L4490
	b	.L4517
.LVL5085:
.L4483:
.LBB15019:
.LBB15017:
	.loc 29 95 0
	movw	r1, #:lower16:.LC278
	movt	r1, #:upper16:.LC278
	b	.L4484
.L4481:
	.loc 29 92 0
	mov	r1, r7
	b	.L4484
.L4489:
.LVL5086:
	.loc 29 118 0
	movw	r1, #:lower16:.LC284
	movt	r1, #:upper16:.LC284
	b	.L4484
.LVL5087:
.L4488:
	.loc 29 110 0
	movw	r1, #:lower16:.LC283
	movt	r1, #:upper16:.LC283
	b	.L4484
.LVL5088:
.L4487:
	.loc 29 107 0
	movw	r1, #:lower16:.LC282
	movt	r1, #:upper16:.LC282
	b	.L4484
.LVL5089:
.L4486:
	.loc 29 104 0
	movw	r1, #:lower16:.LC281
	movt	r1, #:upper16:.LC281
	b	.L4484
.LVL5090:
.L4485:
	.loc 29 101 0
	movw	r1, #:lower16:.LC280
	movt	r1, #:upper16:.LC280
	b	.L4484
.LVL5091:
.L4480:
	.loc 29 121 0
	movw	r1, #:lower16:.LC289
	movw	r0, #:lower16:.LC290
	ldr	r3, .L4538
	movt	r1, #:upper16:.LC289
	movt	r0, #:upper16:.LC290
	mov	r2, #121
	bl	_fail
.LVL5092:
.L4502:
.LBE15017:
.LBE15019:
.LBE15020:
.LBE15021:
.LBE15022:
.LBB15023:
.LBB14989:
.LBB14986:
	.loc 59 116 0
	ldr	ip, [r5, #68]
	add	r2, r5, #528
	movw	r0, #:lower16:.LC14
	movt	r0, #:upper16:.LC14
	mov	r3, #116
	str	r5, [sp]
	mov	r1, #0
.LVL5093:
	stmib	sp, {r2, ip}
	ldr	r2, .L4538+4
	bl	kprintf
.LVL5094:
	movw	r0, #:lower16:.LC296
	movt	r0, #:upper16:.LC296
.LVL5095:
.L4527:
	.loc 59 110 0
	bl	kprintf
.LVL5096:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5097:
	.loc 59 111 0
	bl	halt
.LVL5098:
.L4532:
.LBE14986:
.LBE14989:
.LBE15023:
	.loc 59 78 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC292
.LVL5099:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC292
	ldr	r1, [r3]
	bl	kprintf
.LVL5100:
	.loc 59 79 0
	bl	halt
.LVL5101:
.L4537:
.LBB15024:
.LBB14990:
.LBB14987:
.LBB14976:
.LBB14966:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5102:
.L4500:
.LBE14966:
.LBE14976:
	.loc 59 110 0
	ldr	ip, [r5, #68]
	add	r3, r5, #528
	movw	r0, #:lower16:.LC14
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4538+4
	str	r5, [sp]
	stmib	sp, {r3, ip}
	mov	r3, #110
	bl	kprintf
.LVL5103:
	movw	r0, #:lower16:.LC295
	movt	r0, #:upper16:.LC295
	b	.L4527
.L4536:
	.loc 59 104 0
	ldr	ip, [r5]
	movw	r0, #:lower16:.LC14
	mov	r3, #104
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4538+4
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5104:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5105:
	movw	r0, #:lower16:.LC294
	movt	r0, #:upper16:.LC294
	b	.L4527
.L4539:
	.align	2
.L4538:
	.word	.LANCHOR5-3292
	.word	.LANCHOR5-3276
.LBE14987:
.LBE14990:
.LBE15024:
	.cfi_endproc
.LFE354:
	.size	handleUnknownSyscall, .-handleUnknownSyscall
	.align	2
	.global	performInvocation_Endpoint
	.syntax unified
	.arm
	.fpu softvfp
	.type	performInvocation_Endpoint, %function
performInvocation_Endpoint:
.LFB811:
	.loc 58 617 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5106:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 58 618 0
	movw	ip, #:lower16:ksCurThread
	.loc 58 617 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 58 618 0
	movt	ip, #:upper16:ksCurThread
	.loc 58 617 0
	mov	lr, r3
	.loc 58 618 0
	str	r0, [sp, #4]
	ldr	ip, [ip]
	mov	r3, r2
.LVL5107:
	mov	r2, r1
.LVL5108:
	ldr	r1, [sp, #16]
.LVL5109:
	mov	r0, lr
.LVL5110:
	str	ip, [sp]
	bl	sendIPC
.LVL5111:
	.loc 58 621 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE811:
	.size	performInvocation_Endpoint, .-performInvocation_Endpoint
	.align	2
	.global	receiveIPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	receiveIPC, %function
receiveIPC:
.LFB771:
	.loc 56 112 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5112:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r4, r0
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 56 112 0
	add	ip, sp, #24
	stmdb	ip, {r1, r2}
	ldr	r2, [sp, #16]
.LVL5113:
.LBB15090:
.LBB15091:
	.loc 36 903 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r2
.LVL5114:
	.loc 36 904 0
	andne	r1, r2, #15
.LBE15091:
.LBE15090:
	.loc 56 117 0
	cmp	r1, #4
	bne	.L4575
.LVL5115:
.LBB15092:
.LBB15093:
	.loc 36 1059 0
	and	r2, r2, #15
.LVL5116:
	ldr	r1, [sp, #20]
.LVL5117:
	cmp	r2, #4
	bne	.L4576
.LBE15093:
.LBE15092:
	.loc 56 122 0
	ldr	r2, [r0, #460]
.LBB15096:
.LBB15094:
	.loc 36 1062 0
	bic	r1, r1, #15
.LVL5118:
.LBE15094:
.LBE15096:
	.loc 56 123 0
	cmp	r2, #0
	beq	.L4547
	ldr	r0, [r2]
.LVL5119:
.LBB15097:
.LBB15098:
	.loc 36 227 0 discriminator 1
	and	ip, r0, #3
.LBE15098:
.LBE15097:
	.loc 56 123 0 discriminator 1
	cmp	ip, #2
	beq	.L4577
.LVL5120:
.L4547:
	ldr	r2, [r1]
.LVL5121:
.LBB15099:
.LBB15100:
	.loc 36 499 0
	and	r0, r2, #3
.LBE15100:
.LBE15099:
	.loc 56 126 0
	cmp	r0, #1
	beq	.L4549
	bcc	.L4550
	cmp	r0, #2
	beq	.L4550
.LVL5122:
.L4542:
	.loc 56 200 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5123:
.L4550:
	.cfi_restore_state
.LBB15101:
	.loc 56 131 0
	cmp	r3, #0
	beq	.L4551
.LVL5124:
.LBB15102:
.LBB15103:
	.loc 28 428 0
	movw	r3, #:lower16:ksCurThread
.LVL5125:
.LBE15103:
.LBE15102:
.LBB15107:
.LBB15108:
	.loc 36 110 0
	orr	r2, r1, #3
.LBE15108:
.LBE15107:
.LBB15110:
.LBB15104:
	.loc 28 428 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE15104:
.LBE15110:
.LBB15111:
.LBB15109:
	.loc 36 110 0
	str	r2, [r4, #448]
.LVL5126:
.LBE15109:
.LBE15111:
.LBB15112:
.LBB15105:
	.loc 28 428 0
	cmp	r4, r3
	beq	.L4578
.LVL5127:
.L4552:
	ldr	r3, [r1]
	ldr	r2, [r1, #4]
.LVL5128:
.LBE15105:
.LBE15112:
.LBB15113:
.LBB15114:
.LBB15115:
.LBB15116:
	.loc 36 480 0
	bic	lr, r3, #15
.LVL5129:
.LBE15116:
.LBE15115:
.LBE15114:
.LBE15113:
.LBB15117:
.LBB15118:
	.loc 36 511 0
	bic	r0, r3, #3
.LBE15118:
.LBE15117:
.LBB15121:
.LBB15122:
	.loc 27 211 0
	bics	ip, r2, #15
.LVL5130:
.LBE15122:
.LBE15121:
.LBB15125:
.LBB15119:
	.loc 36 512 0
	orr	r0, r0, #2
.LBE15119:
.LBE15125:
.LBB15126:
.LBB15123:
	.loc 27 211 0
	moveq	ip, r4
.LVL5131:
	.loc 27 214 0
	strne	r4, [lr, #512]
.LBE15123:
.LBE15126:
.LBB15127:
.LBB15128:
.LBB15129:
.LBB15130:
	.loc 36 472 0
	tst	ip, #15
.LBE15130:
.LBE15129:
.LBE15128:
.LBE15127:
.LBB15145:
.LBB15124:
	.loc 27 216 0
	str	lr, [r4, #516]
	.loc 27 217 0
	mov	lr, #0
.LVL5132:
	str	lr, [r4, #512]
.LVL5133:
.LBE15124:
.LBE15145:
.LBB15146:
.LBB15120:
	.loc 36 512 0
	str	r0, [r1]
.LVL5134:
.LBE15120:
.LBE15146:
.LBB15147:
.LBB15143:
.LBB15134:
.LBB15131:
	.loc 36 472 0
	bne	.L4560
	.loc 36 473 0
	and	r2, r2, #15
.LVL5135:
	.loc 36 474 0
	bic	ip, ip, #15
.LVL5136:
	orr	r2, r2, ip
.LBE15131:
.LBE15134:
.LBB15135:
.LBB15136:
	.loc 36 491 0
	tst	r4, #15
.LBE15136:
.LBE15135:
.LBB15139:
.LBB15132:
	.loc 36 474 0
	str	r2, [r1, #4]
.LVL5137:
.LBE15132:
.LBE15139:
.LBB15140:
.LBB15137:
	.loc 36 491 0
	bne	.L4561
	.loc 36 492 0
	and	r3, r3, #12
	.loc 36 493 0
	bic	r4, r4, #15
.LVL5138:
	.loc 36 492 0
	orr	r3, r3, #2
	.loc 36 493 0
	orr	r4, r3, r4
	str	r4, [r1]
.LVL5139:
	b	.L4542
.LVL5140:
.L4549:
	ldr	r3, [r1, #4]
.LVL5141:
.LBE15137:
.LBE15140:
.LBE15143:
.LBE15147:
.LBE15101:
.LBB15153:
.LBB15154:
.LBB15155:
.LBB15156:
.LBB15157:
	.loc 36 480 0
	bic	ip, r2, #15
.LVL5142:
.LBE15157:
.LBE15156:
.LBE15155:
.LBE15154:
	.loc 56 163 0
	bics	r5, r3, #15
.LVL5143:
	beq	.L4579
.LVL5144:
.LBB15158:
.LBB15159:
	.loc 27 227 0
	ldr	r0, [r5, #516]
	cmp	r0, #0
	beq	.L4557
	.loc 27 228 0
	ldr	r6, [r5, #512]
	mov	lr, r5
	str	r6, [r0, #512]
	ldr	r6, [r5, #512]
.LVL5145:
.L4558:
	.loc 27 233 0
	cmp	r6, #0
	.loc 27 227 0
	moveq	ip, r0
.LVL5146:
	.loc 27 234 0
	strne	r0, [r6, #516]
.LBE15159:
.LBE15158:
.LBB15161:
.LBB15162:
.LBB15163:
.LBB15164:
	.loc 36 472 0
	tst	lr, #15
	bne	.L4560
	.loc 36 473 0
	and	r0, r3, #15
	.loc 36 474 0
	bic	r3, lr, #15
	orr	r3, r0, r3
.LBE15164:
.LBE15163:
.LBB15166:
.LBB15167:
	.loc 36 491 0
	tst	ip, #15
.LBE15167:
.LBE15166:
.LBB15170:
.LBB15165:
	.loc 36 474 0
	str	r3, [r1, #4]
.LVL5147:
.LBE15165:
.LBE15170:
.LBB15171:
.LBB15168:
	.loc 36 491 0
	bne	.L4561
	.loc 36 493 0
	bic	ip, ip, #15
.LVL5148:
	.loc 36 492 0
	and	r2, r2, #15
.LVL5149:
	.loc 36 493 0
	orr	r2, r2, ip
.LBE15168:
.LBE15171:
.LBE15162:
.LBE15161:
	.loc 56 169 0
	cmp	lr, #0
	.loc 56 179 0
	mov	r0, r5
.LBB15174:
.LBB15173:
.LBB15172:
.LBB15169:
	.loc 36 493 0
	str	r2, [r1]
.LVL5150:
.LBE15169:
.LBE15172:
.LBE15173:
.LBE15174:
.LBB15175:
.LBB15176:
	.loc 36 511 0
	biceq	r2, r2, #3
	.loc 36 512 0
	streq	r2, [r1]
	ldr	r2, [r5, #456]
.LVL5151:
.LBE15176:
.LBE15175:
	.loc 56 179 0
	str	r4, [sp]
.LVL5152:
.LBB15177:
.LBB15178:
	.loc 36 40 0
	ubfx	r6, r2, #3, #1
.LBE15178:
.LBE15177:
	.loc 56 179 0
	lsr	r2, r2, #4
	mov	r3, r6
	bl	doIPCTransfer
.LVL5153:
.LBB15179:
.LBB15180:
	.loc 36 59 0
	ldr	r3, [r5, #456]
.LBE15180:
.LBE15179:
	.loc 56 184 0
	tst	r3, #4
	beq	.L4580
.L4563:
	.loc 56 186 0
	cmp	r6, #0
	beq	.L4565
	.loc 56 187 0
	mov	r1, r4
	mov	r0, r5
.LBE15153:
	.loc 56 200 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5154:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	lr, [sp, #16]
	.cfi_restore 14
	add	sp, sp, #20
	.cfi_def_cfa_offset 0
.LBB15188:
	.loc 56 187 0
	b	setupCallerCap
.LVL5155:
.L4577:
	.cfi_restore_state
.LBE15188:
.LBB15189:
.LBB15190:
.LBB15191:
.LBB15192:
	.loc 10 30 0
	ldr	r3, [r2, #8]
.LVL5156:
.LBE15192:
.LBE15191:
.LBB15194:
.LBB15195:
	.loc 36 239 0
	bic	r0, r0, #3
.LBE15195:
.LBE15194:
.LBB15197:
.LBB15193:
	.loc 10 30 0
	str	r3, [r4]
.LVL5157:
.LBE15193:
.LBE15197:
.LBB15198:
.LBB15196:
	.loc 36 240 0
	str	r0, [r2]
.LVL5158:
	b	.L4542
.LVL5159:
.L4580:
.LBE15196:
.LBE15198:
.LBE15190:
.LBE15189:
.LBB15199:
.LBB15181:
.LBB15182:
	.loc 36 2546 0 discriminator 1
	ldr	r1, [r5, #464]
.LBE15182:
.LBE15181:
	.loc 56 184 0 discriminator 1
	ands	r7, r1, #7
	bne	.L4563
	.loc 56 192 0
	mov	r0, r5
	mov	r1, #1
	bl	setThreadState
.LVL5160:
.LBB15183:
.LBB15184:
	.loc 28 415 0
	mov	r1, r7
	mov	r0, r5
.LBE15184:
.LBE15183:
.LBE15199:
	.loc 56 200 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5161:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	lr, [sp, #16]
	.cfi_restore 14
	add	sp, sp, #20
	.cfi_def_cfa_offset 0
.LBB15200:
.LBB15186:
.LBB15185:
	.loc 28 415 0
	b	possibleSwitchTo
.LVL5162:
.L4565:
	.cfi_restore_state
.LBE15185:
.LBE15186:
	.loc 56 189 0
	mov	r1, r6
	mov	r0, r5
.LBE15200:
	.loc 56 200 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5163:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	lr, [sp, #16]
	.cfi_restore 14
	add	sp, sp, #20
	.cfi_def_cfa_offset 0
.LBB15201:
	.loc 56 189 0
	b	setThreadState
.LVL5164:
.L4551:
	.cfi_restore_state
.LBE15201:
.LBB15202:
.LBB15148:
.LBB15149:
.LBB15150:
	.loc 10 30 0
	str	r3, [r4]
.LVL5165:
	b	.L4542
.LVL5166:
.L4557:
.LBE15150:
.LBE15149:
.LBE15148:
.LBE15202:
.LBB15203:
.LBB15187:
.LBB15160:
	.loc 27 230 0
	ldr	lr, [r5, #512]
.LVL5167:
	mov	r6, lr
	b	.L4558
.LVL5168:
.L4578:
.LBE15160:
.LBE15187:
.LBE15203:
.LBB15204:
.LBB15151:
.LBB15106:
	.loc 28 429 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 28 428 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4552
	mov	r0, r4
	str	r1, [sp, #12]
	bl	scheduleTCB.part.281
.LVL5169:
	ldr	r1, [sp, #12]
	b	.L4552
.LVL5170:
.L4575:
.LBE15106:
.LBE15151:
.LBE15204:
	.loc 56 117 0 discriminator 1
	movw	r1, #:lower16:.LC213
	movw	r0, #:lower16:.LC297
.LVL5171:
	ldr	r3, .L4581
.LVL5172:
	movt	r1, #:upper16:.LC213
	movt	r0, #:upper16:.LC297
	mov	r2, #117
.LVL5173:
	bl	_assert_fail
.LVL5174:
.L4576:
.LBB15205:
.LBB15095:
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL5175:
.L4560:
.LBE15095:
.LBE15205:
.LBB15206:
.LBB15152:
.LBB15144:
.LBB15141:
.LBB15133:
	bl	endpoint_ptr_set_epQueue_head.isra.256.part.257
.LVL5176:
.L4561:
.LBE15133:
.LBE15141:
.LBB15142:
.LBB15138:
	bl	endpoint_ptr_set_epQueue_tail.isra.258.part.259
.LVL5177:
.L4579:
.LBE15138:
.LBE15142:
.LBE15144:
.LBE15152:
.LBE15206:
.LBB15207:
	.loc 56 163 0 discriminator 1
	movw	r1, #:lower16:.LC213
.LVL5178:
	movw	r0, #:lower16:.LC298
	ldr	r3, .L4581
	movt	r1, #:upper16:.LC213
	movt	r0, #:upper16:.LC298
	mov	r2, #163
	bl	_assert_fail
.LVL5179:
.L4582:
	.align	2
.L4581:
	.word	.LANCHOR5-3252
.LBE15207:
	.cfi_endproc
.LFE771:
	.size	receiveIPC, .-receiveIPC
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	handleRecv, %function
handleRecv:
.LFB359:
	.loc 59 342 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5180:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 59 346 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	.loc 59 342 0
	strd	r6, [sp, #8]
	.loc 59 346 0
	ldr	r1, [r4]
.LVL5181:
	.loc 59 342 0
	str	r8, [sp, #16]
	mov	r8, r0
	str	lr, [sp, #20]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
.LBB15208:
.LBB15209:
	.loc 45 25 0
	add	r0, sp, #4
.LVL5182:
.LBE15209:
.LBE15208:
.LBB15211:
.LBB15212:
	.loc 10 36 0
	ldr	r6, [r1]
.LVL5183:
.LBE15212:
.LBE15211:
.LBB15213:
.LBB15210:
	.loc 45 25 0
	mov	r2, r6
	bl	lookupSlot
.LVL5184:
	.loc 45 26 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L4584
.LVL5185:
	.loc 45 33 0
	ldr	r3, [sp, #8]
	ldm	r3, {r5, r7}
.LVL5186:
.LBE15210:
.LBE15213:
.LBB15214:
.LBB15215:
	.loc 36 903 0
	and	r3, r5, #14
	cmp	r3, #14
	.loc 36 905 0
	uxtbeq	r3, r5
.LVL5187:
	.loc 36 904 0
	andne	r3, r5, #15
.LBE15215:
.LBE15214:
	.loc 59 357 0
	cmp	r3, #4
	beq	.L4588
	cmp	r3, #6
	bne	.L4604
.LVL5188:
.LBB15216:
.LBB15217:
.LBB15218:
	.loc 36 1277 0
	and	r3, r5, #15
	cmp	r3, #6
	bne	.L4605
.LVL5189:
	.loc 36 1280 0
	bic	r3, r5, #15
.LBE15218:
.LBE15217:
	.loc 59 375 0
	tst	r7, #2
	ldr	r0, [r4]
.LBB15220:
.LBB15221:
	.loc 36 151 0
	ldr	r3, [r3, #12]
	bic	r3, r3, #15
.LVL5190:
.LBE15221:
.LBE15220:
	.loc 59 375 0
	beq	.L4595
	.loc 59 375 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4606
.L4597:
	.loc 59 383 0 is_stmt 1
	add	r2, sp, #16
	str	r5, [sp, #8]
	mov	r3, r8
.LVL5191:
	str	r7, [sp, #12]
	ldmdb	r2, {r1, r2}
	bl	receiveSignal
.LVL5192:
.L4583:
.LBE15216:
	.loc 59 392 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LVL5193:
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5194:
.L4604:
	.cfi_restore_state
	.loc 59 389 0
	ldr	r0, [r4]
	.loc 59 387 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 59 388 0
	movw	r3, #:lower16:current_fault
.L4602:
	.loc 59 387 0
	movt	r2, #:upper16:current_lookup_fault
	mov	lr, #1
	mov	ip, #0
	.loc 59 388 0
	movt	r3, #:upper16:current_fault
	mov	r1, #-2147483647
	.loc 59 387 0
	str	lr, [r2]
	str	ip, [r2, #4]
.LVL5195:
	.loc 59 388 0
	str	r1, [r3]
.LVL5196:
.L4601:
	.loc 59 352 0
	str	r6, [r3, #4]
.L4600:
	.loc 59 392 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LVL5197:
	ldr	lr, [sp, #20]
	.cfi_restore 14
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	.loc 59 353 0
	b	handleFault
.LVL5198:
.L4588:
	.cfi_restore_state
.LBB15223:
.LBB15224:
	.loc 36 1099 0
	and	r3, r5, #15
	cmp	r3, #4
	bne	.L4607
	.loc 36 1102 0
	ubfx	r3, r7, #1, #1
.LBE15224:
.LBE15223:
	.loc 59 359 0
	cmp	r3, #0
	beq	.L4608
.LVL5199:
.LBB15226:
.LBB15227:
	.loc 27 281 0
	ldr	r0, [r4]
	bic	r0, r0, #1020
	bic	r0, r0, #3
	.loc 27 283 0
	add	r0, r0, #48
	bl	cteDeleteOne
.LVL5200:
.LBE15227:
.LBE15226:
	.loc 59 367 0
	add	r2, sp, #16
	str	r5, [sp, #8]
	mov	r3, r8
	str	r7, [sp, #12]
	ldr	r0, [r4]
	ldmdb	r2, {r1, r2}
	bl	receiveIPC
.LVL5201:
	.loc 59 368 0
	b	.L4583
.LVL5202:
.L4606:
.LBB15228:
	.loc 59 375 0 discriminator 2
	cmp	r0, r3
	beq	.L4597
.L4595:
	.loc 59 377 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 59 378 0
	movw	r3, #:lower16:current_fault
.LVL5203:
	b	.L4602
.LVL5204:
.L4584:
.LBE15228:
	.loc 59 352 0
	movw	r3, #:lower16:current_fault
.LVL5205:
	mov	r2, #-2147483647
	.loc 59 353 0
	ldr	r0, [r4]
	.loc 59 352 0
	movt	r3, #:upper16:current_fault
	str	r2, [r3]
	b	.L4601
.LVL5206:
.L4608:
	.loc 59 360 0
	movw	r1, #:lower16:current_lookup_fault
	.loc 59 361 0
	movw	r2, #:lower16:current_fault
	.loc 59 362 0
	ldr	r0, [r4]
	.loc 59 360 0
	movt	r1, #:upper16:current_lookup_fault
	.loc 59 361 0
	movt	r2, #:upper16:current_fault
	.loc 59 360 0
	mov	lr, #1
	.loc 59 361 0
	mov	ip, #-2147483647
	.loc 59 360 0
	str	lr, [r1]
	str	r3, [r1, #4]
	.loc 59 361 0
	str	ip, [r2]
	str	r6, [r2, #4]
	b	.L4600
.LVL5207:
.L4605:
.LBB15229:
.LBB15222:
.LBB15219:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL5208:
.L4607:
.LBE15219:
.LBE15222:
.LBE15229:
.LBB15230:
.LBB15225:
	bl	cap_endpoint_cap_get_capCanReceive.part.94
.LVL5209:
.LBE15225:
.LBE15230:
	.cfi_endproc
.LFE359:
	.size	handleRecv, .-handleRecv
	.align	2
	.global	copyMRs
	.syntax unified
	.arm
	.fpu softvfp
	.type	copyMRs, %function
copyMRs:
.LFB829:
	.loc 27 324 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5210:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r4, [sp, #20]
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	.loc 27 328 0
	cmp	r4, #0
	beq	.L4610
	ldr	r7, .L4623
	.loc 27 328 0 is_stmt 0 discriminator 3
	mov	lr, #2
	mov	ip, #0
	b	.L4613
.LVL5211:
.L4611:
	ldr	lr, [r7, ip, lsl #2]
.LVL5212:
.L4613:
	add	ip, ip, #1
.LVL5213:
.LBB15231:
.LBB15232:
	.loc 10 36 0 is_stmt 1 discriminator 3
	ldr	r5, [r0, lr, lsl #2]
.LVL5214:
.LBE15232:
.LBE15231:
	.loc 27 328 0 discriminator 3
	cmp	r4, ip
	movhi	r6, #1
	movls	r6, #0
	cmp	ip, #3
	movhi	r6, #0
.LBB15233:
.LBB15234:
	.loc 10 30 0 discriminator 3
	str	r5, [r2, lr, lsl #2]
.LVL5215:
.LBE15234:
.LBE15233:
	.loc 27 328 0 discriminator 3
	cmp	r6, #0
	bne	.L4611
	.loc 27 333 0
	cmp	r1, #0
	cmpne	r3, #0
	beq	.L4616
	.loc 27 338 0 discriminator 1
	cmp	r4, ip
	bls	.L4616
	lsl	ip, ip, #2
.LVL5216:
	add	r0, r1, r4, lsl #2
.LVL5217:
	add	r3, r3, ip
.LVL5218:
	add	ip, r1, ip
.LVL5219:
.L4614:
	.loc 27 339 0 discriminator 2
	ldr	r2, [ip, #4]!
	.loc 27 338 0 discriminator 2
	cmp	ip, r0
	.loc 27 339 0 discriminator 2
	str	r2, [r3, #4]!
	.loc 27 338 0 discriminator 2
	bne	.L4614
.L4610:
	.loc 27 343 0
	mov	r0, r4
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5220:
.L4616:
	.cfi_restore_state
	.loc 27 338 0
	mov	r4, ip
	b	.L4610
.L4624:
	.align	2
.L4623:
	.word	.LANCHOR3+1968
	.cfi_endproc
.LFE829:
	.size	copyMRs, .-copyMRs
	.align	2
	.global	decodeDomainInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeDomainInvocation, %function
decodeDomainInvocation:
.LFB839:
	.loc 27 1186 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5221:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 27 1190 0
	cmp	r0, #27
	.loc 27 1186 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 14, -12
	str	lr, [sp, #4]
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
.LVL5222:
	.loc 27 1186 0
	add	r0, sp, #20
.LVL5223:
	stmib	r0, {r2, r3}
.LVL5224:
	.loc 27 1190 0
	bne	.L4637
	.loc 27 1195 0
	cmp	r1, #0
	.loc 27 1196 0
	movw	r3, #:lower16:ksCurThread
	.loc 27 1195 0
	beq	.L4638
.LVL5225:
.LBB15235:
.LBB15236:
	.loc 43 31 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LVL5226:
.LBB15237:
.LBB15238:
	.loc 10 36 0
	ldr	r4, [r3, #8]
.LVL5227:
.LBE15238:
.LBE15237:
.LBE15236:
.LBE15235:
	.loc 27 1201 0
	cmp	r4, #0
	bne	.L4639
	ldr	r1, [sp, #24]
.LVL5228:
	.loc 27 1210 0
	cmp	r1, #0
	beq	.L4640
	.loc 27 1216 0
	ldr	r4, [r1]
.LVL5229:
.LBB15239:
.LBB15240:
	.loc 36 903 0
	and	r2, r4, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r4
.LVL5230:
	.loc 36 904 0
	andne	r2, r4, #15
.LBE15240:
.LBE15239:
	.loc 27 1217 0
	cmp	r2, #12
	bne	.L4641
	.loc 27 1224 0
	mov	r0, r3
	mov	r1, #2
	bl	setThreadState
.LVL5231:
.LBB15241:
.LBB15242:
	.loc 36 1469 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4642
.LVL5232:
.LBE15242:
.LBE15241:
	.loc 27 1225 0
	bic	r0, r4, #15
	mov	r1, #0
	bl	setDomain
.LVL5233:
	.loc 27 1226 0
	mov	r0, #0
.LVL5234:
.L4625:
	.loc 27 1227 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5235:
.L4639:
	.cfi_restore_state
	.loc 27 1202 0
	ldr	ip, [r3, #68]
	add	r2, r3, #528
	movw	r0, #:lower16:.LC14
	mov	r1, #0
.LVL5236:
	str	r3, [sp]
	movt	r0, #:upper16:.LC14
	movw	r3, #1203
	stmib	sp, {r2, ip}
	ldr	r2, .L4643
	bl	kprintf
.LVL5237:
	movw	r0, #:lower16:.LC300
	mov	r1, r4
	mov	r2, #1
	movt	r0, #:upper16:.LC300
	bl	kprintf
.LVL5238:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5239:
	.loc 27 1204 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1205 0
	mov	r1, #0
	.loc 27 1206 0
	mov	r0, #3
	.loc 27 1205 0
	str	r1, [r3]
	.loc 27 1204 0
	str	r2, [r3, #24]
	.loc 27 1206 0
	b	.L4625
.LVL5240:
.L4637:
	.loc 27 1191 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1192 0
	mov	r0, r2
	.loc 27 1191 0
	str	r2, [r3, #24]
	.loc 27 1192 0
	b	.L4625
.L4638:
	.loc 27 1196 0
	movt	r3, #:upper16:ksCurThread
	ldr	r2, .L4643
	movw	r0, #:lower16:.LC14
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #1196
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
.LVL5241:
.L4636:
	.loc 27 1211 0
	bl	kprintf
.LVL5242:
	movw	r0, #:lower16:.LC299
	movt	r0, #:upper16:.LC299
	bl	kprintf
.LVL5243:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5244:
	.loc 27 1212 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1213 0
	mov	r0, #3
	.loc 27 1212 0
	str	r2, [r3, #24]
	.loc 27 1213 0
	b	.L4625
.L4640:
	.loc 27 1211 0
	ldr	ip, [r3, #68]
	add	r2, r3, #528
	movw	r0, #:lower16:.LC14
	str	r3, [sp]
	movt	r0, #:upper16:.LC14
	movw	r3, #1211
	stmib	sp, {r2, ip}
	ldr	r2, .L4643
	b	.L4636
.LVL5245:
.L4641:
	.loc 27 1218 0
	ldr	ip, [r3, #68]
	add	r2, r3, #528
	movw	r0, #:lower16:.LC14
	mov	r1, #0
	str	r3, [sp]
	movt	r0, #:upper16:.LC14
	movw	r3, #1218
	stmib	sp, {r2, ip}
	ldr	r2, .L4643
	bl	kprintf
.LVL5246:
	movw	r0, #:lower16:.LC301
	movt	r0, #:upper16:.LC301
	bl	kprintf
.LVL5247:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5248:
	.loc 27 1219 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1221 0
	mov	r0, #3
	.loc 27 1220 0
	str	r2, [r3]
	.loc 27 1219 0
	str	r2, [r3, #24]
	.loc 27 1221 0
	b	.L4625
.LVL5249:
.L4642:
.LBB15244:
.LBB15243:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5250:
.L4644:
	.align	2
.L4643:
	.word	.LANCHOR5-3240
.LBE15243:
.LBE15244:
	.cfi_endproc
.LFE839:
	.size	decodeDomainInvocation, .-decodeDomainInvocation
	.align	2
	.global	decodeUnbindNotification
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeUnbindNotification, %function
decodeUnbindNotification:
.LFB841:
	.loc 27 1280 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	.loc 27 1280 0
	add	r3, sp, #24
	stmdb	r3, {r0, r1}
	ldr	r4, [sp, #16]
.LVL5251:
.LBB15270:
.LBB15271:
	.loc 36 1469 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4651
	.loc 36 1472 0
	bic	r4, r4, #15
.LVL5252:
.LBE15271:
.LBE15270:
.LBB15273:
.LBB15274:
	.loc 27 1286 0
	movw	r3, #:lower16:ksCurThread
.LBE15274:
.LBE15273:
	.loc 27 1285 0
	ldr	r1, [r4, #460]
	cmp	r1, #0
	beq	.L4652
	.loc 27 1291 0
	movt	r3, #:upper16:ksCurThread
	mov	r1, #2
	ldr	r0, [r3]
	bl	setThreadState
.LVL5253:
.LBB15276:
.LBB15277:
.LBB15278:
.LBB15279:
	.loc 35 242 0
	ldr	r3, [r4, #460]
.LVL5254:
	.loc 35 244 0
	cmp	r3, #0
	beq	.L4649
.LVL5255:
.LBB15280:
.LBB15281:
.LBB15282:
.LBB15283:
	.loc 36 163 0
	ldr	r2, [r3, #12]
.LBE15283:
.LBE15282:
	.loc 35 224 0
	mov	r1, #0
.LBE15281:
.LBE15280:
.LBE15279:
.LBE15278:
.LBE15277:
.LBE15276:
	.loc 27 1292 0
	mov	r0, r1
.LBB15291:
.LBB15290:
.LBB15289:
.LBB15288:
.LBB15287:
.LBB15286:
.LBB15285:
.LBB15284:
	.loc 36 163 0
	and	r2, r2, #15
	.loc 36 164 0
	str	r2, [r3, #12]
.LVL5256:
.LBE15284:
.LBE15285:
	.loc 35 224 0
	str	r1, [r4, #460]
.LVL5257:
.L4645:
.LBE15286:
.LBE15287:
.LBE15288:
.LBE15289:
.LBE15290:
.LBE15291:
	.loc 27 1293 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
.LVL5258:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5259:
.L4652:
	.cfi_restore_state
.LBB15292:
.LBB15275:
	.loc 27 1286 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4653
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #1286
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5260:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5261:
	movw	r0, #:lower16:.LC302
	movt	r0, #:upper16:.LC302
	bl	kprintf
.LVL5262:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5263:
	.loc 27 1287 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	mov	r0, r2
	str	r2, [r3, #24]
.LBE15275:
.LBE15292:
	.loc 27 1293 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5264:
.L4649:
	.cfi_restore_state
	.loc 27 1292 0
	mov	r0, r3
	b	.L4645
.LVL5265:
.L4651:
.LBB15293:
.LBB15272:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5266:
.L4654:
	.align	2
.L4653:
	.word	.LANCHOR5-3216
.LBE15272:
.LBE15293:
	.cfi_endproc
.LFE841:
	.size	decodeUnbindNotification, .-decodeUnbindNotification
	.align	2
	.global	invokeTCB_Suspend
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_Suspend, %function
invokeTCB_Suspend:
.LFB842:
	.loc 27 1299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5267:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 27 1300 0
	bl	suspend
.LVL5268:
	.loc 27 1302 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE842:
	.size	invokeTCB_Suspend, .-invokeTCB_Suspend
	.align	2
	.global	invokeTCB_Resume
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_Resume, %function
invokeTCB_Resume:
.LFB843:
	.loc 27 1306 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5269:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 27 1307 0
	bl	restart
.LVL5270:
	.loc 27 1309 0
	ldr	r4, [sp]
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, #0
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE843:
	.size	invokeTCB_Resume, .-invokeTCB_Resume
	.align	2
	.global	invokeTCB_ThreadControl
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_ThreadControl, %function
invokeTCB_ThreadControl:
.LFB844:
	.loc 27 1319 0
	.cfi_startproc
	@ args = 48, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5271:
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL5272:
.LBB15294:
.LBB15295:
	.loc 36 1455 0
	ands	r0, r0, #15
.LVL5273:
.LBE15295:
.LBE15294:
	.loc 27 1319 0
	strd	r6, [sp, #8]
	str	r8, [sp, #16]
	str	lr, [sp, #20]
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 27 1319 0
	ldr	r5, [sp, #76]
.LBB15301:
.LBB15296:
	.loc 36 1455 0
	bne	.L4705
.LVL5274:
.LBE15296:
.LBE15301:
	.loc 27 1323 0
	ands	r6, r5, #4
	mov	r7, r1
.LBB15302:
.LBB15297:
	.loc 36 1463 0
	str	r0, [sp, #4]
.LVL5275:
	.loc 36 1459 0
	bic	r1, r4, #15
.LVL5276:
.LBE15297:
.LBE15302:
	.loc 27 1324 0
	strne	r2, [r4, #496]
	.loc 27 1327 0
	tst	r5, #8
.LVL5277:
.LBB15303:
.LBB15298:
	.loc 36 1460 0
	orr	r1, r1, #12
.LBE15298:
.LBE15303:
.LBB15304:
.LBB15305:
	.loc 28 361 0
	strne	r3, [r4, #484]
.LBE15305:
.LBE15304:
	.loc 27 1331 0
	tst	r5, #1
.LBB15306:
.LBB15299:
	.loc 36 1463 0
	str	r1, [sp]
.LBE15299:
.LBE15306:
	.loc 27 1331 0
	bne	.L4706
.LVL5278:
.L4663:
	.loc 27 1335 0
	cmp	r6, #0
	bne	.L4707
.L4665:
	.loc 27 1363 0
	tst	r5, #2
	bne	.L4669
.L4671:
	.loc 27 1385 0
	mov	r6, #0
.L4659:
	.loc 27 1386 0
	mov	r0, r6
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5279:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5280:
.L4669:
	.cfi_restore_state
.LBB15307:
	.loc 27 1366 0
	bic	r0, r4, #1020
	.loc 27 1367 0
	mov	r1, #1
	.loc 27 1366 0
	bic	r0, r0, #3
	add	r5, r0, #64
.LVL5281:
	.loc 27 1367 0
	mov	r0, r5
	bl	cteDelete
.LVL5282:
	.loc 27 1368 0
	subs	r6, r0, #0
	bne	.L4659
	.loc 27 1375 0
	ldr	r3, [sp, #72]
	cmp	r3, #0
.LBB15308:
.LBB15309:
.LBB15310:
	.loc 10 30 0
	ldr	r3, [sp, #60]
	str	r3, [r4, #72]
.LBE15310:
.LBE15309:
.LBE15308:
	.loc 27 1371 0
	str	r3, [r4, #500]
	.loc 27 1375 0
	beq	.L4670
	.loc 27 1375 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #72]
	add	r8, sp, #64
.LVL5283:
	ldm	r8, {r0, r1}
.LVL5284:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL5285:
	cmp	r0, #0
	beq	.L4670
	.loc 27 1376 0 is_stmt 1 discriminator 2
	add	r1, sp, #8
	ldm	r7, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL5286:
	.loc 27 1375 0 discriminator 2
	cmp	r0, #0
	bne	.L4708
.LVL5287:
.L4670:
	.loc 27 1380 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	bne	.L4671
	.loc 27 1381 0
	bl	rescheduleRequired
.LVL5288:
	b	.L4659
.LVL5289:
.L4707:
.LBE15307:
.LBB15311:
	.loc 27 1338 0
	bic	r8, r4, #1020
	.loc 27 1339 0
	mov	r1, #1
	.loc 27 1338 0
	bic	r8, r8, #3
.LVL5290:
	.loc 27 1339 0
	mov	r0, r8
	bl	cteDelete
.LVL5291:
	.loc 27 1340 0
	subs	r6, r0, #0
	bne	.L4659
	.loc 27 1343 0
	ldr	r3, [sp, #44]
	add	r6, sp, #36
.LVL5292:
	ldm	r6, {r0, r1}
.LVL5293:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL5294:
	cmp	r0, #0
	beq	.L4667
	.loc 27 1344 0 discriminator 1
	add	r1, sp, #8
	ldm	r7, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL5295:
	.loc 27 1343 0 discriminator 1
	cmp	r0, #0
	bne	.L4709
.L4667:
.LBE15311:
.LBB15312:
	.loc 27 1352 0
	add	r8, r8, #16
.LVL5296:
	.loc 27 1353 0
	mov	r1, #1
	mov	r0, r8
	bl	cteDelete
.LVL5297:
	.loc 27 1354 0
	subs	r6, r0, #0
.LVL5298:
	bne	.L4659
	.loc 27 1357 0
	ldr	r3, [sp, #56]
	add	r6, sp, #48
	ldm	r6, {r0, r1}
.LVL5299:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL5300:
	cmp	r0, #0
	beq	.L4665
	.loc 27 1358 0 discriminator 1
	add	r1, sp, #8
	ldm	r7, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL5301:
	.loc 27 1357 0 discriminator 1
	cmp	r0, #0
	beq	.L4665
	.loc 27 1359 0
	mov	r3, r8
	ldm	r6, {r0, r1}
	ldr	r2, [sp, #56]
	bl	cteInsert
.LVL5302:
	b	.L4665
.LVL5303:
.L4706:
.LBE15312:
	.loc 27 1332 0
	mov	r0, r4
	ldr	r1, [sp, #32]
	bl	setPriority
.LVL5304:
	b	.L4663
.LVL5305:
.L4709:
.LBB15313:
	.loc 27 1345 0
	mov	r3, r8
	ldm	r6, {r0, r1}
	ldr	r2, [sp, #44]
	bl	cteInsert
.LVL5306:
	b	.L4667
.LVL5307:
.L4708:
.LBE15313:
.LBB15314:
	.loc 27 1377 0
	mov	r3, r5
	ldm	r8, {r0, r1}
	ldr	r2, [sp, #72]
	bl	cteInsert
.LVL5308:
	b	.L4670
.LVL5309:
.L4705:
.LBE15314:
.LBB15315:
.LBB15300:
	bl	cap_thread_cap_new.part.236
.LVL5310:
.LBE15300:
.LBE15315:
	.cfi_endproc
.LFE844:
	.size	invokeTCB_ThreadControl, .-invokeTCB_ThreadControl
	.align	2
	.global	decodeTCBConfigure
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeTCBConfigure, %function
decodeTCBConfigure:
.LFB834:
	.loc 27 886 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5311:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	mov	r9, r3
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #124
	.cfi_def_cfa_offset 160
.LVL5312:
	ldr	r4, [sp, #160]
.LVL5313:
	.loc 27 886 0
	add	r3, sp, #72
.LVL5314:
	ldr	r6, [sp, #164]
.LVL5315:
	ldr	r5, [sp, #168]
.LVL5316:
	stm	r3, {r0, r1}
.LVL5317:
	.loc 27 898 0
	cmp	r6, #0
	cmpne	r4, #0
	moveq	r3, #1
	movne	r3, #0
	cmp	r5, #0
	orreq	r3, r3, #1
	cmp	r2, #4
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL5318:
	cmp	r2, #0
	bne	.L4740
.LVL5319:
.LBB15316:
.LBB15317:
	.loc 43 34 0
	ldr	r3, [sp, #172]
.LBE15317:
.LBE15316:
.LBB15322:
.LBB15323:
	.loc 43 31 0
	movw	r8, #:lower16:ksCurThread
	movt	r8, #:upper16:ksCurThread
.LBE15323:
.LBE15322:
.LBB15330:
.LBB15318:
	.loc 43 34 0
	cmp	r3, #0
.LBE15318:
.LBE15330:
.LBB15331:
.LBB15328:
	.loc 43 31 0
	ldr	r3, [r8]
.LVL5320:
.LBB15324:
.LBB15325:
	.loc 10 36 0
	ldr	r1, [r3, #8]
.LBE15325:
.LBE15324:
.LBE15328:
.LBE15331:
.LBB15332:
.LBB15333:
.LBB15334:
.LBB15335:
	ldr	lr, [r3, #12]
.LBE15335:
.LBE15334:
.LBE15333:
.LBE15332:
.LBB15336:
.LBB15329:
.LBB15327:
.LBB15326:
	str	r1, [sp, #68]
.LVL5321:
.LBE15326:
.LBE15327:
.LBE15329:
.LBE15336:
.LBB15337:
.LBB15338:
.LBB15339:
.LBB15340:
	ldr	r1, [r3, #16]
	str	r1, [sp, #60]
.LVL5322:
.LBE15340:
.LBE15339:
.LBE15338:
.LBE15337:
.LBB15341:
.LBB15342:
.LBB15343:
.LBB15344:
	ldr	r1, [r3, #20]
	str	r1, [sp, #64]
.LVL5323:
.LBE15344:
.LBE15343:
.LBE15342:
.LBE15341:
.LBB15345:
.LBB15319:
	.loc 43 34 0
	beq	.L4741
.LBE15319:
.LBE15345:
	.loc 27 911 0
	ldrd	r0, [r4]
.LBB15346:
.LBB15347:
	.loc 30 27 0
	uxtb	r10, lr
.LBE15347:
.LBE15346:
.LBB15348:
.LBB15349:
	.loc 30 16 0
	ubfx	fp, lr, #8, #8
.LBE15349:
.LBE15348:
.LBB15350:
.LBB15351:
	.loc 27 38 0
	ldr	ip, [r3, #484]
.LBE15351:
.LBE15350:
	.loc 27 911 0
	strd	r0, [sp, #92]
	.loc 27 913 0
	ldrd	r0, [r6]
.LBB15359:
.LBB15352:
	.loc 27 41 0
	cmp	ip, #255
.LBE15352:
.LBE15359:
	.loc 27 913 0
	strd	r0, [sp, #100]
	ldr	r1, [sp, #72]
	str	r1, [sp, #52]
	.loc 27 915 0
	ldrd	r0, [r5]
	strd	r0, [sp, #84]
.LBB15360:
.LBB15320:
	.loc 43 35 0
	ldr	r1, [sp, #172]
	ldr	r1, [r1, #20]
	str	r1, [sp, #48]
.LVL5324:
.LBE15320:
.LBE15360:
	.loc 27 911 0
	ldr	r1, [r4]
	str	r1, [sp, #56]
.LVL5325:
.LBB15361:
.LBB15353:
	.loc 27 41 0
	bhi	.L4742
	.loc 27 44 0
	cmp	ip, r10
	bcc	.L4743
.LVL5326:
.LBE15353:
.LBE15361:
.LBB15362:
.LBB15363:
	cmp	ip, fp
	bcs	.L4744
.LBE15363:
.LBE15362:
	.loc 27 929 0
	ldr	r5, [r3, #68]
.LVL5327:
.LBB15368:
.LBB15364:
	.loc 27 45 0
	movw	lr, #:lower16:current_syscall_error
.LVL5328:
.LBE15364:
.LBE15368:
	.loc 27 929 0
	add	r1, r3, #528
.LVL5329:
.LBB15369:
.LBB15365:
	.loc 27 45 0
	movt	lr, #:upper16:current_syscall_error
	mov	r4, #4
.LVL5330:
.LBE15365:
.LBE15369:
	.loc 27 929 0
	str	r3, [sp]
.LVL5331:
	movw	r0, #:lower16:.LC14
	str	r1, [sp, #4]
	movw	r3, #930
.LBB15370:
.LBB15366:
	.loc 27 46 0
	str	r2, [lr, #8]
.LBE15366:
.LBE15370:
	.loc 27 929 0
	mov	r1, r2
	movt	r0, #:upper16:.LC14
	str	r5, [sp, #8]
	ldr	r2, .L4747
.LBB15371:
.LBB15367:
	.loc 27 48 0
	mov	r7, #3
	.loc 27 47 0
	str	ip, [lr, #12]
.LVL5332:
	.loc 27 45 0
	str	r4, [lr, #24]
.LBE15367:
.LBE15371:
	.loc 27 929 0
	bl	kprintf
.LVL5333:
	ldr	r3, [r8]
	movw	r0, #:lower16:.LC305
	mov	r1, fp
	movt	r0, #:upper16:.LC305
.L4738:
	ldr	r2, [r3, #484]
	bl	kprintf
.LVL5334:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5335:
	.loc 27 931 0
	b	.L4710
.LVL5336:
.L4740:
	.loc 27 899 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4747
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #899
	.loc 27 901 0
	mov	r7, #3
	.loc 27 899 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5337:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5338:
	movw	r0, #:lower16:.LC303
	movt	r0, #:upper16:.LC303
	bl	kprintf
.LVL5339:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5340:
	.loc 27 900 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL5341:
.L4710:
	.loc 27 998 0
	mov	r0, r7
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5342:
.L4743:
	.cfi_restore_state
	.loc 27 922 0
	ldr	r5, [r3, #68]
.LVL5343:
.LBB15372:
.LBB15354:
	.loc 27 45 0
	movw	lr, #:lower16:current_syscall_error
.LVL5344:
.LBE15354:
.LBE15372:
	.loc 27 922 0
	add	r1, r3, #528
.LVL5345:
.LBB15373:
.LBB15355:
	.loc 27 45 0
	movt	lr, #:upper16:current_syscall_error
	mov	r4, #4
.LVL5346:
.LBE15355:
.LBE15373:
	.loc 27 922 0
	str	r3, [sp]
.LVL5347:
	movw	r0, #:lower16:.LC14
	str	r1, [sp, #4]
	movw	r3, #923
.LBB15374:
.LBB15356:
	.loc 27 46 0
	str	r2, [lr, #8]
.LBE15356:
.LBE15374:
	.loc 27 922 0
	mov	r1, r2
	movt	r0, #:upper16:.LC14
	str	r5, [sp, #8]
	ldr	r2, .L4747
.LBB15375:
.LBB15357:
	.loc 27 48 0
	mov	r7, #3
	.loc 27 47 0
	str	ip, [lr, #12]
.LVL5348:
	.loc 27 45 0
	str	r4, [lr, #24]
.LBE15357:
.LBE15375:
	.loc 27 922 0
	bl	kprintf
.LVL5349:
	movw	r0, #:lower16:.LC304
	mov	r1, r10
	ldr	r3, [r8]
	movt	r0, #:upper16:.LC304
	b	.L4738
.LVL5350:
.L4744:
	.loc 27 934 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bne	.L4745
	.loc 27 935 0
	ldr	r5, [sp, #48]
.LVL5351:
.L4726:
.LBB15376:
.LBB15377:
	.loc 36 1469 0
	ldr	r3, [sp, #52]
	and	r3, r3, #15
	cmp	r3, #12
	bne	.L4746
.LBE15377:
.LBE15376:
	.loc 27 950 0
	ldr	r3, [sp, #52]
	bic	r7, r3, #1020
	bic	r7, r7, #3
	.loc 27 949 0
	mov	r0, r7
	bl	slotCapLongRunningDelete
.LVL5352:
	cmp	r0, #0
	bne	.L4717
	.loc 27 951 0
	add	r0, r7, #16
	bl	slotCapLongRunningDelete
.LVL5353:
	.loc 27 950 0
	subs	r1, r0, #0
	beq	.L4718
.L4717:
	.loc 27 953 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #953
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4747
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5354:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5355:
	movw	r0, #:lower16:.LC306
	movt	r0, #:upper16:.LC306
.LVL5356:
.L4737:
	.loc 27 985 0
	bl	kprintf
.LVL5357:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5358:
	.loc 27 986 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 27 987 0
	mov	r7, r2
	.loc 27 986 0
	str	r2, [r3, #24]
	.loc 27 987 0
	b	.L4710
.LVL5359:
.L4718:
	.loc 27 958 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	addeq	r7, sp, #92
	beq	.L4719
	.loc 27 959 0
	ldr	r0, [sp, #56]
	add	r7, sp, #120
	ldr	r2, [sp, #60]
	ldr	ip, [sp, #96]
	mov	r3, r0
	str	r0, [r7, #-28]!
	mov	r0, r7
	str	ip, [sp]
	bl	updateCapData
.LVL5360:
	ldr	r3, [sp, #92]
	str	r3, [sp, #56]
.LVL5361:
.L4719:
	.loc 27 962 0
	ldr	r3, [sp, #56]
	mov	r1, r4
	add	r0, sp, #108
	str	r3, [sp, #92]
	ldm	r7, {r2, r3}
	bl	deriveCap
.LVL5362:
	ldr	r7, [sp, #108]
.LVL5363:
	.loc 27 963 0
	cmp	r7, #0
	bne	.L4710
	.loc 27 962 0
	ldr	r3, [sp, #112]
.LBB15379:
.LBB15380:
	.loc 36 903 0
	and	r1, r3, #14
.LBE15380:
.LBE15379:
	.loc 27 962 0
	mov	r0, r3
	.loc 27 966 0
	ldrd	r2, [sp, #112]
.LBB15384:
.LBB15381:
	.loc 36 903 0
	cmp	r1, #14
.LBE15381:
.LBE15384:
	.loc 27 962 0
	str	r0, [sp, #56]
.LVL5364:
.LBB15385:
.LBB15382:
	.loc 36 904 0
	movne	r1, r0
.LBE15382:
.LBE15385:
	.loc 27 966 0
	strd	r2, [sp, #92]
.LVL5365:
.LBB15386:
.LBB15383:
	.loc 36 905 0
	ldrbeq	r3, [sp, #56]	@ zero_extendqisi2
.LVL5366:
	.loc 36 904 0
	andne	r3, r1, #15
.LBE15383:
.LBE15386:
	.loc 27 968 0
	cmp	r3, #10
	beq	.L4722
	.loc 27 969 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	movw	r3, #969
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4747
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5367:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5368:
	movw	r0, #:lower16:.LC307
	movt	r0, #:upper16:.LC307
	b	.L4737
.LVL5369:
.L4741:
.LBB15387:
.LBB15321:
	bl	getSyscallArg.part.206
.LVL5370:
.L4745:
.LBE15321:
.LBE15387:
.LBB15388:
	.loc 27 937 0
	add	r3, sp, #84
	mov	r1, r5
.LVL5371:
	ldm	r3, {r2, r3}
	add	r0, sp, #108
	bl	deriveCap
.LVL5372:
	ldr	r7, [sp, #108]
.LVL5373:
	.loc 27 938 0
	cmp	r7, #0
	bne	.L4710
	.loc 27 943 0
	ldr	r0, [sp, #48]
	.loc 27 941 0
	ldrd	r2, [sp, #112]
	strd	r2, [sp, #84]
	.loc 27 943 0
	add	r3, sp, #84
	ldm	r3, {r1, r2}
	bl	checkValidIPCBuffer
.LVL5374:
	.loc 27 944 0
	subs	r7, r0, #0
.LVL5375:
	beq	.L4726
	b	.L4710
.LVL5376:
.L4722:
.LBE15388:
	.loc 27 974 0
	ldr	r3, [sp, #64]
	cmp	r3, #0
	addeq	r3, sp, #100
	streq	r3, [sp, #60]
	beq	.L4723
	.loc 27 975 0
	add	r3, sp, #100
	mov	r1, #0
	ldr	r2, [sp, #64]
	ldr	ip, [sp, #104]
	mov	r0, r3
.LVL5377:
	str	ip, [sp]
	str	r3, [sp, #60]
	ldr	r3, [sp, #100]
	bl	updateCapData
.LVL5378:
.L4723:
	.loc 27 978 0
	ldr	r3, [sp, #60]
	add	r0, sp, #108
	mov	r1, r6
	ldm	r3, {r2, r3}
	bl	deriveCap
.LVL5379:
	ldr	r7, [sp, #108]
.LVL5380:
	.loc 27 979 0
	cmp	r7, #0
	bne	.L4710
	.loc 27 982 0
	ldrd	r2, [sp, #112]
	strd	r2, [sp, #100]
	.loc 27 984 0
	ldr	r3, [sp, #60]
	ldm	r3, {r0, r1}
	bl	isValidVTableRoot
.LVL5381:
	cmp	r0, #0
	bne	.L4724
	.loc 27 985 0
	ldr	ip, [r8]
	movw	r0, #:lower16:.LC14
	mov	r1, r7
	movt	r0, #:upper16:.LC14
	movw	r3, #985
	ldr	r2, .L4747
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5382:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5383:
	movw	r0, #:lower16:.LC308
	movt	r0, #:upper16:.LC308
	b	.L4737
.LVL5384:
.L4724:
	.loc 27 990 0
	mov	r1, #2
	ldr	r0, [r8]
	bl	setThreadState
.LVL5385:
	.loc 27 991 0
	str	r10, [sp]
	ldr	lr, [sp, #48]
	mov	ip, #15
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #60]
	str	r3, [sp, #92]
	mov	r3, fp
	ldrd	r0, [r2]
	str	r4, [sp, #12]
	str	r6, [sp, #24]
	ldr	r2, [sp, #68]
	ldrd	r6, [sp, #92]
.LVL5386:
	strd	r6, [sp, #4]
	ldrd	r6, [sp, #84]
	strd	r0, [sp, #16]
	ldr	r0, [sp, #52]
	mov	r1, r9
	str	lr, [sp, #28]
	str	r5, [sp, #40]
	strd	r6, [sp, #32]
	str	ip, [sp, #44]
	bic	r0, r0, #15
	bl	invokeTCB_ThreadControl
.LVL5387:
	mov	r7, r0
.LVL5388:
	b	.L4710
.LVL5389:
.L4742:
.LBB15389:
.LBB15358:
	bl	checkPrio.part.296
.LVL5390:
.L4746:
.LBE15358:
.LBE15389:
.LBB15390:
.LBB15378:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5391:
.L4748:
	.align	2
.L4747:
	.word	.LANCHOR5-3188
.LBE15378:
.LBE15390:
	.cfi_endproc
.LFE834:
	.size	decodeTCBConfigure, .-decodeTCBConfigure
	.align	2
	.global	decodeSetPriority
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeSetPriority, %function
decodeSetPriority:
.LFB835:
	.loc 27 1002 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5392:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 27 1006 0
	subs	ip, r2, #0
	.loc 27 1002 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #64
	.cfi_def_cfa_offset 80
	.loc 27 1002 0
	add	r3, sp, #48
.LVL5393:
	stm	r3, {r0, r1}
	.loc 27 1006 0
	beq	.L4759
.LVL5394:
.LBB15391:
.LBB15392:
	.loc 43 31 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	ldr	r0, [r4]
.LVL5395:
.LBB15393:
.LBB15394:
	.loc 10 36 0
	ldr	r5, [r0, #8]
.LVL5396:
.LBE15394:
.LBE15393:
.LBE15392:
.LBE15391:
.LBB15395:
.LBB15396:
	.loc 27 38 0
	ldr	r3, [r0, #484]
.LVL5397:
	.loc 27 41 0
	cmp	r3, #255
	bhi	.L4760
	.loc 27 44 0
	cmp	r3, r5
	bcc	.L4761
.LVL5398:
.LBE15396:
.LBE15395:
	.loc 27 1021 0
	mov	r1, #2
	bl	setThreadState
.LVL5399:
	ldr	r0, [sp, #48]
.LVL5400:
.LBB15402:
.LBB15403:
	.loc 36 1469 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L4762
.LVL5401:
.LBE15403:
.LBE15402:
.LBB15405:
.LBB15406:
	.loc 36 926 0
	mov	ip, #0
.LBE15406:
.LBE15405:
	.loc 27 1022 0
	str	r5, [sp]
	mov	lr, #1
	bic	r0, r0, #15
	mov	r3, ip
	mov	r2, ip
	mov	r1, ip
	str	ip, [sp, #12]
.LBB15408:
.LBB15407:
	.loc 36 926 0
	str	ip, [sp, #56]
	str	ip, [sp, #60]
.LVL5402:
.LBE15407:
.LBE15408:
	.loc 27 1022 0
	ldrd	r4, [sp, #56]
	strd	r4, [sp, #4]
	strd	r4, [sp, #16]
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	strd	r4, [sp, #32]
	str	ip, [sp, #40]
	str	lr, [sp, #44]
	bl	invokeTCB_ThreadControl
.LVL5403:
.L4749:
	.loc 27 1029 0
	add	sp, sp, #64
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5404:
.L4761:
	.cfi_restore_state
	.loc 27 1016 0
	ldr	r2, [r0, #68]
.LVL5405:
	add	r1, r0, #528
.LBB15409:
.LBB15397:
	.loc 27 45 0
	movw	ip, #:lower16:current_syscall_error
.LVL5406:
	movt	ip, #:upper16:current_syscall_error
	.loc 27 46 0
	mov	lr, #0
	.loc 27 45 0
	mov	r6, #4
.LBE15397:
.LBE15409:
	.loc 27 1016 0
	strd	r0, [sp]
	movw	r0, #:lower16:.LC14
.LBB15410:
.LBB15398:
	.loc 27 47 0
	str	r3, [ip, #12]
.LVL5407:
.LBE15398:
.LBE15410:
	.loc 27 1016 0
	mov	r1, lr
	movw	r3, #1017
	str	r2, [sp, #8]
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4763
.LBB15411:
.LBB15399:
	.loc 27 46 0
	str	lr, [ip, #8]
	.loc 27 45 0
	str	r6, [ip, #24]
.LBE15399:
.LBE15411:
	.loc 27 1016 0
	bl	kprintf
.LVL5408:
	ldr	r3, [r4]
	movw	r0, #:lower16:.LC310
	mov	r1, r5
	movt	r0, #:upper16:.LC310
	ldr	r2, [r3, #484]
	bl	kprintf
.LVL5409:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5410:
.LBB15412:
.LBB15400:
	.loc 27 48 0
	mov	r0, #3
.LBE15400:
.LBE15412:
	.loc 27 1018 0
	b	.L4749
.LVL5411:
.L4759:
	.loc 27 1007 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, ip
	ldr	r2, .L4763
.LVL5412:
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	ip, [r3]
.LVL5413:
	movt	r0, #:upper16:.LC14
	movw	r3, #1007
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5414:
	movw	r0, #:lower16:.LC309
	movt	r0, #:upper16:.LC309
	bl	kprintf
.LVL5415:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5416:
	.loc 27 1008 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1009 0
	mov	r0, #3
	.loc 27 1008 0
	str	r2, [r3, #24]
	.loc 27 1009 0
	b	.L4749
.LVL5417:
.L4760:
.LBB15413:
.LBB15401:
	bl	checkPrio.part.296
.LVL5418:
.L4762:
.LBE15401:
.LBE15413:
.LBB15414:
.LBB15404:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5419:
.L4764:
	.align	2
.L4763:
	.word	.LANCHOR5-3168
.LBE15404:
.LBE15414:
	.cfi_endproc
.LFE835:
	.size	decodeSetPriority, .-decodeSetPriority
	.align	2
	.global	decodeSetMCPriority
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeSetMCPriority, %function
decodeSetMCPriority:
.LFB836:
	.loc 27 1033 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5420:
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 27 1037 0
	subs	ip, r2, #0
	.loc 27 1033 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	sub	sp, sp, #64
	.cfi_def_cfa_offset 80
	.loc 27 1033 0
	add	r3, sp, #48
.LVL5421:
	stm	r3, {r0, r1}
	.loc 27 1037 0
	beq	.L4775
.LVL5422:
.LBB15415:
.LBB15416:
	.loc 43 31 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	ldr	r0, [r4]
.LVL5423:
.LBB15417:
.LBB15418:
	.loc 10 36 0
	ldr	r5, [r0, #8]
.LVL5424:
.LBE15418:
.LBE15417:
.LBE15416:
.LBE15415:
.LBB15419:
.LBB15420:
	.loc 27 38 0
	ldr	r3, [r0, #484]
.LVL5425:
	.loc 27 41 0
	cmp	r3, #255
	bhi	.L4776
	.loc 27 44 0
	cmp	r3, r5
	bcc	.L4777
.LVL5426:
.LBE15420:
.LBE15419:
	.loc 27 1052 0
	mov	r1, #2
	bl	setThreadState
.LVL5427:
	ldr	r0, [sp, #48]
.LVL5428:
.LBB15426:
.LBB15427:
	.loc 36 1469 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L4778
.LVL5429:
.LBE15427:
.LBE15426:
.LBB15429:
.LBB15430:
	.loc 36 926 0
	mov	ip, #0
.LBE15430:
.LBE15429:
	.loc 27 1053 0
	mov	r3, r5
	mov	lr, #8
	bic	r0, r0, #15
	mov	r2, ip
	mov	r1, ip
	str	ip, [sp]
.LBB15432:
.LBB15431:
	.loc 36 926 0
	str	ip, [sp, #56]
	str	ip, [sp, #60]
.LVL5430:
.LBE15431:
.LBE15432:
	.loc 27 1053 0
	ldrd	r4, [sp, #56]
	strd	r4, [sp, #4]
	str	ip, [sp, #12]
	strd	r4, [sp, #16]
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	strd	r4, [sp, #32]
	str	ip, [sp, #40]
	str	lr, [sp, #44]
	bl	invokeTCB_ThreadControl
.LVL5431:
.L4765:
	.loc 27 1060 0
	add	sp, sp, #64
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5432:
.L4777:
	.cfi_restore_state
	.loc 27 1047 0
	ldr	r2, [r0, #68]
.LVL5433:
	add	r1, r0, #528
.LBB15433:
.LBB15421:
	.loc 27 45 0
	movw	ip, #:lower16:current_syscall_error
.LVL5434:
	movt	ip, #:upper16:current_syscall_error
	.loc 27 46 0
	mov	lr, #0
	.loc 27 45 0
	mov	r6, #4
.LBE15421:
.LBE15433:
	.loc 27 1047 0
	strd	r0, [sp]
	movw	r0, #:lower16:.LC14
.LBB15434:
.LBB15422:
	.loc 27 47 0
	str	r3, [ip, #12]
.LVL5435:
.LBE15422:
.LBE15434:
	.loc 27 1047 0
	mov	r1, lr
	movw	r3, #1048
	str	r2, [sp, #8]
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4779
.LBB15435:
.LBB15423:
	.loc 27 46 0
	str	lr, [ip, #8]
	.loc 27 45 0
	str	r6, [ip, #24]
.LBE15423:
.LBE15435:
	.loc 27 1047 0
	bl	kprintf
.LVL5436:
	ldr	r3, [r4]
	movw	r0, #:lower16:.LC312
	mov	r1, r5
	movt	r0, #:upper16:.LC312
	ldr	r2, [r3, #484]
	bl	kprintf
.LVL5437:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5438:
.LBB15436:
.LBB15424:
	.loc 27 48 0
	mov	r0, #3
.LBE15424:
.LBE15436:
	.loc 27 1049 0
	b	.L4765
.LVL5439:
.L4775:
	.loc 27 1038 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, ip
	ldr	r2, .L4779
.LVL5440:
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	ip, [r3]
.LVL5441:
	movt	r0, #:upper16:.LC14
	movw	r3, #1038
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5442:
	movw	r0, #:lower16:.LC311
	movt	r0, #:upper16:.LC311
	bl	kprintf
.LVL5443:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5444:
	.loc 27 1039 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1040 0
	mov	r0, #3
	.loc 27 1039 0
	str	r2, [r3, #24]
	.loc 27 1040 0
	b	.L4765
.LVL5445:
.L4776:
.LBB15437:
.LBB15425:
	bl	checkPrio.part.296
.LVL5446:
.L4778:
.LBE15425:
.LBE15437:
.LBB15438:
.LBB15428:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5447:
.L4780:
	.align	2
.L4779:
	.word	.LANCHOR5-3148
.LBE15428:
.LBE15438:
	.cfi_endproc
.LFE836:
	.size	decodeSetMCPriority, .-decodeSetMCPriority
	.align	2
	.global	decodeSetIPCBuffer
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeSetIPCBuffer, %function
decodeSetIPCBuffer:
.LFB837:
	.loc 27 1065 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5448:
	strd	r4, [sp, #-28]!
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	str	lr, [sp, #24]
	sub	sp, sp, #84
	.cfi_def_cfa_offset 112
	ldr	r4, [sp, #112]
.LVL5449:
	.loc 27 1065 0
	add	ip, sp, #48
	stm	ip, {r0, r1}
	.loc 27 1070 0
	cmp	r2, #0
	cmpne	r4, #0
	beq	.L4789
.LBB15439:
.LBB15440:
	.loc 43 31 0
	movw	r5, #:lower16:ksCurThread
	mov	r8, r3
.LVL5450:
.LBE15440:
.LBE15439:
	.loc 27 1078 0
	ldrd	r2, [r4]
.LVL5451:
.LBB15446:
.LBB15443:
	.loc 43 31 0
	movt	r5, #:upper16:ksCurThread
.LBE15443:
.LBE15446:
	.loc 27 1078 0
	add	r6, sp, #60
.LBB15447:
.LBB15444:
	.loc 43 31 0
	ldr	r0, [r5]
.LVL5452:
.LBE15444:
.LBE15447:
	.loc 27 1078 0
	strd	r2, [sp, #60]
.LBB15448:
.LBB15445:
.LBB15441:
.LBB15442:
	.loc 10 36 0
	ldr	r9, [r0, #8]
.LVL5453:
.LBE15442:
.LBE15441:
.LBE15445:
.LBE15448:
	.loc 27 1080 0
	cmp	r9, #0
	bne	.L4790
	.loc 27 1081 0
	mov	r4, r9
.LVL5454:
.L4784:
	.loc 27 1097 0
	mov	r1, #2
	bl	setThreadState
.LVL5455:
	ldr	r0, [sp, #48]
.LVL5456:
.LBB15449:
.LBB15450:
	.loc 36 1469 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L4791
.LVL5457:
.LBE15450:
.LBE15449:
.LBB15452:
.LBB15453:
	.loc 36 926 0
	mov	r3, #0
.LBE15453:
.LBE15452:
	.loc 27 1098 0
	ldrd	r6, [sp, #60]
	mov	ip, #2
	mov	r1, r8
	mov	r2, r3
	str	r3, [sp]
	bic	r0, r0, #15
.LBB15455:
.LBB15454:
	.loc 36 926 0
	str	r3, [sp, #68]
	str	r3, [sp, #72]
.LVL5458:
.LBE15454:
.LBE15455:
	.loc 27 1098 0
	str	r4, [sp, #40]
	ldrd	r4, [sp, #68]
.LVL5459:
	strd	r4, [sp, #4]
	str	r3, [sp, #12]
	strd	r4, [sp, #16]
	str	r3, [sp, #24]
	str	r9, [sp, #28]
	strd	r6, [sp, #32]
	str	ip, [sp, #44]
	bl	invokeTCB_ThreadControl
.LVL5460:
	b	.L4781
.LVL5461:
.L4789:
	.loc 27 1071 0
	movw	r3, #:lower16:ksCurThread
.LVL5462:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4792
.LVL5463:
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #1071
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5464:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5465:
	movw	r0, #:lower16:.LC313
	movt	r0, #:upper16:.LC313
	bl	kprintf
.LVL5466:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5467:
	.loc 27 1072 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1073 0
	mov	r0, #3
	.loc 27 1072 0
	str	r2, [r3, #24]
.L4781:
	.loc 27 1105 0
	add	sp, sp, #84
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	add	sp, sp, #24
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5468:
.L4790:
	.cfi_restore_state
.LBB15456:
	.loc 27 1086 0
	add	r0, sp, #68
	ldm	r6, {r2, r3}
.LVL5469:
	mov	r1, r4
	bl	deriveCap
.LVL5470:
	ldr	r0, [sp, #68]
.LVL5471:
	.loc 27 1087 0
	cmp	r0, #0
	bne	.L4781
	.loc 27 1090 0
	ldrd	r2, [sp, #72]
	.loc 27 1091 0
	mov	r0, r9
.LVL5472:
	.loc 27 1090 0
	strd	r2, [r6]
	.loc 27 1091 0
	ldm	r6, {r1, r2}
	bl	checkValidIPCBuffer
.LVL5473:
	.loc 27 1092 0
	cmp	r0, #0
	bne	.L4781
.LVL5474:
	ldr	r0, [r5]
.LVL5475:
	b	.L4784
.LVL5476:
.L4791:
.LBE15456:
.LBB15457:
.LBB15451:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5477:
.L4793:
	.align	2
.L4792:
	.word	.LANCHOR5-3128
.LBE15451:
.LBE15457:
	.cfi_endproc
.LFE837:
	.size	decodeSetIPCBuffer, .-decodeSetIPCBuffer
	.align	2
	.global	decodeSetSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeSetSpace, %function
decodeSetSpace:
.LFB838:
	.loc 27 1110 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5478:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	mov	r7, r3
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #116
	.cfi_def_cfa_offset 152
.LVL5479:
	ldrd	r4, [sp, #152]
.LVL5480:
	.loc 27 1110 0
	add	r3, sp, #64
.LVL5481:
	stm	r3, {r0, r1}
.LVL5482:
	.loc 27 1118 0
	cmp	r5, #0
	cmpne	r4, #0
	moveq	r3, #1
	movne	r3, #0
	cmp	r2, #2
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL5483:
	cmp	r2, #0
	bne	.L4814
.LBB15458:
.LBB15459:
	.loc 43 31 0
	movw	r6, #:lower16:ksCurThread
.LBE15459:
.LBE15458:
	.loc 27 1129 0
	ldrd	r2, [r4]
.LBB15467:
.LBB15464:
	.loc 43 31 0
	movt	r6, #:upper16:ksCurThread
	ldr	r8, [sp, #64]
.LVL5484:
	ldr	r9, [r6]
.LVL5485:
.LBE15464:
.LBE15467:
	.loc 27 1129 0
	ldr	r10, [r4]
	strd	r2, [sp, #76]
.LBB15468:
.LBB15469:
	.loc 36 1469 0
	and	r0, r8, #15
.LBE15469:
.LBE15468:
.LBB15473:
.LBB15465:
.LBB15460:
.LBB15461:
	.loc 10 36 0
	ldr	r3, [r9, #8]
.LBE15461:
.LBE15460:
.LBE15465:
.LBE15473:
.LBB15474:
.LBB15470:
	.loc 36 1469 0
	cmp	r0, #12
.LBE15470:
.LBE15474:
.LBB15475:
.LBB15466:
.LBB15463:
.LBB15462:
	.loc 10 36 0
	str	r3, [sp, #60]
.LVL5486:
.LBE15462:
.LBE15463:
.LBE15466:
.LBE15475:
.LBB15476:
.LBB15477:
.LBB15478:
.LBB15479:
	ldr	r3, [r9, #12]
	str	r3, [sp, #52]
.LVL5487:
.LBE15479:
.LBE15478:
.LBE15477:
.LBE15476:
.LBB15480:
.LBB15481:
.LBB15482:
.LBB15483:
	ldr	r3, [r9, #16]
	str	r3, [sp, #56]
.LVL5488:
.LBE15483:
.LBE15482:
.LBE15481:
.LBE15480:
	.loc 27 1131 0
	ldrd	r2, [r5]
	strd	r2, [sp, #84]
.LBB15484:
.LBB15471:
	.loc 36 1469 0
	bne	.L4815
.LBE15471:
.LBE15484:
	.loc 27 1134 0
	bic	fp, r8, #1020
	bic	fp, fp, #3
	.loc 27 1133 0
	mov	r0, fp
	bl	slotCapLongRunningDelete
.LVL5489:
	cmp	r0, #0
	bne	.L4798
	.loc 27 1135 0
	add	r0, fp, #16
	bl	slotCapLongRunningDelete
.LVL5490:
	.loc 27 1134 0
	cmp	r0, #0
	bne	.L4798
	.loc 27 1142 0
	ldr	r3, [sp, #52]
	cmp	r3, #0
	beq	.L4800
	.loc 27 1143 0
	ldr	ip, [sp, #80]
	mov	r2, r3
	mov	r1, r0
	mov	r3, r10
	add	r0, sp, #76
	str	ip, [sp]
	str	r10, [sp, #76]
	bl	updateCapData
.LVL5491:
	ldr	r10, [sp, #76]
.LVL5492:
.L4800:
	.loc 27 1146 0
	add	r3, sp, #76
	str	r10, [sp, #76]
	mov	r1, r4
	add	r0, sp, #100
	ldm	r3, {r2, r3}
	bl	deriveCap
.LVL5493:
	ldr	r9, [sp, #100]
.LVL5494:
	.loc 27 1147 0
	cmp	r9, #0
	bne	.L4794
	.loc 27 1146 0
	ldr	r10, [sp, #104]
.LVL5495:
	.loc 27 1150 0
	ldrd	r2, [sp, #104]
.LBB15485:
.LBB15486:
	.loc 36 903 0
	and	r1, r10, #14
	cmp	r1, #14
.LBE15486:
.LBE15485:
	.loc 27 1150 0
	strd	r2, [sp, #76]
.LVL5496:
.LBB15488:
.LBB15487:
	.loc 36 905 0
	uxtbeq	r3, r10
.LVL5497:
	.loc 36 904 0
	andne	r3, r10, #15
.LBE15487:
.LBE15488:
	.loc 27 1152 0
	cmp	r3, #10
	beq	.L4803
	.loc 27 1153 0
	ldr	ip, [r6]
	movw	r0, #:lower16:.LC14
	movw	r3, #1153
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4816
	mov	r1, #0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5498:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5499:
	movw	r0, #:lower16:.LC316
	movt	r0, #:upper16:.LC316
	b	.L4813
.LVL5500:
.L4814:
	.loc 27 1119 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4816
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #1119
	.loc 27 1121 0
	mov	r9, #3
	.loc 27 1119 0
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5501:
	movw	r0, #:lower16:.LC314
	movt	r0, #:upper16:.LC314
	bl	kprintf
.LVL5502:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5503:
	.loc 27 1120 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L4794:
	.loc 27 1182 0
	mov	r0, r9
	add	sp, sp, #116
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5504:
.L4798:
	.cfi_restore_state
	.loc 27 1137 0
	ldr	ip, [r9, #68]
	add	r2, r9, #528
	movw	r0, #:lower16:.LC14
	movt	r0, #:upper16:.LC14
	movw	r3, #1137
	str	r9, [sp]
	mov	r1, #0
	stmib	sp, {r2, ip}
	ldr	r2, .L4816
	bl	kprintf
.LVL5505:
	movw	r0, #:lower16:.LC315
	movt	r0, #:upper16:.LC315
.LVL5506:
.L4813:
	.loc 27 1169 0
	bl	kprintf
.LVL5507:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5508:
	.loc 27 1170 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 27 1171 0
	mov	r9, r2
	.loc 27 1170 0
	str	r2, [r3, #24]
	.loc 27 1171 0
	b	.L4794
.LVL5509:
.L4815:
.LBB15489:
.LBB15472:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5510:
.L4803:
.LBE15472:
.LBE15489:
	.loc 27 1158 0
	ldr	r3, [sp, #56]
	cmp	r3, #0
	addeq	fp, sp, #84
	beq	.L4804
	.loc 27 1159 0
	add	fp, sp, #84
	mov	r1, #0
	ldr	r2, [sp, #56]
	ldr	ip, [sp, #88]
	mov	r0, fp
	ldr	r3, [sp, #84]
	str	ip, [sp]
	bl	updateCapData
.LVL5511:
.L4804:
	.loc 27 1162 0
	add	r0, sp, #100
	ldm	fp, {r2, r3}
	mov	r1, r5
	bl	deriveCap
.LVL5512:
	ldr	r9, [sp, #100]
.LVL5513:
	.loc 27 1163 0
	cmp	r9, #0
	bne	.L4794
	.loc 27 1166 0
	ldrd	r2, [sp, #104]
	strd	r2, [sp, #84]
	.loc 27 1168 0
	ldm	fp, {r0, r1}
	bl	isValidVTableRoot
.LVL5514:
	cmp	r0, #0
	bne	.L4805
	.loc 27 1169 0
	ldr	ip, [r6]
	movw	r0, #:lower16:.LC14
	mov	r1, r9
	movt	r0, #:upper16:.LC14
	movw	r3, #1169
	ldr	r2, .L4816
	ldr	lr, [ip, #68]
	add	r4, ip, #528
.LVL5515:
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5516:
	movw	r0, #:lower16:.LC317
	movt	r0, #:upper16:.LC317
	b	.L4813
.LVL5517:
.L4805:
	.loc 27 1174 0
	ldr	r0, [r6]
	mov	r1, #2
	bl	setThreadState
.LVL5518:
	.loc 27 1175 0
	str	r10, [sp, #76]
	ldrd	r10, [fp]
.LVL5519:
	mov	r1, r7
	mov	ip, #4
	mov	r3, r9
	str	r9, [sp]
.LBB15490:
.LBB15491:
	.loc 36 926 0
	str	r9, [sp, #92]
.LBE15491:
.LBE15490:
	.loc 27 1175 0
	bic	r0, r8, #15
	ldr	r2, [sp, #60]
.LBB15493:
.LBB15492:
	.loc 36 926 0
	str	r9, [sp, #96]
.LVL5520:
.LBE15492:
.LBE15493:
	.loc 27 1175 0
	ldrd	r6, [sp, #92]
	str	r4, [sp, #12]
	strd	r10, [sp, #16]
	ldrd	r10, [sp, #76]
	str	r9, [sp, #40]
	strd	r10, [sp, #4]
	str	r5, [sp, #24]
	str	r9, [sp, #28]
	strd	r6, [sp, #32]
	str	ip, [sp, #44]
	bl	invokeTCB_ThreadControl
.LVL5521:
	mov	r9, r0
.LVL5522:
	b	.L4794
.L4817:
	.align	2
.L4816:
	.word	.LANCHOR5-3108
	.cfi_endproc
.LFE838:
	.size	decodeSetSpace, .-decodeSetSpace
	.align	2
	.global	invokeTCB_CopyRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_CopyRegisters, %function
invokeTCB_CopyRegisters:
.LFB845:
	.loc 27 1393 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5523:
	.loc 27 1394 0
	cmp	r2, #0
	.loc 27 1393 0
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r4, r0
	strd	r6, [sp, #8]
	mov	r5, r1
	ldr	r7, [sp, #24]
	str	r8, [sp, #16]
	ldr	r6, [sp, #28]
	mov	r8, r3
	str	lr, [sp, #20]
	.loc 27 1394 0
	bne	.L4844
	.loc 27 1398 0
	cmp	r8, #0
	bne	.L4845
.LVL5524:
.L4820:
	.loc 27 1402 0
	cmp	r7, #0
	beq	.L4821
	ldr	r2, .L4849
	.loc 27 1402 0 is_stmt 0 discriminator 3
	mov	r3, #17
	add	r1, r2, #36
	b	.L4823
.LVL5525:
.L4846:
	ldr	r3, [r2, #4]!
.L4823:
.LVL5526:
.LBB15494:
.LBB15495:
.LBB15496:
	.loc 10 36 0 is_stmt 1 discriminator 3
	ldr	r0, [r5, r3, lsl #2]
.LVL5527:
.LBE15496:
.LBE15495:
	.loc 27 1407 0 discriminator 3
	cmp	r2, r1
.LBB15497:
.LBB15498:
	.loc 10 30 0 discriminator 3
	str	r0, [r4, r3, lsl #2]
.LVL5528:
.LBE15498:
.LBE15497:
	.loc 27 1407 0 discriminator 3
	bne	.L4846
.LVL5529:
.LBB15499:
.LBB15500:
.LBB15501:
	.loc 10 30 0
	ldr	r3, [r4, #68]
	str	r3, [r4, #60]
.LVL5530:
.L4821:
.LBE15501:
.LBE15500:
.LBE15499:
.LBE15494:
	.loc 27 1416 0
	cmp	r6, #0
	beq	.L4824
	ldr	r2, .L4849+4
	.loc 27 1416 0 is_stmt 0 discriminator 3
	mov	r3, #2
	add	r0, r2, #24
	b	.L4825
.LVL5531:
.L4847:
	ldr	r3, [r2], #4
.L4825:
.LVL5532:
.LBB15502:
.LBB15503:
.LBB15504:
	.loc 10 36 0 is_stmt 1 discriminator 3
	ldr	r1, [r5, r3, lsl #2]
.LVL5533:
.LBE15504:
.LBE15503:
	.loc 27 1420 0 discriminator 3
	cmp	r2, r0
.LBB15505:
.LBB15506:
	.loc 10 30 0 discriminator 3
	str	r1, [r4, r3, lsl #2]
.LVL5534:
.LBE15506:
.LBE15505:
	.loc 27 1420 0 discriminator 3
	bne	.L4847
.L4824:
.LBE15502:
	.loc 27 1434 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L4848
.L4827:
	.loc 27 1441 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
.LVL5535:
	mov	r0, #0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldr	r8, [sp, #16]
	.cfi_restore 8
.LVL5536:
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5537:
.L4844:
	.cfi_restore_state
	.loc 27 1395 0
	mov	r0, r1
.LVL5538:
	bl	suspend
.LVL5539:
	.loc 27 1398 0
	cmp	r8, #0
	beq	.L4820
.L4845:
	.loc 27 1399 0
	mov	r0, r4
	bl	restart
.LVL5540:
	b	.L4820
.L4848:
	.loc 27 1437 0
	bl	rescheduleRequired
.LVL5541:
	b	.L4827
.L4850:
	.align	2
.L4849:
	.word	.LANCHOR5-3092
	.word	.LANCHOR5-3048
	.cfi_endproc
.LFE845:
	.size	invokeTCB_CopyRegisters, .-invokeTCB_CopyRegisters
	.align	2
	.global	decodeCopyRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeCopyRegisters, %function
decodeCopyRegisters:
.LFB831:
	.loc 27 754 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5542:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 27 760 0
	cmp	r2, #0
	cmpne	r3, #0
	.loc 27 754 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 27 754 0
	add	r2, sp, #24
.LVL5543:
	str	r3, [sp, #44]
	stmdb	r2, {r0, r1}
	.loc 27 760 0
	beq	.L4860
.LVL5544:
	.loc 27 770 0
	ldr	r3, [r3]
.LVL5545:
.LBB15507:
.LBB15508:
	.loc 43 31 0
	movw	r2, #:lower16:ksCurThread
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LVL5546:
.LBE15508:
.LBE15507:
.LBB15512:
.LBB15513:
	.loc 36 903 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL5547:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE15513:
.LBE15512:
	.loc 27 772 0
	cmp	r1, #12
	beq	.L4861
	.loc 27 775 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #775
	str	r2, [sp]
.LVL5548:
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4862
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL5549:
	movw	r0, #:lower16:.LC319
	movt	r0, #:upper16:.LC319
	bl	kprintf
.LVL5550:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5551:
	.loc 27 776 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 27 777 0
	mov	r1, #1
	str	r1, [r3, #4]
	.loc 27 776 0
	str	r2, [r3, #24]
	.loc 27 778 0
	b	.L4851
.LVL5552:
.L4860:
	.loc 27 761 0
	movw	r3, #:lower16:ksCurThread
.LVL5553:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4862
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #761
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5554:
	movw	r0, #:lower16:.LC318
	movt	r0, #:upper16:.LC318
	bl	kprintf
.LVL5555:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5556:
	.loc 27 762 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L4851:
	.loc 27 790 0
	mov	r0, #3
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5557:
.L4861:
	.cfi_restore_state
.LBB15514:
.LBB15515:
	.loc 36 1469 0
	and	r1, r3, #15
	cmp	r1, #12
	bne	.L4858
.LBE15515:
.LBE15514:
	.loc 27 781 0
	mov	r0, r2
	mov	r1, #2
.LBB15518:
.LBB15511:
.LBB15509:
.LBB15510:
	.loc 10 36 0
	ldr	r5, [r2, #8]
.LVL5558:
.LBE15510:
.LBE15509:
.LBE15511:
.LBE15518:
.LBB15519:
.LBB15516:
	.loc 36 1472 0
	bic	r4, r3, #15
.LVL5559:
.LBE15516:
.LBE15519:
	.loc 27 781 0
	bl	setThreadState
.LVL5560:
	ldr	r0, [sp, #16]
.LVL5561:
.LBB15520:
.LBB15521:
	.loc 36 1469 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L4858
.LVL5562:
.LBE15521:
.LBE15520:
	.loc 27 782 0
	and	r3, r5, #8
	and	r2, r5, #4
	mov	ip, #0
	mov	r1, r4
	strd	r2, [sp, #48]
	bic	r0, r0, #15
	and	r3, r5, #2
	and	r2, r5, #1
	str	ip, [sp, #56]
	.loc 27 790 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5563:
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 27 782 0
	b	invokeTCB_CopyRegisters
.LVL5564:
.L4858:
	.cfi_restore_state
.LBB15522:
.LBB15517:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5565:
.L4863:
	.align	2
.L4862:
	.word	.LANCHOR5-3024
.LBE15517:
.LBE15522:
	.cfi_endproc
.LFE831:
	.size	decodeCopyRegisters, .-decodeCopyRegisters
	.align	2
	.global	invokeTCB_ReadRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_ReadRegisters, %function
invokeTCB_ReadRegisters:
.LFB846:
	.loc 27 1452 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5566:
	.loc 27 1457 0
	movw	r3, #:lower16:ksCurThread
.LVL5567:
	.loc 27 1459 0
	cmp	r1, #0
	.loc 27 1452 0
	strd	r4, [sp, #-24]!
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 27 1457 0
	movt	r3, #:upper16:ksCurThread
	.loc 27 1452 0
	strd	r6, [sp, #8]
	mov	r4, r2
	mov	r5, r0
	str	r8, [sp, #16]
	.loc 27 1457 0
	ldr	r6, [r3]
.LVL5568:
	.loc 27 1452 0
	str	lr, [sp, #20]
	.loc 27 1452 0
	ldr	r7, [sp, #24]
	.loc 27 1459 0
	bne	.L4891
.LVL5569:
.L4865:
	.loc 27 1468 0
	cmp	r7, #0
	beq	.L4866
.LBB15538:
	.loc 27 1471 0
	mov	r1, r6
	mov	r0, #1
	bl	lookupIPCBuffer
.LVL5570:
.LBB15539:
.LBB15540:
	.loc 10 30 0
	mov	r3, #0
.LBE15540:
.LBE15539:
	.loc 27 1475 0
	cmp	r4, #0
.LBB15542:
.LBB15541:
	.loc 10 30 0
	str	r3, [r6]
.LVL5571:
.LBE15541:
.LBE15542:
	.loc 27 1475 0
	beq	.L4875
	ldr	lr, .L4894
	.loc 27 1475 0 is_stmt 0 discriminator 4
	mov	r1, #17
	mov	r2, #2
	ldr	ip, .L4894+4
.LVL5572:
.L4869:
.LBB15543:
.LBB15544:
	.loc 10 36 0 is_stmt 1 discriminator 4
	ldr	r1, [r5, r1, lsl #2]
.LVL5573:
.LBE15544:
.LBE15543:
	.loc 27 1475 0 discriminator 4
	add	r3, r3, #1
.LVL5574:
	cmp	r4, r3
.LBB15545:
.LBB15546:
	.loc 10 30 0 discriminator 4
	str	r1, [r6, r2, lsl #2]
.LVL5575:
.LBE15546:
.LBE15545:
	.loc 27 1475 0 discriminator 4
	beq	.L4867
	.loc 27 1475 0 is_stmt 0 discriminator 3
	cmp	r3, #4
	beq	.L4868
	ldr	r2, [lr, r3, lsl #2]
	ldr	r1, [ip, r3, lsl #2]
	b	.L4869
.L4868:
	.loc 27 1480 0 is_stmt 1
	cmp	r0, #0
	bne	.L4892
.LVL5576:
.L4871:
	.loc 27 1503 0
	add	r0, r0, r3
.LVL5577:
.LBB15547:
.LBB15548:
	.loc 10 30 0
	str	r0, [r6, #4]
.LVL5578:
.L4866:
.LBE15548:
.LBE15547:
.LBE15538:
	.loc 27 1505 0
	mov	r0, r6
	mov	r1, #1
	bl	setThreadState
.LVL5579:
	.loc 27 1508 0
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	mov	r0, #0
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL5580:
	ldr	r8, [sp, #16]
	.cfi_restore 8
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5581:
.L4891:
	.cfi_restore_state
	.loc 27 1460 0
	bl	suspend
.LVL5582:
	b	.L4865
.LVL5583:
.L4892:
	ldr	r1, .L4894+8
	add	r2, r0, #16
.LVL5584:
.L4870:
.LBB15553:
	.loc 27 1482 0 discriminator 2
	ldr	ip, [r1], #4
.LVL5585:
	add	r3, r3, #1
.LVL5586:
	.loc 27 1481 0 discriminator 2
	cmp	r4, r3
	movhi	lr, #1
	movls	lr, #0
	cmp	r3, #9
.LBB15549:
.LBB15550:
	.loc 10 36 0 discriminator 2
	ldr	ip, [r5, ip, lsl #2]
.LVL5587:
.LBE15550:
.LBE15549:
	.loc 27 1481 0 discriminator 2
	movhi	lr, #0
	cmp	lr, #0
	.loc 27 1482 0 discriminator 2
	str	ip, [r2, #4]!
.LVL5588:
	.loc 27 1481 0 discriminator 2
	bne	.L4870
.L4874:
.LVL5589:
	.loc 27 1495 0
	cmp	r4, #10
	movls	r0, #0
.LVL5590:
	bls	.L4871
	add	r1, r0, #40
	ldr	lr, .L4894+12
	sub	r4, r4, #10
.LVL5591:
	.loc 27 1495 0 is_stmt 0 discriminator 3
	mov	ip, #2
	mov	r0, #0
	b	.L4872
.LVL5592:
.L4893:
	.loc 27 1496 0 is_stmt 1 discriminator 2
	cmp	r4, r0
	beq	.L4871
	ldr	ip, [lr], #4
.LVL5593:
.L4872:
.LBB15551:
.LBB15552:
	.loc 10 36 0 discriminator 3
	ldr	ip, [r5, ip, lsl #2]
.LVL5594:
.LBE15552:
.LBE15551:
	.loc 27 1496 0 discriminator 3
	add	r0, r0, #1
.LVL5595:
	cmp	r0, #7
	.loc 27 1497 0 discriminator 3
	str	ip, [r1, #4]!
	.loc 27 1496 0 discriminator 3
	bne	.L4893
	b	.L4871
.LVL5596:
.L4875:
	.loc 27 1475 0
	mov	r3, r4
.LVL5597:
.L4867:
	.loc 27 1494 0
	cmp	r0, #0
	bne	.L4874
	b	.L4871
.L4895:
	.align	2
.L4894:
	.word	.LANCHOR3+1968
	.word	.LANCHOR5-3092
	.word	.LANCHOR5-3076
	.word	.LANCHOR5-3048
.LBE15553:
	.cfi_endproc
.LFE846:
	.size	invokeTCB_ReadRegisters, .-invokeTCB_ReadRegisters
	.align	2
	.global	decodeReadRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeReadRegisters, %function
decodeReadRegisters:
.LFB832:
	.loc 27 799 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5598:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 27 803 0
	cmp	r2, #1
	.loc 27 799 0
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
.LVL5599:
	.loc 27 799 0
	add	r2, sp, #24
.LVL5600:
	stmdb	r2, {r0, r1}
.LVL5601:
	.loc 27 803 0
	bls	.L4903
.LVL5602:
.LBB15554:
.LBB15555:
	.loc 43 31 0
	movw	r2, #:lower16:ksCurThread
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LVL5603:
.LBE15555:
.LBE15554:
.LBB15559:
.LBB15560:
.LBB15561:
.LBB15562:
	.loc 10 36 0
	ldr	r5, [r2, #12]
.LVL5604:
.LBE15562:
.LBE15561:
.LBE15560:
.LBE15559:
	.loc 27 812 0
	sub	r1, r5, #1
	cmp	r1, #16
	bhi	.L4904
	ldr	r4, [sp, #16]
.LVL5605:
	mov	r6, r3
.LBB15563:
.LBB15564:
	.loc 36 1469 0
	and	r3, r4, #15
.LVL5606:
	cmp	r3, #12
	bne	.L4905
	.loc 36 1472 0
	bic	r4, r4, #15
.LVL5607:
.LBE15564:
.LBE15563:
	.loc 27 825 0
	cmp	r4, r2
	beq	.L4906
.LBB15566:
.LBB15558:
.LBB15556:
.LBB15557:
	.loc 10 36 0
	ldr	r7, [r2, #8]
.LBE15557:
.LBE15556:
.LBE15558:
.LBE15566:
	.loc 27 831 0
	mov	r0, r2
	mov	r1, #2
	bl	setThreadState
.LVL5608:
	.loc 27 832 0
	mov	r2, r5
	mov	r0, r4
	str	r6, [sp, #48]
	mov	r3, #0
	and	r1, r7, #1
	.loc 27 836 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5609:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
.LVL5610:
	ldr	lr, [sp, #16]
	.cfi_restore 14
	add	sp, sp, #20
	.cfi_def_cfa_offset 0
.LVL5611:
	.loc 27 832 0
	b	invokeTCB_ReadRegisters
.LVL5612:
.L4904:
	.cfi_restore_state
	.loc 27 813 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #814
.LVL5613:
	str	r2, [sp]
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4907
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL5614:
	movw	r0, #:lower16:.LC321
	mov	r1, r5
	movt	r0, #:upper16:.LC321
	bl	kprintf
.LVL5615:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5616:
	.loc 27 815 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 27 817 0
	mov	r0, #1
	mov	r1, #17
	strd	r0, [r3, #8]
	.loc 27 815 0
	str	r2, [r3, #24]
.L4896:
	.loc 27 836 0
	mov	r0, #3
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5617:
.L4903:
	.cfi_restore_state
	.loc 27 804 0
	movw	r3, #:lower16:ksCurThread
.LVL5618:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4907
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	mov	r3, #804
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5619:
	movw	r0, #:lower16:.LC320
	movt	r0, #:upper16:.LC320
	bl	kprintf
.LVL5620:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5621:
	.loc 27 805 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 27 806 0
	b	.L4896
.LVL5622:
.L4906:
	.loc 27 826 0
	ldr	ip, [r4, #68]
	add	r2, r4, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #826
	mov	r1, #0
	str	r4, [sp]
	movt	r0, #:upper16:.LC14
	stmib	sp, {r2, ip}
	ldr	r2, .L4907
	bl	kprintf
.LVL5623:
	movw	r0, #:lower16:.LC322
	movt	r0, #:upper16:.LC322
	bl	kprintf
.LVL5624:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5625:
	.loc 27 827 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 27 828 0
	b	.L4896
.LVL5626:
.L4905:
.LBB15567:
.LBB15565:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5627:
.L4908:
	.align	2
.L4907:
	.word	.LANCHOR5-3004
.LBE15565:
.LBE15567:
	.cfi_endproc
.LFE832:
	.size	decodeReadRegisters, .-decodeReadRegisters
	.align	2
	.global	invokeTCB_WriteRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_WriteRegisters, %function
invokeTCB_WriteRegisters:
.LFB847:
	.loc 27 1513 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5628:
	cmp	r2, #17
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	mov	r4, r0
	movcs	r2, #17
.LVL5629:
	strd	r6, [sp, #8]
.LBB15596:
.LBB15597:
	.loc 42 48 0
	ldr	r7, [r0, #440]
.LVL5630:
.LBE15597:
.LBE15596:
	.loc 27 1513 0
	strd	r8, [sp, #16]
	.loc 27 1530 0
	cmp	r2, #0
	.loc 27 1513 0
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 27 1513 0
	ldr	r6, [sp, #48]
	str	r1, [sp, #4]
	.loc 27 1530 0
	beq	.L4910
.LBB15598:
.LBB15599:
	.loc 43 31 0 discriminator 3
	movw	r3, #:lower16:ksCurThread
.LVL5631:
	mov	r10, #0
	ldr	r5, .L4948
	movt	r3, #:upper16:ksCurThread
	movt	r10, 34959
	ldr	r8, [r3]
	add	lr, r6, #12
	mov	r1, #2
.LVL5632:
	mov	ip, #17
	mov	r3, #0
	b	.L4916
.LVL5633:
.L4911:
	.loc 43 34 0
	cmp	r6, #0
	beq	.L4917
.LBE15599:
.LBE15598:
.LBB15609:
.LBB15610:
	.loc 42 17 0
	cmp	ip, #16
.LBE15610:
.LBE15609:
.LBB15616:
.LBB15604:
	.loc 43 35 0
	ldr	r0, [lr]
.LVL5634:
.LBE15604:
.LBE15616:
.LBB15617:
.LBB15613:
	.loc 42 17 0
	beq	.L4945
.L4914:
.LVL5635:
.LBE15613:
.LBE15617:
	.loc 27 1530 0
	add	r3, r3, #1
.LVL5636:
.LBB15618:
.LBB15619:
	.loc 10 30 0
	str	r0, [r4, ip, lsl #2]
.LVL5637:
	add	r1, r1, #1
.LBE15619:
.LBE15618:
	.loc 27 1530 0
	cmp	r3, #9
	cmpls	r3, r2
	add	lr, lr, #4
	bcs	.L4910
	ldr	ip, [r5, #4]!
.LVL5638:
.L4916:
.LBB15620:
.LBB15605:
	.loc 43 30 0 discriminator 3
	cmp	r1, #3
	bhi	.L4911
.LVL5639:
.LBB15600:
.LBB15601:
	.loc 10 36 0
	ldr	r0, .L4948+4
.LBE15601:
.LBE15600:
.LBE15605:
.LBE15620:
.LBB15621:
.LBB15614:
	.loc 42 17 0
	cmp	ip, #16
.LBE15614:
.LBE15621:
.LBB15622:
.LBB15606:
.LBB15603:
.LBB15602:
	.loc 10 36 0
	ldr	r0, [r0, r1, lsl #2]
	ldr	r0, [r8, r0, lsl #2]
.LVL5640:
.LBE15602:
.LBE15603:
.LBE15606:
.LBE15622:
.LBB15623:
.LBB15615:
	.loc 42 17 0
	bne	.L4914
.L4945:
.LVL5641:
.LBB15611:
.LBB15612:
	.loc 42 20 0
	cmp	r7, #0
	beq	.L4915
	.loc 42 21 0
	and	fp, r0, #31
	mov	r9, #1
	ands	r9, r10, r9, lsl fp
	bne	.L4914
.L4915:
	.loc 42 38 0
	and	r0, r0, #-134217728
.LVL5642:
	orr	r0, r0, #80
	b	.L4914
.LVL5643:
.L4910:
	mov	r8, #0
	ldr	lr, .L4948+8
	add	r1, r6, #48
	movt	r8, 34959
	add	r5, r6, #76
.LBE15612:
.LBE15611:
.LBE15615:
.LBE15623:
.LBB15624:
.LBB15607:
	.loc 43 31 0
	mov	r3, #10
	mov	r9, #1
	b	.L4920
.LVL5644:
.L4918:
.LBE15607:
.LBE15624:
	.loc 27 1537 0
	cmp	r5, r1
.LBB15625:
.LBB15626:
	.loc 10 30 0
	str	r0, [r4, ip, lsl #2]
.LVL5645:
	add	r3, r3, #1
.LVL5646:
.LBE15626:
.LBE15625:
	.loc 27 1537 0
	beq	.L4924
.LVL5647:
.L4920:
	.loc 27 1537 0 is_stmt 0 discriminator 3
	cmp	r3, r2
	bcs	.L4924
.LBB15628:
.LBB15629:
	.loc 43 34 0 is_stmt 1 discriminator 4
	cmp	r6, #0
.LBE15629:
.LBE15628:
	.loc 27 1538 0 discriminator 4
	ldr	ip, [lr, #4]!
.LVL5648:
.LBB15632:
.LBB15630:
	.loc 43 34 0 discriminator 4
	beq	.L4917
.LBE15630:
.LBE15632:
.LBB15633:
.LBB15634:
	.loc 42 17 0
	cmp	ip, #16
.LBE15634:
.LBE15633:
.LBB15641:
.LBB15631:
	.loc 43 35 0
	ldr	r0, [r1, #4]!
.LVL5649:
.LBE15631:
.LBE15641:
.LBB15642:
.LBB15639:
	.loc 42 17 0
	bne	.L4918
.LVL5650:
.LBB15635:
.LBB15636:
	.loc 42 20 0
	cmp	r7, #0
	beq	.L4919
	.loc 42 21 0
	and	r10, r0, #31
	ands	r10, r8, r9, lsl r10
	bne	.L4918
.L4919:
	.loc 42 38 0
	and	r0, r0, #-134217728
.LVL5651:
.LBE15636:
.LBE15635:
.LBE15639:
.LBE15642:
	.loc 27 1537 0
	cmp	r5, r1
.LBB15643:
.LBB15640:
.LBB15638:
.LBB15637:
	.loc 42 38 0
	orr	r0, r0, #80
.LVL5652:
	add	r3, r3, #1
.LVL5653:
.LBE15637:
.LBE15638:
.LBE15640:
.LBE15643:
.LBB15644:
.LBB15627:
	.loc 10 30 0
	str	r0, [r4, ip, lsl #2]
.LVL5654:
.LBE15627:
.LBE15644:
	.loc 27 1537 0
	bne	.L4920
.LVL5655:
.L4924:
	.loc 27 1555 0
	ldr	r2, [sp, #4]
.LVL5656:
.LBB15645:
.LBB15646:
.LBB15647:
	.loc 10 30 0
	ldr	r3, [r4, #68]
.LBE15647:
.LBE15646:
.LBE15645:
	.loc 27 1555 0
	cmp	r2, #0
.LBB15650:
.LBB15649:
.LBB15648:
	.loc 10 30 0
	str	r3, [r4, #60]
.LVL5657:
.LBE15648:
.LBE15649:
.LBE15650:
	.loc 27 1555 0
	bne	.L4946
.L4922:
	.loc 27 1559 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L4947
.L4925:
	.loc 27 1566 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5658:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5659:
.L4946:
	.cfi_restore_state
	.loc 27 1556 0
	mov	r0, r4
	bl	restart
.LVL5660:
	b	.L4922
.L4947:
	.loc 27 1562 0
	bl	rescheduleRequired
.LVL5661:
	b	.L4925
.LVL5662:
.L4917:
.LBB15651:
.LBB15608:
	bl	getSyscallArg.part.206
.LVL5663:
.L4949:
	.align	2
.L4948:
	.word	.LANCHOR5-3092
	.word	.LANCHOR3+1968
	.word	.LANCHOR5-3056
.LBE15608:
.LBE15651:
	.cfi_endproc
.LFE847:
	.size	invokeTCB_WriteRegisters, .-invokeTCB_WriteRegisters
	.align	2
	.global	decodeWriteRegisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeWriteRegisters, %function
decodeWriteRegisters:
.LFB833:
	.loc 27 844 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5664:
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 27 849 0
	cmp	r2, #1
	.loc 27 844 0
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 27 844 0
	add	ip, sp, #24
	stmdb	ip, {r0, r1}
	.loc 27 849 0
	bls	.L4958
.LVL5665:
.LBB15652:
.LBB15653:
	.loc 43 31 0
	movw	r1, #:lower16:ksCurThread
.LBE15653:
.LBE15652:
	.loc 27 858 0
	sub	r4, r2, #2
.LBB15658:
.LBB15656:
	.loc 43 31 0
	movt	r1, #:upper16:ksCurThread
	ldr	r2, [r1]
.LVL5666:
.LBE15656:
.LBE15658:
.LBB15659:
.LBB15660:
.LBB15661:
.LBB15662:
	.loc 10 36 0
	ldr	r5, [r2, #12]
.LVL5667:
.LBE15662:
.LBE15661:
.LBE15660:
.LBE15659:
	.loc 27 858 0
	cmp	r4, r5
	bcc	.L4959
	ldr	r4, [sp, #16]
.LVL5668:
	mov	r6, r3
.LVL5669:
.LBB15663:
.LBB15664:
	.loc 36 1469 0
	and	r3, r4, #15
.LVL5670:
	cmp	r3, #12
	bne	.L4960
.LVL5671:
	.loc 36 1472 0
	bic	r4, r4, #15
.LVL5672:
.LBE15664:
.LBE15663:
	.loc 27 868 0
	cmp	r4, r2
	beq	.L4961
.LBB15666:
.LBB15657:
.LBB15654:
.LBB15655:
	.loc 10 36 0
	ldr	r7, [r2, #8]
.LBE15655:
.LBE15654:
.LBE15657:
.LBE15666:
	.loc 27 874 0
	mov	r0, r2
	mov	r1, #2
	bl	setThreadState
.LVL5673:
	.loc 27 875 0
	mov	r2, r5
	mov	r0, r4
	str	r6, [sp]
	mov	r3, #0
	and	r1, r7, #1
	bl	invokeTCB_WriteRegisters
.LVL5674:
.L4950:
	.loc 27 878 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5675:
.L4959:
	.cfi_restore_state
	.loc 27 859 0
	ldr	ip, [r2, #68]
	add	r1, r2, #528
	movw	r0, #:lower16:.LC14
	str	r2, [sp]
	movt	r0, #:upper16:.LC14
	ldr	r2, .L4962
	mov	r3, #860
.LVL5676:
	stmib	sp, {r1, ip}
	mov	r1, #0
	bl	kprintf
.LVL5677:
	movw	r0, #:lower16:.LC324
	mov	r2, r5
	mov	r1, r4
	movt	r0, #:upper16:.LC324
	bl	kprintf
.LVL5678:
.L4957:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5679:
	.loc 27 861 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 27 862 0
	mov	r0, #3
	.loc 27 861 0
	str	r2, [r3, #24]
	.loc 27 862 0
	b	.L4950
.LVL5680:
.L4958:
	.loc 27 850 0
	movw	r3, #:lower16:ksCurThread
.LVL5681:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4962
.LVL5682:
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #850
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5683:
	movw	r0, #:lower16:.LC323
	movt	r0, #:upper16:.LC323
	bl	kprintf
.LVL5684:
	b	.L4957
.LVL5685:
.L4961:
	.loc 27 869 0
	ldr	ip, [r4, #68]
	add	r2, r4, #528
	movw	r0, #:lower16:.LC14
	movw	r3, #869
	mov	r1, #0
	str	r4, [sp]
	movt	r0, #:upper16:.LC14
	stmib	sp, {r2, ip}
	ldr	r2, .L4962
	bl	kprintf
.LVL5686:
	movw	r0, #:lower16:.LC325
	movt	r0, #:upper16:.LC325
	bl	kprintf
.LVL5687:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5688:
	.loc 27 870 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 27 871 0
	mov	r0, r2
	.loc 27 870 0
	str	r2, [r3, #24]
	.loc 27 871 0
	b	.L4950
.LVL5689:
.L4960:
.LBB15667:
.LBB15665:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5690:
.L4963:
	.align	2
.L4962:
	.word	.LANCHOR5-2984
.LBE15665:
.LBE15667:
	.cfi_endproc
.LFE833:
	.size	decodeWriteRegisters, .-decodeWriteRegisters
	.align	2
	.global	invokeTCB_NotificationControl
	.syntax unified
	.arm
	.fpu softvfp
	.type	invokeTCB_NotificationControl, %function
invokeTCB_NotificationControl:
.LFB848:
	.loc 27 1570 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5691:
	.loc 27 1571 0
	cmp	r1, #0
	beq	.L4965
.LVL5692:
.LBB15684:
.LBB15685:
.LBB15686:
.LBB15687:
	.loc 36 162 0
	tst	r0, #15
	bne	.L4974
	.loc 36 163 0
	ldr	r3, [r1, #12]
	.loc 36 164 0
	bic	r2, r0, #15
	.loc 36 163 0
	and	r3, r3, #15
	.loc 36 164 0
	orr	r3, r3, r2
	str	r3, [r1, #12]
.LVL5693:
.LBE15687:
.LBE15686:
	.loc 35 253 0
	str	r1, [r0, #460]
.LVL5694:
.L4967:
.LBE15685:
.LBE15684:
	.loc 27 1578 0
	mov	r0, #0
.LVL5695:
	bx	lr
.LVL5696:
.L4965:
.LBB15691:
.LBB15692:
.LBB15693:
	.loc 35 242 0
	ldr	r3, [r0, #460]
.LVL5697:
	.loc 35 244 0
	cmp	r3, #0
	beq	.L4967
.LVL5698:
.LBB15694:
.LBB15695:
.LBB15696:
.LBB15697:
	.loc 36 163 0
	ldr	r2, [r3, #12]
	and	r2, r2, #15
	.loc 36 164 0
	str	r2, [r3, #12]
.LVL5699:
.LBE15697:
.LBE15696:
	.loc 35 224 0
	str	r1, [r0, #460]
.LBE15695:
.LBE15694:
.LBE15693:
.LBE15692:
.LBE15691:
	.loc 27 1578 0
	mov	r0, #0
.LVL5700:
	bx	lr
.LVL5701:
.L4974:
	.loc 27 1570 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
.LBB15698:
.LBB15690:
.LBB15689:
.LBB15688:
	bl	notification_ptr_set_ntfnBoundTCB.isra.272.part.273
.LVL5702:
.LBE15688:
.LBE15689:
.LBE15690:
.LBE15698:
	.cfi_endproc
.LFE848:
	.size	invokeTCB_NotificationControl, .-invokeTCB_NotificationControl
	.align	2
	.global	decodeBindNotification
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeBindNotification, %function
decodeBindNotification:
.LFB840:
	.loc 27 1231 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 27 1231 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 14, -12
	str	lr, [sp, #4]
	sub	sp, sp, #32
	.cfi_def_cfa_offset 48
	.loc 27 1231 0
	add	ip, sp, #36
	stmib	ip, {r2, r3}
	ldr	ip, [sp, #40]
.LVL5703:
	add	r3, sp, #32
	stmdb	r3, {r0, r1}
	.loc 27 1236 0
	cmp	ip, #0
	beq	.L4992
	ldr	r3, [sp, #24]
.LVL5704:
.LBB15699:
.LBB15700:
	.loc 36 1469 0
	and	r2, r3, #15
	cmp	r2, #12
	bne	.L4993
.LVL5705:
	.loc 36 1472 0
	bic	r3, r3, #15
.LVL5706:
.LBE15700:
.LBE15699:
	.loc 27 1244 0
	ldr	r2, [r3, #460]
	cmp	r2, #0
	beq	.L4979
	.loc 27 1245 0
	movw	r3, #:lower16:ksCurThread
.LVL5707:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4997
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL5708:
	mov	r1, #0
	movw	r3, #1245
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5709:
	movw	r0, #:lower16:.LC327
	movt	r0, #:upper16:.LC327
.L4990:
	.loc 27 1268 0
	bl	kprintf
.LVL5710:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5711:
	.loc 27 1269 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL5712:
.L4975:
	.loc 27 1276 0
	mov	r0, #3
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL5713:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL5714:
	bx	lr
.LVL5715:
.L4979:
	.cfi_restore_state
	.loc 27 1250 0
	ldr	r2, [ip]
.LVL5716:
.LBB15702:
.LBB15703:
	.loc 36 903 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r2
.LVL5717:
	.loc 36 904 0
	andne	r1, r2, #15
.LBE15703:
.LBE15702:
	.loc 27 1252 0
	cmp	r1, #6
	beq	.L4994
	.loc 27 1255 0
	movw	r3, #:lower16:ksCurThread
.LVL5718:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4997
.LVL5719:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL5720:
	mov	r1, #0
	movw	r3, #1255
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
.LVL5721:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5722:
	movw	r0, #:lower16:.LC328
	movt	r0, #:upper16:.LC328
	b	.L4990
.LVL5723:
.L4992:
	.loc 27 1237 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, ip
	ldr	r2, .L4997
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	ip, [r3]
.LVL5724:
	movt	r0, #:upper16:.LC14
	movw	r3, #1237
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5725:
	movw	r0, #:lower16:.LC326
	movt	r0, #:upper16:.LC326
	bl	kprintf
.LVL5726:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5727:
	.loc 27 1238 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 27 1239 0
	b	.L4975
.LVL5728:
.L4994:
.LBB15704:
.LBB15705:
	.loc 36 1277 0
	and	r1, r2, #15
	cmp	r1, #6
	bne	.L4995
.LVL5729:
.LBE15705:
.LBE15704:
.LBB15708:
.LBB15709:
	.loc 36 1228 0
	ldr	r1, [ip, #4]
	ubfx	r1, r1, #1, #1
.LBE15709:
.LBE15708:
	.loc 27 1260 0
	cmp	r1, #0
	beq	.L4996
.LBB15710:
.LBB15706:
	.loc 36 1280 0
	bic	r4, r2, #15
.LVL5730:
.LBE15706:
.LBE15710:
.LBB15711:
.LBB15712:
	.loc 36 189 0
	ldr	r2, [r4, #4]
.LVL5731:
.LBE15712:
.LBE15711:
	.loc 27 1266 0
	bics	r2, r2, #15
	bne	.L4986
.LVL5732:
.LBB15713:
.LBB15714:
	.loc 36 151 0
	ldr	r2, [r4, #12]
.LBE15714:
.LBE15713:
	.loc 27 1267 0
	bics	r2, r2, #15
	beq	.L4987
.LVL5733:
.L4986:
	.loc 27 1268 0
	movw	r3, #:lower16:ksCurThread
.LVL5734:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4997
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL5735:
	mov	r1, #0
	movw	r3, #1268
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
.LVL5736:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5737:
	movw	r0, #:lower16:.LC330
	movt	r0, #:upper16:.LC330
	b	.L4990
.LVL5738:
.L4996:
	.loc 27 1261 0
	movw	r3, #:lower16:ksCurThread
.LVL5739:
	movw	r0, #:lower16:.LC14
	ldr	r2, .L4997
.LVL5740:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC14
	ldr	ip, [r3]
.LVL5741:
	movw	r3, #1261
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
.LVL5742:
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5743:
	movw	r0, #:lower16:.LC329
	movt	r0, #:upper16:.LC329
	b	.L4990
.LVL5744:
.L4987:
	.loc 27 1274 0
	movw	r2, #:lower16:ksCurThread
	mov	r1, #2
	str	r3, [sp, #20]
	movt	r2, #:upper16:ksCurThread
	ldr	r0, [r2]
	bl	setThreadState
.LVL5745:
	.loc 27 1275 0
	ldr	r3, [sp, #20]
	mov	r1, r4
	mov	r0, r3
	.loc 27 1276 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldr	r4, [sp]
	.cfi_restore 4
	ldr	lr, [sp, #4]
	.cfi_restore 14
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL5746:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL5747:
	.loc 27 1275 0
	b	invokeTCB_NotificationControl
.LVL5748:
.L4993:
	.cfi_restore_state
.LBB15715:
.LBB15701:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5749:
.L4995:
.LBE15701:
.LBE15715:
.LBB15716:
.LBB15707:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL5750:
.L4998:
	.align	2
.L4997:
	.word	.LANCHOR5-2960
.LBE15707:
.LBE15716:
	.cfi_endproc
.LFE840:
	.size	decodeBindNotification, .-decodeBindNotification
	.align	2
	.global	decodeTCBInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeTCBInvocation, %function
decodeTCBInvocation:
.LFB830:
	.loc 27 664 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5751:
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 27 668 0
	sub	r0, r0, #2
.LVL5752:
	mov	r4, r2
	.loc 27 664 0
	str	lr, [sp, #8]
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
.LVL5753:
	.loc 27 664 0
	add	ip, sp, #16
.LVL5754:
	ldr	lr, [sp, #40]
	ldr	r5, [sp, #56]
	stm	ip, {r2, r3}
.LVL5755:
	ldr	r3, [sp, #60]
	.loc 27 668 0
	cmp	r0, #11
	ldrls	pc, [pc, r0, asl #2]
	b	.L5000
.L5002:
	.word	.L5001
	.word	.L5003
	.word	.L5004
	.word	.L5005
	.word	.L5006
	.word	.L5007
	.word	.L5008
	.word	.L5009
	.word	.L5010
	.word	.L5011
	.word	.L5012
	.word	.L5013
.L5013:
	.loc 27 709 0
	ldm	ip, {r0, r1}
.LVL5756:
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 709 0
	b	decodeUnbindNotification
.LVL5757:
.L5001:
	.cfi_restore_state
	.loc 27 671 0
	str	r3, [sp, #40]
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5758:
	mov	r3, r5
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 671 0
	b	decodeReadRegisters
.LVL5759:
.L5003:
	.cfi_restore_state
	.loc 27 674 0
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5760:
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 674 0
	b	decodeWriteRegisters
.LVL5761:
.L5004:
	.cfi_restore_state
	.loc 27 677 0
	ldrd	r4, [sp, #48]
	str	r3, [sp, #8]
	mov	r2, r1
	ldr	r3, [sp, #44]
	ldm	ip, {r0, r1}
.LVL5762:
	strd	r4, [sp]
	bl	decodeCopyRegisters
.LVL5763:
.L4999:
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5764:
.L5005:
	.cfi_restore_state
	.loc 27 691 0
	str	r3, [sp, #12]
	ldrd	r4, [sp, #44]
	mov	r3, lr
	ldr	lr, [sp, #52]
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5765:
	strd	r4, [sp]
	str	lr, [sp, #8]
	bl	decodeTCBConfigure
.LVL5766:
	b	.L4999
.LVL5767:
.L5006:
	.loc 27 694 0
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5768:
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 694 0
	b	decodeSetPriority
.LVL5769:
.L5007:
	.cfi_restore_state
	.loc 27 697 0
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5770:
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 697 0
	b	decodeSetMCPriority
.LVL5771:
.L5008:
	.cfi_restore_state
	.loc 27 700 0
	str	r3, [sp, #12]
	ldrd	r4, [sp, #44]
	mov	r3, lr
	ldr	lr, [sp, #52]
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5772:
	strd	r4, [sp]
	str	lr, [sp, #8]
	bl	decodeSetIPCBuffer
.LVL5773:
	b	.L4999
.LVL5774:
.L5009:
	.loc 27 703 0
	str	r3, [sp, #12]
	ldrd	r4, [sp, #44]
	mov	r3, lr
	ldr	lr, [sp, #52]
	mov	r2, r1
	ldm	ip, {r0, r1}
.LVL5775:
	strd	r4, [sp]
	str	lr, [sp, #8]
	bl	decodeSetSpace
.LVL5776:
	b	.L4999
.LVL5777:
.L5010:
	.loc 27 681 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, #2
.LVL5778:
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState
.LVL5779:
.LBB15717:
.LBB15718:
	.loc 36 1469 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L5016
.LVL5780:
.LBE15718:
.LBE15717:
.LBB15720:
.LBB15721:
	.loc 27 1300 0
	bic	r0, r4, #15
	bl	suspend
.LVL5781:
.LBE15721:
.LBE15720:
	.loc 27 682 0
	mov	r0, #0
	b	.L4999
.LVL5782:
.L5011:
	.loc 27 686 0
	movw	r3, #:lower16:ksCurThread
	mov	r1, #2
.LVL5783:
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState
.LVL5784:
.LBB15722:
.LBB15723:
	.loc 36 1469 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L5016
.LVL5785:
.LBE15723:
.LBE15722:
.LBB15724:
.LBB15725:
	.loc 27 1307 0
	bic	r0, r4, #15
	bl	restart
.LVL5786:
.LBE15725:
.LBE15724:
	.loc 27 687 0
	mov	r0, #0
	b	.L4999
.LVL5787:
.L5012:
	.loc 27 706 0
	add	r3, sp, #44
.LVL5788:
	ldm	ip, {r0, r1}
.LVL5789:
	ldm	r3, {r2, r3}
.LVL5790:
	ldr	lr, [sp, #52]
	str	lr, [sp, #40]
	.loc 27 742 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	lr, [sp, #8]
	.cfi_restore 14
	add	sp, sp, #12
	.cfi_def_cfa_offset 0
	.loc 27 706 0
	b	decodeBindNotification
.LVL5791:
.L5000:
	.loc 27 738 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC14
	ldr	r2, .L5018
	movt	r3, #:upper16:ksCurThread
	mov	r1, #0
.LVL5792:
	ldr	ip, [r3]
	movt	r0, #:upper16:.LC14
	movw	r3, #738
	ldr	lr, [ip, #68]
	add	r4, ip, #528
	str	ip, [sp]
	stmib	sp, {r4, lr}
	bl	kprintf
.LVL5793:
	movw	r0, #:lower16:.LC331
	movt	r0, #:upper16:.LC331
	bl	kprintf
.LVL5794:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL5795:
	.loc 27 739 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 27 740 0
	mov	r0, r2
	.loc 27 739 0
	str	r2, [r3, #24]
	.loc 27 740 0
	b	.L4999
.L5016:
	.cfi_restore_state
.LBB15726:
.LBB15719:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL5796:
.L5019:
	.align	2
.L5018:
	.word	.LANCHOR5-2936
.LBE15719:
.LBE15726:
	.cfi_endproc
.LFE830:
	.size	decodeTCBInvocation, .-decodeTCBInvocation
	.align	2
	.global	setThreadName
	.syntax unified
	.arm
	.fpu softvfp
	.type	setThreadName, %function
setThreadName:
.LFB849:
	.loc 27 1583 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5797:
.LBB15727:
.LBB15728:
	.loc 63 27 0
	ldrb	r3, [r1]	@ zero_extendqisi2
.LBE15728:
.LBE15727:
	.loc 27 1584 0
	add	ip, r0, #528
.LVL5798:
.LBB15730:
.LBB15729:
	.loc 63 27 0
	cmp	r3, #0
	.loc 63 28 0
	strbne	r3, [r0, #528]
.LVL5799:
	movne	r0, ip
.LVL5800:
	movne	r3, #1
	.loc 63 27 0
	bne	.L5024
	b	.L5022
.LVL5801:
.L5023:
	add	r3, r3, #1
.LVL5802:
	.loc 63 28 0
	strb	r2, [r0, #1]!
.LVL5803:
	.loc 63 27 0
	cmp	r3, #239
	beq	.L5022
.LVL5804:
.L5024:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L5023
.LVL5805:
.L5022:
	.loc 63 30 0
	mov	r2, #0
	strb	r2, [ip, r3]
.LVL5806:
.LBE15729:
.LBE15730:
	.loc 27 1585 0
	bx	lr
	.cfi_endproc
.LFE849:
	.size	setThreadName, .-setThreadName
	.align	2
	.global	setMRs_syscall_error
	.syntax unified
	.arm
	.fpu softvfp
	.type	setMRs_syscall_error, %function
setMRs_syscall_error:
.LFB850:
	.loc 27 1590 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5807:
	.loc 27 1591 0
	movw	r2, #:lower16:current_syscall_error
	.loc 27 1590 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 27 1591 0
	movt	r2, #:upper16:current_syscall_error
	ldr	r3, [r2, #24]
	.loc 27 1590 0
	str	lr, [sp, #4]
	.loc 27 1591 0
	sub	r3, r3, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L5031
.L5033:
	.word	.L5032
	.word	.L5034
	.word	.L5042
	.word	.L5036
	.word	.L5042
	.word	.L5037
	.word	.L5042
	.word	.L5042
	.word	.L5042
	.word	.L5038
.L5042:
	.loc 27 1601 0
	mov	r3, #0
.L5030:
	.loc 27 1628 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	mov	r0, r3
.LVL5808:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5809:
.L5036:
	.cfi_restore_state
.LBB15842:
.LBB15843:
.LBB15844:
	.loc 10 30 0
	ldr	r1, [r2, #8]
.LVL5810:
.LBE15844:
.LBE15843:
.LBE15842:
	.loc 27 1606 0
	mov	r3, #2
.LBB15847:
.LBB15848:
.LBB15849:
	.loc 10 30 0
	ldr	r2, [r2, #12]
.LBE15849:
.LBE15848:
.LBE15847:
	.loc 27 1628 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB15852:
.LBB15846:
.LBB15845:
	.loc 10 30 0
	str	r1, [r0, #8]
.LVL5811:
.LBE15845:
.LBE15846:
.LBE15852:
.LBB15853:
.LBB15851:
.LBB15850:
	str	r2, [r0, #12]
.LVL5812:
.LBE15850:
.LBE15851:
.LBE15853:
	.loc 27 1628 0
	mov	r0, r3
.LVL5813:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5814:
.L5038:
	.cfi_restore_state
.LBB15854:
.LBB15855:
.LBB15856:
	.loc 10 30 0
	ldr	r2, [r2, #16]
.LBE15856:
.LBE15855:
.LBE15854:
	.loc 27 1623 0
	mov	r3, #1
	.loc 27 1628 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB15859:
.LBB15858:
.LBB15857:
	.loc 10 30 0
	str	r2, [r0, #8]
.LVL5815:
.LBE15857:
.LBE15858:
.LBE15859:
	.loc 27 1628 0
	mov	r0, r3
.LVL5816:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5817:
.L5037:
	.cfi_restore_state
.LBB15860:
.LBB15861:
	.loc 27 1613 0
	ldr	r2, [r2, #20]
	movw	r3, #:lower16:current_lookup_fault
	movt	r3, #:upper16:current_lookup_fault
	ldm	r3, {ip, lr}
	adds	r2, r2, #0
	movne	r2, #1
.LBB15862:
.LBB15863:
.LBB15864:
.LBB15865:
	.loc 36 530 0
	and	r3, ip, #3
.LBE15865:
.LBE15864:
.LBE15863:
.LBE15862:
.LBB15912:
.LBB15913:
.LBB15914:
	.loc 10 30 0
	str	r2, [r0, #8]
.LVL5818:
.LBE15914:
.LBE15913:
.LBE15912:
.LBB15915:
.LBB15910:
	.loc 37 49 0
	cmp	r3, #2
	.loc 37 37 0
	add	r2, r3, #1
.LVL5819:
.LBB15866:
.LBB15867:
.LBB15868:
	.loc 10 30 0
	str	r2, [r0, #12]
.LVL5820:
.LBE15868:
.LBE15867:
.LBE15866:
	.loc 37 49 0
	beq	.L5039
	cmp	r3, #3
	beq	.L5040
.LVL5821:
	cmp	r3, #1
.LBB15869:
.LBB15870:
	.loc 36 569 0
	ubfxeq	ip, ip, #2, #6
.LVL5822:
.LBE15870:
.LBE15869:
.LBB15871:
.LBB15872:
	.loc 54 46 0
	moveq	r3, #3
.LBB15873:
.LBB15874:
	.loc 10 30 0
	streq	ip, [r0, #16]
.LBE15874:
.LBE15873:
.LBE15872:
.LBE15871:
	.loc 37 49 0
	.loc 37 51 0
	movne	r3, #2
	b	.L5030
.LVL5823:
.L5032:
.LBE15910:
.LBE15915:
.LBE15861:
.LBE15860:
.LBB15918:
.LBB15919:
.LBB15920:
	.loc 10 30 0
	ldr	r2, [r2]
.LBE15920:
.LBE15919:
.LBE15918:
	.loc 27 1593 0
	mov	r3, #1
	.loc 27 1628 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB15923:
.LBB15922:
.LBB15921:
	.loc 10 30 0
	str	r2, [r0, #8]
.LVL5824:
.LBE15921:
.LBE15922:
.LBE15923:
	.loc 27 1628 0
	mov	r0, r3
.LVL5825:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5826:
.L5034:
	.cfi_restore_state
.LBB15924:
.LBB15925:
.LBB15926:
	.loc 10 30 0
	ldr	r2, [r2, #4]
.LBE15926:
.LBE15925:
.LBE15924:
	.loc 27 1597 0
	mov	r3, #1
	.loc 27 1628 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
.LBB15929:
.LBB15928:
.LBB15927:
	.loc 10 30 0
	str	r2, [r0, #8]
.LVL5827:
.LBE15927:
.LBE15928:
.LBE15929:
	.loc 27 1628 0
	mov	r0, r3
.LVL5828:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5829:
.L5031:
	.loc 27 1626 0
	movw	r1, #:lower16:.LC117
.LVL5830:
	movw	r0, #:lower16:.LC332
.LVL5831:
	ldr	r3, .L5047
	movt	r1, #:upper16:.LC117
	movt	r0, #:upper16:.LC332
	movw	r2, #1626
	bl	_fail
.LVL5832:
.L5040:
	.cfi_restore_state
.LBB15930:
.LBB15917:
.LBB15916:
.LBB15911:
.LBB15875:
.LBB15876:
	.loc 36 662 0
	ubfx	r3, ip, #8, #6
.LBE15876:
.LBE15875:
.LBB15877:
.LBB15878:
.LBB15879:
	.loc 54 38 0
	cmp	r1, #0
.LBE15879:
.LBE15878:
.LBE15877:
.LBB15886:
.LBB15887:
.LBB15888:
	.loc 10 30 0
	str	r3, [r0, #16]
.LVL5833:
.LBE15888:
.LBE15887:
.LBE15886:
.LBB15889:
.LBB15883:
.LBB15880:
	.loc 54 42 0
	moveq	r3, #4
.LBE15880:
.LBE15883:
.LBE15889:
.LBB15890:
.LBB15891:
.LBB15892:
	.loc 10 30 0
	str	lr, [r0, #20]
.LBE15892:
.LBE15891:
.LBE15890:
.LBB15893:
.LBB15884:
.LBB15881:
	.loc 54 38 0
	beq	.L5030
.LBE15881:
.LBE15884:
.LBE15893:
.LBB15894:
.LBB15895:
	.loc 36 676 0
	ubfx	ip, ip, #2, #6
.LVL5834:
.LBE15895:
.LBE15894:
.LBB15896:
.LBB15885:
.LBB15882:
	.loc 54 40 0
	mov	r3, #5
	.loc 54 39 0
	str	ip, [r1, #20]
	b	.L5030
.LVL5835:
.L5039:
.LBE15882:
.LBE15885:
.LBE15896:
.LBB15897:
.LBB15898:
	.loc 36 615 0
	ubfx	r2, ip, #2, #6
.LBE15898:
.LBE15897:
.LBB15899:
.LBB15900:
	.loc 36 601 0
	ubfx	ip, ip, #8, #6
.LVL5836:
.LBE15900:
.LBE15899:
.LBB15901:
.LBB15902:
	.loc 54 46 0
	mov	r3, #4
.LBE15902:
.LBE15901:
.LBB15906:
.LBB15907:
.LBB15908:
	.loc 10 30 0
	str	r2, [r0, #16]
.LVL5837:
.LBE15908:
.LBE15907:
.LBE15906:
.LBB15909:
.LBB15905:
.LBB15903:
.LBB15904:
	str	ip, [r0, #20]
.LVL5838:
	b	.L5030
.L5048:
	.align	2
.L5047:
	.word	.LANCHOR5-2916
.LBE15904:
.LBE15903:
.LBE15905:
.LBE15909:
.LBE15911:
.LBE15916:
.LBE15917:
.LBE15930:
	.cfi_endproc
.LFE850:
	.size	setMRs_syscall_error, .-setMRs_syscall_error
	.align	2
	.global	replyFromKernel_error
	.syntax unified
	.arm
	.fpu softvfp
	.type	replyFromKernel_error, %function
replyFromKernel_error:
.LFB772:
	.loc 56 204 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5839:
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 56 208 0
	mov	r0, #1
.LVL5840:
	mov	r1, r4
	.loc 56 204 0
	str	lr, [sp, #4]
	.loc 56 208 0
	bl	lookupIPCBuffer
.LVL5841:
.LBB15937:
.LBB15938:
	.loc 10 30 0
	mov	r3, #0
.LBE15938:
.LBE15937:
	.loc 56 210 0
	mov	r1, r0
	mov	r0, r4
.LVL5842:
.LBB15940:
.LBB15939:
	.loc 10 30 0
	str	r3, [r4]
.LVL5843:
.LBE15939:
.LBE15940:
	.loc 56 210 0
	bl	setMRs_syscall_error
.LVL5844:
	.loc 56 212 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	ldr	r2, [r3, #24]
.LVL5845:
.LBB15941:
.LBB15942:
	.loc 30 45 0
	lsr	r3, r2, #20
	lsl	r3, r3, #20
	cmp	r3, #0
	bne	.L5053
	.loc 30 48 0
	bics	r3, r0, #127
	bne	.L5054
.LVL5846:
	.loc 30 54 0
	orr	r0, r0, r2, lsl #12
.LVL5847:
.LBE15942:
.LBE15941:
.LBB15944:
.LBB15945:
	.loc 10 30 0
	str	r0, [r4, #4]
.LVL5848:
.LBE15945:
.LBE15944:
	.loc 56 213 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL5849:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5850:
.L5053:
	.cfi_restore_state
.LBB15946:
.LBB15943:
	bl	seL4_MessageInfo_new.part.205
.LVL5851:
.L5054:
	.loc 30 48 0
	movw	r1, #:lower16:.LC76
	movw	r0, #:lower16:.LC128
.LVL5852:
	ldr	r3, .L5055
	movt	r1, #:upper16:.LC76
	movt	r0, #:upper16:.LC128
	mov	r2, #48
.LVL5853:
	bl	_assert_fail
.LVL5854:
.L5056:
	.align	2
.L5055:
	.word	.LANCHOR3+2292
.LBE15943:
.LBE15946:
	.cfi_endproc
.LFE772:
	.size	replyFromKernel_error, .-replyFromKernel_error
	.align	2
	.global	putDebugChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	putDebugChar, %function
putDebugChar:
.LFB855:
	.loc 4 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5855:
	.loc 4 44 0
	mvn	r2, #1040384
.L5058:
	.loc 4 44 0 is_stmt 0 discriminator 1
	ldr	r3, [r2, #-4079]
	tst	r3, #2
	beq	.L5058
	.loc 4 45 0 is_stmt 1
	str	r0, [r2, #-4063]
	.loc 4 46 0
	bx	lr
	.cfi_endproc
.LFE855:
	.size	putDebugChar, .-putDebugChar
	.align	2
	.global	putConsoleChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	putConsoleChar, %function
putConsoleChar:
.LFB1186:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	putDebugChar
	.cfi_endproc
.LFE1186:
	.size	putConsoleChar, .-putConsoleChar
	.align	2
	.global	getDebugChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	getDebugChar, %function
getDebugChar:
.LFB856:
	.loc 4 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 53 0
	mvn	r3, #1040384
	ldr	r2, [r3, #-4079]
	tst	r2, #1
	.loc 4 54 0
	ldrne	r0, [r3, #-4059]
	moveq	r0, #255
	.loc 4 58 0
	uxtb	r0, r0
	bx	lr
	.cfi_endproc
.LFE856:
	.size	getDebugChar, .-getDebugChar
	.align	2
	.global	resetTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetTimer, %function
resetTimer:
.LFB859:
	.file 64 "/home/sel4/work/work2/kernel/src/plat/exynos5/../exynos_common/mct.c"
	.loc 64 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5856:
.LBB15947:
.LBB15948:
	.loc 62 47 0
	movw	r3, #43392
	movt	r3, 3
	.syntax divided
@ 47 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 0
@ 0 "" 2
.LVL5857:
	.arm
	.syntax unified
.LBE15948:
.LBB15949:
	.loc 62 48 0
	mov	r3, #1
	.syntax divided
@ 48 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBE15949:
.LBE15947:
	.loc 64 133 0
	bx	lr
	.cfi_endproc
.LFE859:
	.size	resetTimer, .-resetTimer
	.section	.boot.text
	.align	2
	.global	initTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTimer, %function
initTimer:
.LFB860:
	.loc 64 139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 64 141 0
	movw	r3, #8447
	.loc 64 147 0
	mov	r1, #256
	.loc 64 141 0
	movt	r3, 65520
	ldr	r0, [r3, #333]
	.loc 64 148 0
	mov	r2, r3
	.loc 64 141 0
	str	r0, [r3, #333]
	.loc 64 142 0
	ldr	r0, [r3, #13]
	str	r0, [r3, #13]
	.loc 64 147 0
	str	r1, [r3, #321]
.L5067:
	.loc 64 148 0 discriminator 1
	ldr	r3, [r2, #333]
	cmp	r3, #65536
	bne	.L5067
	.loc 64 149 0
	str	r3, [r2, #333]
.LBB15956:
.LBB15957:
	.loc 62 57 0
	.syntax divided
@ 57 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mrc   p15, 0,  r1, c14,  c0, 0
@ 0 "" 2
.LVL5858:
	.loc 62 58 0
	.arm
	.syntax unified
	mov	r2, #13824
	movt	r2, 366
	cmp	r1, #0
	cmpne	r1, r2
	bne	.L5073
.LVL5859:
.LBE15957:
.LBB15958:
.LBB15959:
	.loc 62 47 0
	movw	r3, #43392
	movt	r3, 3
	.syntax divided
@ 47 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 0
@ 0 "" 2
.LVL5860:
	.arm
	.syntax unified
.LBE15959:
.LBB15960:
	.loc 62 48 0
	mov	r3, #1
	.syntax divided
@ 48 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/timer.h" 1
	mcr   p15, 4,  r3, c14,  c2, 1
@ 0 "" 2
.LVL5861:
	.arm
	.syntax unified
	bx	lr
.LVL5862:
.L5073:
.LBE15960:
.LBE15958:
.LBB15961:
	.loc 62 59 0
	movw	r0, #:lower16:.LC333
.LBE15961:
.LBE15956:
	.loc 64 139 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB15964:
.LBB15962:
	.loc 62 59 0
	movt	r0, #:upper16:.LC333
.LBE15962:
.LBE15964:
	.loc 64 139 0
	str	lr, [sp, #4]
.LBB15965:
.LBB15963:
	.loc 62 59 0
	bl	kprintf
.LVL5863:
	.loc 62 61 0
	bl	halt
.LVL5864:
.LBE15963:
.LBE15965:
	.cfi_endproc
.LFE860:
	.size	initTimer, .-initTimer
	.text
	.align	2
	.global	initL2Cache
	.syntax unified
	.arm
	.fpu softvfp
	.type	initL2Cache, %function
initL2Cache:
.LFB864:
	.file 65 "/home/sel4/work/work2/kernel/src/plat/exynos5/machine/l2cache.c"
	.loc 65 12 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 65 13 0
	bx	lr
	.cfi_endproc
.LFE864:
	.size	initL2Cache, .-initL2Cache
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.fpu softvfp
	.type	strnlen, %function
strnlen:
.LFB866:
	.loc 63 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5865:
	.loc 63 20 0
	cmp	r1, #0
	beq	.L5078
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5079
	mov	r3, r0
	mov	r0, #0
.LVL5866:
	b	.L5077
.LVL5867:
.L5082:
	.loc 63 20 0 is_stmt 0 discriminator 3
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L5075
.LVL5868:
.L5077:
	.loc 63 20 0 discriminator 4
	add	r0, r0, #1
.LVL5869:
	cmp	r1, r0
	bne	.L5082
.LVL5870:
.L5075:
	.loc 63 22 0 is_stmt 1
	bx	lr
.LVL5871:
.L5078:
	.loc 63 20 0
	mov	r0, r1
.LVL5872:
	b	.L5075
.LVL5873:
.L5079:
	mov	r0, r3
.LVL5874:
	.loc 63 21 0
	b	.L5075
	.cfi_endproc
.LFE866:
	.size	strnlen, .-strnlen
	.align	2
	.global	strlcpy
	.syntax unified
	.arm
	.fpu softvfp
	.type	strlcpy, %function
strlcpy:
.LFB867:
	.loc 63 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5875:
	.loc 63 27 0
	cmp	r2, #1
	.loc 63 25 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	str	lr, [sp, #4]
	.loc 63 27 0
	bls	.L5086
	ldrb	r0, [r1]	@ zero_extendqisi2
.LVL5876:
	cmp	r0, #0
	beq	.L5087
	sub	r2, r2, #1
.LVL5877:
	sub	ip, r4, #1
	mov	r3, #1
	b	.L5085
.LVL5878:
.L5091:
	.loc 63 27 0 is_stmt 0 discriminator 3
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L5084
	mov	r3, lr
.LVL5879:
.L5085:
	.loc 63 27 0 discriminator 4
	cmp	r3, r2
	.loc 63 28 0 is_stmt 1 discriminator 4
	strb	r0, [ip, #1]!
.LVL5880:
	add	lr, r3, #1
	.loc 63 27 0 discriminator 4
	bne	.L5091
.LVL5881:
.L5084:
	.loc 63 30 0
	mov	r2, #0
	.loc 63 32 0
	mov	r0, r3
	.loc 63 30 0
	strb	r2, [r4, r3]
	.loc 63 32 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
.LVL5882:
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5883:
.L5086:
	.cfi_restore_state
	.loc 63 27 0
	mov	r3, #0
	b	.L5084
.LVL5884:
.L5087:
	mov	r3, r0
	b	.L5084
	.cfi_endproc
.LFE867:
	.size	strlcpy, .-strlcpy
	.align	2
	.global	strlcat
	.syntax unified
	.arm
	.fpu softvfp
	.type	strlcat, %function
strlcat:
.LFB868:
	.loc 63 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5885:
	.loc 63 38 0
	cmp	r2, #0
.LVL5886:
	beq	.L5099
	.loc 63 35 0
	strd	r4, [sp, #-12]!
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	str	lr, [sp, #8]
	.loc 63 38 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5100
	add	r4, r0, #1
	.loc 63 38 0 is_stmt 0 discriminator 4
	mov	lr, #0
	b	.L5095
.LVL5887:
.L5113:
	.loc 63 38 0 discriminator 3
	ldrb	r5, [ip]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L5112
	mov	lr, r3
.LVL5888:
.L5095:
	.loc 63 38 0 discriminator 4
	add	r3, lr, #1
.LVL5889:
	mov	ip, r4
	cmp	r2, r3
	add	r4, r4, #1
	bne	.L5113
.LVL5890:
.L5092:
	.loc 63 48 0 is_stmt 1
	ldrd	r4, [sp]
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	add	sp, sp, #8
	.cfi_def_cfa_offset 4
	mov	r0, r3
.LVL5891:
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5892:
.L5112:
	.cfi_restore_state
	add	lr, lr, #2
.LVL5893:
.L5094:
	.loc 63 42 0 discriminator 1
	cmp	lr, r2
	bcs	.L5096
	.loc 63 42 0 is_stmt 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L5096
	.loc 63 42 0 discriminator 3
	mov	ip, r3
	add	r1, r1, #1
.LVL5894:
	sub	r2, r2, #1
.LVL5895:
	mov	r3, lr
.LVL5896:
	b	.L5098
.LVL5897:
.L5114:
	.loc 63 42 0 discriminator 2
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L5111
	mov	r3, lr
.LVL5898:
.L5098:
	.loc 63 42 0 discriminator 3
	cmp	r3, r2
	.loc 63 43 0 is_stmt 1 discriminator 3
	strb	r4, [r0, ip]
.LVL5899:
	add	lr, r3, #1
	mov	ip, r3
	.loc 63 42 0 discriminator 3
	bne	.L5114
.L5111:
	add	ip, r0, r3
.LVL5900:
.L5096:
	.loc 63 45 0
	mov	r2, #0
	strb	r2, [ip]
	b	.L5092
.LVL5901:
.L5099:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 63 48 0
	mov	r0, r2
.LVL5902:
	bx	lr
.LVL5903:
.L5100:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 63 38 0
	mov	ip, r0
	mov	lr, #1
	b	.L5094
	.cfi_endproc
.LFE868:
	.size	strlcat, .-strlcat
	.align	2
	.global	createObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	createObject, %function
createObject:
.LFB808:
	.loc 58 424 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5904:
	.loc 58 426 0
	cmp	r1, #4
	.loc 58 424 0
	strd	r4, [sp, #-20]!
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r4, r0
	strd	r6, [sp, #8]
	str	lr, [sp, #16]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 58 426 0
	bhi	.L5141
	.loc 58 431 0
	sub	ip, r1, #1
	mov	r5, r2
	mov	lr, r3
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L5118
.L5120:
	.word	.L5119
	.word	.L5121
	.word	.L5122
	.word	.L5123
.L5141:
	.loc 58 427 0
	ldr	ip, [sp, #32]
	str	ip, [sp]
	bl	Arch_createObject
.LVL5905:
.L5115:
	.loc 58 488 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
.LVL5906:
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	add	sp, sp, #16
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5907:
.L5119:
	.cfi_restore_state
.LBB15985:
	.loc 58 434 0
	add	r6, r2, #256
.LVL5908:
.LBB15986:
.LBB15987:
	.file 66 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine/registerset.h"
	.loc 66 205 0
	mov	r3, #80
.LVL5909:
.LBB15988:
.LBB15989:
	.loc 21 1203 0
	movw	r1, #:lower16:armKSNullBreakpointState
.LVL5910:
	mov	r2, #96
.LVL5911:
	movt	r1, #:upper16:armKSNullBreakpointState
	add	r0, r5, #332
.LVL5912:
.LBE15989:
.LBE15988:
	.loc 66 205 0
	str	r3, [r6, #64]
.LVL5913:
.LBB15991:
.LBB15990:
	.loc 21 1203 0
	bl	memcpy
.LVL5914:
.LBE15990:
.LBE15991:
.LBE15987:
.LBE15986:
	.loc 58 443 0
	movw	r3, #:lower16:ksCurDomain
	.loc 58 442 0
	mov	r0, #5
	.loc 58 443 0
	movt	r3, #:upper16:ksCurDomain
.LBB15992:
.LBB15993:
	.loc 63 28 0
	mov	ip, #99
.LBE15993:
.LBE15992:
	.loc 58 443 0
	ldr	r1, [r3]
	add	r2, r6, #764
	add	r3, r6, #528
	.loc 58 449 0
	add	r5, r5, #784
.LVL5915:
	add	r2, r2, #3
	add	r3, r3, #1
	.loc 58 443 0
	str	r1, [r6, #480]
	.loc 58 442 0
	str	r0, [r6, #492]
	movw	r0, #:lower16:.LC334
.LBB15997:
.LBB15994:
	.loc 63 28 0
	strb	ip, [r6, #528]
.LVL5916:
	movt	r0, #:upper16:.LC334
	b	.L5124
.LVL5917:
.L5126:
	strb	r1, [r3], #1
.LVL5918:
	.loc 63 27 0
	cmp	r2, r3
	beq	.L5135
.LVL5919:
.L5124:
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2
	sub	ip, r3, r5
.LVL5920:
	cmp	r1, #0
	bne	.L5126
.LVL5921:
.L5125:
	.loc 63 30 0
	mov	r7, #0
.LBE15994:
.LBE15997:
	.loc 58 450 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	mov	r2, #240
.LBB15998:
.LBB15995:
	.loc 63 30 0
	strb	r7, [r5, ip]
.LVL5922:
.LBE15995:
.LBE15998:
	.loc 58 450 0
	ldr	r1, [r3]
	mov	r0, r5
	add	r1, r1, #528
	bl	strlcat
.LVL5923:
	.loc 58 451 0
	movw	r1, #:lower16:.LC335
	mov	r2, #240
	movt	r1, #:upper16:.LC335
	mov	r0, r5
	bl	strlcat
.LVL5924:
.LBB15999:
.LBB16000:
	.loc 27 180 0
	movw	r3, #:lower16:ksDebugTCBs
	.loc 27 178 0
	str	r7, [r6, #524]
	.loc 27 180 0
	movt	r3, #:upper16:ksDebugTCBs
	ldr	r2, [r3]
	.loc 27 185 0
	str	r6, [r3]
.LVL5925:
	.loc 27 180 0
	cmp	r2, r7
	.loc 27 181 0
	strne	r6, [r2, #524]
.LBE16000:
.LBE15999:
.LBB16002:
.LBB16003:
	.loc 36 1455 0
	ands	r1, r6, #15
.LBE16003:
.LBE16002:
.LBB16005:
.LBB16001:
	.loc 27 184 0
	str	r2, [r6, #520]
.LBE16001:
.LBE16005:
.LBB16006:
.LBB16004:
	.loc 36 1459 0
	biceq	r6, r6, #15
.LVL5926:
	.loc 36 1460 0
	orreq	r6, r6, #12
	.loc 36 1463 0
	streq	r1, [r4, #4]
	streq	r6, [r4]
	.loc 36 1455 0
	beq	.L5115
	bl	cap_thread_cap_new.part.236
.LVL5927:
.L5121:
.LBE16004:
.LBE16006:
.LBE15985:
.LBB16008:
.LBB16009:
	.loc 36 1041 0
	tst	r2, #15
	bne	.L5142
.LVL5928:
	.loc 36 1051 0
	bic	r5, r2, #15
	.loc 36 1053 0
	mov	r3, #4
.LVL5929:
	.loc 36 1051 0
	orr	r5, r5, #7
.LVL5930:
	.loc 36 1053 0
	stm	r0, {r3, r5}
.LVL5931:
	b	.L5115
.LVL5932:
.L5122:
.LBE16009:
.LBE16008:
.LBB16011:
.LBB16012:
	.loc 36 1182 0
	tst	r2, #15
	bne	.L5143
.LVL5933:
	.loc 36 1186 0
	bic	r5, r2, #15
	.loc 36 1193 0
	mov	r3, #3
.LVL5934:
	.loc 36 1187 0
	orr	r5, r5, #6
.LVL5935:
	.loc 36 1193 0
	str	r5, [r0]
	str	r3, [r0, #4]
.LVL5936:
	b	.L5115
.LVL5937:
.L5118:
.LBE16012:
.LBE16011:
	.loc 58 483 0
	ldr	r3, [sp, #32]
.LVL5938:
	adds	r3, r3, #0
	movne	r3, #1
.LVL5939:
.LBB16014:
.LBB16015:
	.loc 36 936 0
	bics	r2, lr, #31
.LVL5940:
	bne	.L5144
	.loc 36 937 0
	tst	r5, #15
	bne	.L5145
.LVL5941:
	.loc 36 941 0
	bic	r2, r5, #15
	.loc 36 946 0
	orr	lr, lr, r3, lsl #5
.LVL5942:
	.loc 36 942 0
	orr	r2, r2, #2
.LVL5943:
	.loc 36 948 0
	stm	r0, {r2, lr}
.LVL5944:
	b	.L5115
.LVL5945:
.L5123:
.LBE16015:
.LBE16014:
.LBB16017:
.LBB16018:
	.loc 36 1353 0
	bics	r3, lr, #31
.LVL5946:
	bne	.L5146
	.loc 36 1356 0
	tst	r2, #31
	bne	.L5147
.LVL5947:
	.loc 36 1363 0
	lsl	lr, lr, #18
.LVL5948:
	.loc 36 1360 0
	bic	r5, r2, #31
	.loc 36 1361 0
	orr	r5, r5, #10
	.loc 36 1363 0
	and	lr, lr, #8126464
	.loc 36 1367 0
	stm	r0, {r5, lr}
.LVL5949:
	b	.L5115
.LVL5950:
.L5135:
.LBE16018:
.LBE16017:
.LBB16020:
.LBB16007:
.LBB15996:
	.loc 63 27 0
	mov	ip, #239
	b	.L5125
.LVL5951:
.L5147:
.LBE15996:
.LBE16007:
.LBE16020:
.LBB16021:
.LBB16019:
	.loc 36 1356 0
	movw	r1, #:lower16:.LC37
.LVL5952:
	movw	r0, #:lower16:.LC338
.LVL5953:
	ldr	r3, .L5148
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC338
	movw	r2, #1356
.LVL5954:
	bl	_assert_fail
.LVL5955:
.L5146:
	bl	cap_cnode_cap_new.part.234
.LVL5956:
.L5145:
.LBE16019:
.LBE16021:
.LBB16022:
.LBB16016:
	.loc 36 937 0
	movw	r1, #:lower16:.LC37
.LVL5957:
	movw	r0, #:lower16:.LC188
.LVL5958:
	ldr	r3, .L5148+4
.LVL5959:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC188
	movw	r2, #937
	bl	_assert_fail
.LVL5960:
.L5144:
	.loc 36 936 0
	movw	r1, #:lower16:.LC37
.LVL5961:
	movw	r0, #:lower16:.LC339
.LVL5962:
	ldr	r3, .L5148+4
.LVL5963:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC339
	mov	r2, #936
	bl	_assert_fail
.LVL5964:
.L5143:
.LBE16016:
.LBE16022:
.LBB16023:
.LBB16013:
	.loc 36 1182 0
	movw	r1, #:lower16:.LC37
.LVL5965:
	movw	r0, #:lower16:.LC337
.LVL5966:
	ldr	r3, .L5148+8
.LVL5967:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC337
	movw	r2, #1182
.LVL5968:
	bl	_assert_fail
.LVL5969:
.L5142:
.LBE16013:
.LBE16023:
.LBB16024:
.LBB16010:
	.loc 36 1041 0
	movw	r1, #:lower16:.LC37
.LVL5970:
	movw	r0, #:lower16:.LC336
.LVL5971:
	ldr	r3, .L5148+12
.LVL5972:
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC336
	movw	r2, #1041
.LVL5973:
	bl	_assert_fail
.LVL5974:
.L5149:
	.align	2
.L5148:
	.word	.LANCHOR3+2904
	.word	.LANCHOR3+2944
	.word	.LANCHOR5-2868
	.word	.LANCHOR5-2892
.LBE16010:
.LBE16024:
	.cfi_endproc
.LFE808:
	.size	createObject, .-createObject
	.align	2
	.global	createNewObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	createNewObjects, %function
createNewObjects:
.LFB809:
	.loc 58 493 0
	.cfi_startproc
	@ args = 24, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5975:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	mov	fp, r1
	mov	r10, r0
	str	lr, [sp, #32]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 64
	.loc 58 493 0
	add	r1, sp, #52
.LVL5976:
	stmib	r1, {r2, r3}
	ldr	r9, [sp, #64]
.LVL5977:
	.loc 58 500 0
	ldr	r1, [sp, #72]
	bl	getObjectSize
.LVL5978:
	.loc 58 507 0
	cmp	r9, #0
	beq	.L5150
	ldr	r5, [sp, #56]
	mov	r8, #1
	mov	r7, #0
	ldr	r3, [sp, #60]
	add	r6, sp, #8
	lsl	r8, r8, r0
	ldr	r4, [sp, #68]
	add	r5, r5, r3, lsl #4
.LVL5979:
.L5152:
.LBB16025:
	.loc 58 510 0 discriminator 3
	ldr	r3, [sp, #76]
	mov	r2, r4
	mov	r1, r10
	mov	r0, r6
.LBE16025:
	.loc 58 507 0 discriminator 3
	add	r7, r7, #1
.LVL5980:
	add	r4, r4, r8
.LBB16026:
	.loc 58 510 0 discriminator 3
	str	r3, [sp]
	ldr	r3, [sp, #72]
	bl	createObject
.LVL5981:
	.loc 58 513 0 discriminator 3
	mov	r1, r5
	ldm	r6, {r2, r3}
	mov	r0, fp
	bl	insertNewCap
.LVL5982:
.LBE16026:
	.loc 58 507 0 discriminator 3
	cmp	r9, r7
	add	r5, r5, #16
	bne	.L5152
.LVL5983:
.L5150:
	.loc 58 517 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
.LVL5984:
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE809:
	.size	createNewObjects, .-createNewObjects
	.align	2
	.global	memzero
	.syntax unified
	.arm
	.fpu softvfp
	.type	memzero, %function
memzero:
.LFB869:
	.file 67 "/home/sel4/work/work2/kernel/src/util.c"
	.loc 67 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5985:
	.loc 67 32 0
	tst	r0, #3
	.loc 67 28 0
	str	r4, [sp, #-8]!
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	str	lr, [sp, #4]
	.loc 67 32 0
	bne	.L5164
	.loc 67 33 0
	ands	r3, r1, #3
	bne	.L5158
	.loc 67 41 0
	cmp	r1, #0
	beq	.L5156
.LVL5986:
.L5160:
	subs	r1, r1, #4
	.loc 67 42 0
	str	r3, [r0], #4
.LVL5987:
	.loc 67 41 0
	bne	.L5160
.LVL5988:
.L5156:
	.loc 67 46 0
	ldr	r4, [sp]
	.cfi_remember_state
	.cfi_restore 4
	add	sp, sp, #4
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL5989:
.L5164:
	.cfi_restore_state
.LBB16029:
.LBB16030:
	.loc 67 32 0
	movw	r1, #:lower16:.LC340
.LVL5990:
	movw	r0, #:lower16:.LC341
.LVL5991:
	ldr	r3, .L5165
	movt	r1, #:upper16:.LC340
	movt	r0, #:upper16:.LC341
	mov	r2, #32
	bl	_assert_fail
.LVL5992:
.L5158:
.LBE16030:
.LBE16029:
	.loc 67 33 0 discriminator 1
	movw	r1, #:lower16:.LC340
.LVL5993:
	movw	r0, #:lower16:.LC342
.LVL5994:
	ldr	r3, .L5165
	movt	r1, #:upper16:.LC340
	movt	r0, #:upper16:.LC342
	mov	r2, #33
	bl	_assert_fail
.LVL5995:
.L5166:
	.align	2
.L5165:
	.word	.LANCHOR5-2840
	.cfi_endproc
.LFE869:
	.size	memzero, .-memzero
	.section	.boot.text
	.align	2
	.global	map_kernel_window
	.syntax unified
	.arm
	.fpu softvfp
	.type	map_kernel_window, %function
map_kernel_window:
.LFB404:
	.loc 11 334 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5996:
.LBB16048:
.LBB16049:
	.loc 19 29 0
	ldr	ip, .L5175
.LBE16049:
.LBE16048:
	.loc 11 334 0
	strd	r4, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 343 0
	movw	r0, #:lower16:.LANCHOR1
	ldr	r1, .L5175+4
	movt	r0, #:upper16:.LANCHOR1
	.loc 11 334 0
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	.loc 11 343 0
	mov	lr, #0
	.loc 11 352 0
	mov	r2, lr
.LBB16050:
.LBB16051:
	.loc 36 2896 0
	bic	r4, ip, #4080
.LBE16051:
.LBE16050:
	.loc 11 346 0
	add	ip, ip, #-2147483648
	.loc 11 343 0
	str	lr, [r0]
.LBB16054:
.LBB16052:
	.loc 36 2896 0
	bic	r4, r4, #15
.LBE16052:
.LBE16054:
	.loc 11 346 0
	mov	r3, ip
	.loc 11 343 0
	str	lr, [r0, #4]
.LVL5997:
.LBB16055:
.LBB16053:
	.loc 36 2897 0
	orr	r4, r4, #3
.LBE16053:
.LBE16055:
	.loc 11 343 0
	str	lr, [r0, #8]
	str	lr, [r0, #12]
.LVL5998:
	str	lr, [r0, #16]
	str	lr, [r0, #20]
.LVL5999:
	.loc 11 346 0
	str	r4, [r0, #24]
	str	lr, [r0, #28]
.LVL6000:
.L5168:
	.loc 11 352 0
	str	r2, [r3]
	add	r3, r3, #8
	str	r2, [r3, #-4]
	.loc 11 350 0
	cmp	r3, r1
	bne	.L5168
	movw	r3, #:lower16:armHSGlobalPD
.LBB16056:
.LBB16057:
	.loc 36 2867 0
	mov	r0, #61440
.LBE16057:
.LBE16056:
	.loc 11 357 0
	mov	r1, #0
	movt	r3, #:upper16:armHSGlobalPD
.LBB16062:
.LBB16058:
	.loc 36 2867 0
	movt	r0, 65535
.LBE16058:
.LBE16062:
	.loc 11 357 0
	movt	r1, 32736
	mov	r5, #1610612736
.LBB16063:
.LBB16059:
	.loc 36 2874 0
	movw	r4, #1029
.LBE16059:
.LBE16063:
	.loc 11 370 0
	mov	lr, #0
.LVL6001:
.L5169:
.LBB16064:
.LBB16060:
	.loc 36 2867 0
	and	r2, r5, r0
.LBE16060:
.LBE16064:
	.loc 11 371 0
	add	r5, r5, #2097152
.LVL6002:
	.loc 11 370 0
	str	lr, [r3, #2052]
.LBB16065:
.LBB16061:
	.loc 36 2874 0
	orr	r2, r2, r4
.LBE16061:
.LBE16065:
	.loc 11 357 0
	cmp	r5, r1
	add	r3, r3, #8
	.loc 11 370 0
	str	r2, [r3, #2040]
	.loc 11 357 0
	bne	.L5169
.LVL6003:
.LBB16066:
.LBB16067:
	.loc 19 29 0
	ldr	r4, .L5175+8
.LBE16067:
.LBE16066:
	.loc 11 375 0
	str	lr, [ip, #4092]
	.loc 11 378 0
	mov	r1, #4096
.LBB16068:
.LBB16069:
	.loc 36 2896 0
	and	r3, r4, r0
.LBE16069:
.LBE16068:
	.loc 11 378 0
	add	r0, r4, #-2147483648
.LBB16071:
.LBB16070:
	.loc 36 2897 0
	orr	r3, r3, #3
.LBE16070:
.LBE16071:
	.loc 11 375 0
	str	r3, [ip, #4088]
	.loc 11 378 0
	bl	memzero
.LVL6004:
	ldr	lr, .L5175+12
.LBB16072:
.LBB16073:
.LBB16074:
	.loc 36 713 0
	mov	r1, #61440
.LBE16074:
.LBE16073:
.LBE16072:
	.loc 11 378 0
	add	r3, r4, #-2147483648
.LBB16081:
.LBB16078:
.LBB16075:
	.loc 36 713 0
	movt	r1, 65535
	.loc 36 720 0
	movw	ip, #1031
.LBE16075:
.LBE16078:
	.loc 11 393 0
	mov	r0, #0
.LVL6005:
.L5170:
.LBB16079:
.LBB16076:
	.loc 36 713 0
	and	r2, r5, r1
.LBE16076:
.LBE16079:
	.loc 11 393 0
	str	r0, [r3, #4]
	add	r3, r3, #8
.LBB16080:
.LBB16077:
	.loc 36 720 0
	orr	r2, r2, ip
.LBE16077:
.LBE16080:
	.loc 11 394 0
	add	r5, r5, #4096
.LVL6006:
	.loc 11 393 0
	str	r2, [r3, #-8]
.LBE16081:
	.loc 11 379 0
	cmp	r3, lr
	bne	.L5170
.LVL6007:
	.loc 11 397 0
	mov	r1, #0
	mov	r3, #3
	ldr	r0, .L5175+16
	movt	r1, 65535
	mov	r2, #1
	bl	map_kernel_frame
.LVL6008:
	.loc 11 436 0
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldr	r6, [sp, #8]
	.cfi_restore 6
	ldr	lr, [sp, #12]
	.cfi_restore 14
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	.loc 11 435 0
	b	map_kernel_devices
.LVL6009:
.L5176:
	.align	2
.L5175:
	.word	armHSGlobalPD-2147483648
	.word	armHSGlobalPD+2048
	.word	armHSGlobalPT-2147483648
	.word	armHSGlobalPT+2048
	.word	arm_vector_table-2147483648
	.cfi_endproc
.LFE404:
	.size	map_kernel_window, .-map_kernel_window
	.align	2
	.global	create_it_address_space
	.syntax unified
	.arm
	.fpu softvfp
	.type	create_it_address_space, %function
create_it_address_space:
.LFB409:
	.loc 11 554 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6010:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #52
	.cfi_def_cfa_offset 96
	.loc 11 554 0
	add	r6, sp, #24
	str	r0, [sp, #8]
	.loc 11 563 0
	mov	r0, #14
.LVL6011:
	.loc 11 554 0
	str	r3, [sp, #92]
	ldr	r3, [sp, #96]
	stm	r6, {r1, r2}
	str	r3, [sp, #4]
.LVL6012:
	.loc 11 563 0
	bl	alloc_region
.LVL6013:
	.loc 11 564 0
	subs	r5, r0, #0
	bne	.L5178
.LVL6014:
.L5220:
.LBB16152:
.LBB16153:
	.loc 36 926 0
	ldr	r2, [sp, #8]
	mov	r3, #0
	str	r3, [r2]
	str	r3, [r2, #4]
.LVL6015:
.L5177:
.LBE16153:
.LBE16152:
	.loc 11 603 0
	ldr	r0, [sp, #8]
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	ldr	lr, [sp, #32]
	.cfi_restore 14
	add	sp, sp, #36
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL6016:
	bx	lr
.LVL6017:
.L5178:
	.cfi_restore_state
	.loc 11 567 0
	mov	r1, #16384
	bl	memzero
.LVL6018:
	.loc 11 569 0
	add	r2, r5, #16320
.LBB16154:
.LBB16155:
	.loc 16 96 0
	lsr	r3, r5, #6
.LVL6019:
.LBE16155:
.LBE16154:
	.loc 11 569 0
	add	r2, r2, #63
.LBB16161:
.LBB16160:
	.loc 16 96 0
	lsr	r2, r2, #6
	add	r2, r2, #1
	cmp	r3, r2
	lslcc	r3, r3, #6
.LVL6020:
	lslcc	r2, r2, #6
	bcs	.L5184
.LVL6021:
.L5183:
.LBB16156:
.LBB16157:
	.loc 17 284 0
	.syntax divided
@ 284 "/home/sel4/work/work2/kernel/include/arch/arm/arch/32/mode/machine.h" 1
	mcr p15, 0, r3, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16158:
.LBB16159:
	.loc 2 26 0
	.syntax divided
@ 26 "/home/sel4/work/work2/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6022:
	.arm
	.syntax unified
	add	r3, r3, #64
.LVL6023:
.LBE16159:
.LBE16158:
.LBE16157:
.LBE16156:
	.loc 16 96 0
	cmp	r2, r3
	bne	.L5183
.LVL6024:
.L5184:
.LBE16160:
.LBE16161:
.LBB16162:
.LBB16163:
	.loc 36 1992 0
	ubfx	r3, r5, #0, #14
	cmp	r3, #0
	bne	.L5241
.LBE16163:
.LBE16162:
	.loc 11 577 0
	movw	r2, #:lower16:.LANCHOR2
	ldr	r3, [sp, #24]
.LBB16168:
.LBB16164:
	.loc 36 1997 0
	bic	r5, r5, #16320
.LVL6025:
.LBE16164:
.LBE16168:
	.loc 11 577 0
	movt	r2, #:upper16:.LANCHOR2
.LBB16169:
.LBB16165:
	.loc 36 1997 0
	bic	r5, r5, #63
	ldr	r0, [sp, #28]
	.loc 36 1998 0
	orr	r1, r5, #25
.LBE16165:
.LBE16169:
	.loc 11 577 0
	str	r2, [sp, #20]
	ldr	r2, [r2, #20]
	str	r2, [sp, #12]
.LBB16170:
.LBB16171:
.LBB16172:
.LBB16173:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE16173:
.LBE16172:
.LBE16171:
.LBE16170:
.LBB16245:
.LBB16166:
	.loc 36 1998 0
	str	r1, [sp, #16]
.LVL6026:
.LBE16166:
.LBE16245:
.LBB16246:
.LBB16242:
.LBB16175:
.LBB16174:
	.loc 36 905 0
	uxtbeq	r1, r3
.LVL6027:
	.loc 36 904 0
	andne	r1, r3, #15
.LBE16174:
.LBE16175:
	.loc 39 387 0
	sub	r2, r1, #2
	cmp	r2, #60
	ldrls	pc, [pc, r2, asl #2]
	b	.L5187
.L5189:
	.word	.L5188
	.word	.L5187
	.word	.L5190
	.word	.L5187
	.word	.L5191
	.word	.L5187
	.word	.L5227
	.word	.L5187
	.word	.L5193
	.word	.L5187
	.word	.L5194
	.word	.L5187
	.word	.L5227
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5227
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5195
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5187
	.word	.L5227
.L5227:
.LBB16176:
.LBB16177:
	.loc 38 398 0
	mov	r0, #48
.LVL6028:
.L5192:
.LBE16177:
.LBE16176:
.LBE16242:
.LBE16246:
	.loc 11 578 0
	mov	r2, #1
	orr	r1, r5, #25
	add	r3, sp, #32
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	ldm	r3, {r1, r2}
	bl	write_slot
.LVL6029:
	.loc 11 582 0
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #92]
	lsr	r4, r4, #21
	lsl	r4, r4, #21
.LVL6030:
	cmp	r3, r4
	bls	.L5224
.LBB16247:
.LBB16248:
.LBB16249:
.LBB16250:
	.loc 36 1870 0
	mov	r8, #64512
	.loc 36 1875 0
	mov	r7, #4096
.LBE16250:
.LBE16249:
.LBB16256:
.LBB16257:
.LBB16258:
.LBB16259:
	.loc 36 2493 0
	mov	r9, #61440
.LBE16259:
.LBE16258:
.LBE16257:
.LBE16256:
.LBB16281:
.LBB16251:
	.loc 36 1870 0
	movt	r8, 65535
	.loc 36 1875 0
	movt	r7, 8192
.LBE16251:
.LBE16281:
.LBB16282:
.LBB16274:
.LBB16266:
.LBB16260:
	.loc 36 2493 0
	movt	r9, 65535
.L5223:
.LBE16260:
.LBE16266:
.LBE16274:
.LBE16282:
.LBE16248:
.LBE16247:
	.loc 11 585 0
	mov	r0, #12
	bl	alloc_region
.LVL6031:
	.loc 11 586 0
	subs	r10, r0, #0
	beq	.L5220
	.loc 11 589 0
	mov	r1, #4096
	bl	memzero
.LVL6032:
.LBB16297:
.LBB16293:
.LBB16283:
.LBB16252:
	.loc 36 1866 0
	ubfx	r3, r10, #0, #10
	cmp	r3, #0
	bne	.L5242
	.loc 36 1870 0
	and	r3, r10, r8
	.loc 36 1875 0
	lsr	lr, r4, #21
.LBE16252:
.LBE16283:
.LBB16284:
.LBB16275:
.LBB16267:
.LBB16268:
	.loc 19 29 0
	add	ip, r3, #-2147483648
.LBE16268:
.LBE16267:
.LBB16269:
.LBB16261:
	.loc 36 2489 0
	ubfx	r10, ip, #0, #12
.LVL6033:
.LBE16261:
.LBE16269:
.LBE16275:
.LBE16284:
.LBB16285:
.LBB16253:
	.loc 36 1871 0
	orr	r3, r3, #7
.LVL6034:
.LBE16253:
.LBE16285:
.LBB16286:
.LBB16276:
.LBB16270:
.LBB16262:
	.loc 36 2489 0
	cmp	r10, #0
.LBE16262:
.LBE16270:
.LBE16276:
.LBE16286:
.LBB16287:
.LBB16254:
	.loc 36 1875 0
	orr	r2, lr, r7
.LVL6035:
.LBE16254:
.LBE16287:
.LBB16288:
.LBB16277:
	.loc 11 517 0
	add	fp, r5, lr, lsl #3
.LVL6036:
.LBB16271:
.LBB16263:
	.loc 36 2489 0
	bne	.L5243
.LVL6037:
	.loc 36 2493 0
	and	ip, ip, r9
.LVL6038:
.LBE16263:
.LBE16271:
.LBE16277:
.LBE16288:
	.loc 11 547 0
	str	r3, [sp, #40]
.LBE16293:
.LBE16297:
	.loc 11 590 0
	add	r3, sp, #48
.LVL6039:
.LBB16298:
.LBB16294:
.LBB16289:
.LBB16278:
.LBB16272:
.LBB16264:
	.loc 36 2494 0
	orr	ip, ip, #3
.LBE16264:
.LBE16272:
.LBE16278:
.LBE16289:
	.loc 11 547 0
	str	r2, [sp, #44]
.LBE16294:
.LBE16298:
	.loc 11 590 0
	ldm	r6, {r0, r1}
	ldmdb	r3, {r2, r3}
.LVL6040:
.LBB16299:
.LBB16295:
.LBB16290:
.LBB16279:
	.loc 11 528 0
	str	ip, [r5, lr, lsl #3]
	str	r10, [fp, #4]
.LVL6041:
.LBE16279:
.LBE16290:
.LBE16295:
.LBE16299:
	.loc 11 590 0
	bl	provide_cap
.LVL6042:
	cmp	r0, #0
	beq	.L5220
	.loc 11 582 0
	ldr	r3, [sp, #4]
	.loc 11 584 0
	add	r4, r4, #2097152
.LVL6043:
	.loc 11 582 0
	cmp	r3, r4
	bhi	.L5223
.LVL6044:
.L5224:
	.loc 11 602 0
	ldr	r0, [sp, #8]
	mov	r1, #1
	.loc 11 598 0
	ldr	r2, [sp, #20]
	.loc 11 602 0
	ldr	ip, [sp, #16]
	.loc 11 598 0
	mov	r3, r2
	.loc 11 597 0
	ldr	r2, [r2, #20]
.LVL6045:
	.loc 11 598 0
	ldr	r3, [r3, #16]
	.loc 11 602 0
	str	r1, [r0, #4]
	.loc 11 598 0
	ldr	r1, [sp, #12]
	.loc 11 602 0
	str	ip, [r0]
	.loc 11 598 0
	str	r1, [r3, #44]	@ unaligned
	str	r2, [r3, #48]	@ unaligned
	.loc 11 602 0
	b	.L5177
.LVL6046:
.L5191:
.LBB16300:
.LBB16243:
.LBB16211:
.LBB16212:
	.loc 36 1277 0
	and	r2, r3, #15
	cmp	r2, #6
	bne	.L5244
.LVL6047:
.L5217:
.LBE16212:
.LBE16211:
.LBB16214:
.LBB16206:
.LBB16178:
.LBB16179:
	.loc 36 1850 0
	bic	r3, r3, #15
.LVL6048:
	add	r0, r3, #48
.LVL6049:
	b	.L5192
.LVL6050:
.L5193:
.LBE16179:
.LBE16178:
.LBE16206:
.LBE16214:
.LBB16215:
.LBB16216:
	.loc 36 1439 0
	and	r2, r3, #15
	cmp	r2, #10
	.loc 36 1442 0
	biceq	r3, r3, #31
.LVL6051:
	addeq	r0, r3, #48
.LVL6052:
	.loc 36 1439 0
	beq	.L5192
	bl	cap_cnode_cap_get_capCNodePtr.isra.102.part.103
.LVL6053:
.L5194:
.LBE16216:
.LBE16215:
.LBB16217:
.LBB16218:
	.loc 36 1469 0
	and	r2, r3, #15
	cmp	r2, #12
	bne	.L5245
.LVL6054:
.L5215:
.LBE16218:
.LBE16217:
.LBB16220:
.LBB16207:
.LBB16181:
.LBB16182:
	.loc 36 1977 0
	bic	r3, r3, #1020
.LVL6055:
	bic	r3, r3, #3
	add	r0, r3, #48
.LVL6056:
	b	.L5192
.LVL6057:
.L5195:
.LBE16182:
.LBE16181:
.LBE16207:
.LBE16220:
.LBB16221:
.LBB16222:
.LBB16223:
.LBB16224:
.LBB16225:
.LBB16226:
	.loc 36 2177 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L5246
	.loc 36 2180 0
	lsr	r3, r3, #8
.LVL6058:
	and	r2, r3, #63
.LBE16226:
.LBE16225:
	.loc 39 103 0
	cmp	r2, #32
	mvneq	r3, #31
	beq	.L5202
	.loc 39 106 0
	and	r3, r3, #31
	mvn	r2, #0
	add	r3, r3, #1
	lsl	r3, r2, r3
.L5202:
.LVL6059:
.LBE16224:
.LBE16223:
	.loc 39 120 0
	and	r0, r0, r3
.LVL6060:
	add	r0, r0, #48
	b	.L5192
.LVL6061:
.L5188:
.LBE16222:
.LBE16221:
.LBB16232:
.LBB16233:
	.loc 36 1021 0
	and	r2, r3, #15
	cmp	r2, #2
	beq	.L5217
	bl	cap_untyped_cap_get_capPtr.isra.122.part.123
.LVL6062:
.L5190:
.LBE16233:
.LBE16232:
.LBB16234:
.LBB16235:
	.loc 36 1059 0
	and	r3, r3, #15
.LVL6063:
	cmp	r3, #4
	.loc 36 1062 0
	biceq	r0, r0, #15
.LVL6064:
	addeq	r0, r0, #48
	.loc 36 1059 0
	beq	.L5192
	bl	cap_endpoint_cap_get_capEPPtr.part.105
.LVL6065:
.L5187:
.LBE16235:
.LBE16234:
.LBB16236:
.LBB16208:
	.loc 38 398 0
	sub	r2, r1, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L5227
.L5204:
	.word	.L5203
	.word	.L5227
	.word	.L5203
	.word	.L5227
	.word	.L5205
	.word	.L5227
	.word	.L5206
	.word	.L5227
	.word	.L5207
	.word	.L5227
	.word	.L5227
	.word	.L5227
	.word	.L5227
	.word	.L5227
	.word	.L5208
.L5207:
.LVL6066:
.LBB16184:
.LBB16185:
	.loc 36 2035 0
	and	r2, r3, #15
	cmp	r2, #9
	.loc 36 2038 0
	biceq	r3, r3, #16320
.LVL6067:
	biceq	r3, r3, #63
	addeq	r0, r3, #48
.LVL6068:
	.loc 36 2035 0
	beq	.L5192
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.106.part.107
.LVL6069:
.L5206:
.LBE16185:
.LBE16184:
.LBB16186:
.LBB16183:
	.loc 36 1974 0
	and	r2, r3, #15
	cmp	r2, #7
	beq	.L5215
	bl	cap_page_table_cap_get_capPTBasePtr.isra.135.part.136
.LVL6070:
.L5205:
.LBE16183:
.LBE16186:
.LBB16187:
.LBB16180:
	.loc 36 1847 0
	and	r2, r3, #15
	cmp	r2, #5
	beq	.L5217
	bl	cap_asid_pool_cap_get_capASIDPool.isra.137.part.138
.LVL6071:
.L5203:
.LBE16180:
.LBE16187:
.LBB16188:
.LBB16189:
	.loc 38 235 0
	bic	r2, r1, #2
	cmp	r2, #1
	bne	.L5247
	.loc 38 238 0
	cmp	r1, #1
	beq	.L5211
	cmp	r1, #3
	bne	.L5227
.LVL6072:
.LBB16190:
.LBB16191:
	.loc 36 1801 0
	and	r2, r3, #15
	cmp	r2, #3
	bne	.L5248
.LVL6073:
	.loc 36 1804 0
	mov	r2, #49152
	movt	r2, 65535
	and	r3, r2, r3, lsl #10
.LVL6074:
	add	r0, r3, #48
.LVL6075:
	b	.L5192
.LVL6076:
.L5208:
.LBE16191:
.LBE16190:
.LBE16189:
.LBE16188:
.LBB16201:
.LBB16202:
	.loc 36 2221 0
	uxtb	r2, r3
	cmp	r2, #15
	.loc 36 2224 0
	biceq	r3, r3, #255
.LVL6077:
	addeq	r0, r3, #48
.LVL6078:
	.loc 36 2221 0
	beq	.L5192
	bl	cap_vcpu_cap_get_capVCPUPtr.isra.139.part.140
.LVL6079:
.L5211:
.LBE16202:
.LBE16201:
.LBB16203:
.LBB16198:
.LBB16193:
.LBB16194:
	.loc 36 1627 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L5249
.LVL6080:
	.loc 36 1630 0
	mov	r2, #61440
	movt	r2, 65535
	and	r3, r2, r3, lsl #8
.LVL6081:
	add	r0, r3, #48
.LVL6082:
	b	.L5192
.LVL6083:
.L5243:
.LBE16194:
.LBE16193:
.LBE16198:
.LBE16203:
.LBE16208:
.LBE16236:
.LBE16243:
.LBE16300:
.LBB16301:
.LBB16296:
.LBB16291:
.LBB16280:
.LBB16273:
.LBB16265:
	bl	pde_pde_coarse_new.part.145
.LVL6084:
.L5242:
.LBE16265:
.LBE16273:
.LBE16280:
.LBE16291:
.LBB16292:
.LBB16255:
	.loc 36 1866 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC136
	ldr	r3, .L5250
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC136
	movw	r2, #1866
	bl	_assert_fail
.LVL6085:
.L5241:
.LBE16255:
.LBE16292:
.LBE16296:
.LBE16301:
.LBB16302:
.LBB16167:
	.loc 36 1992 0
	movw	r1, #:lower16:.LC37
	movw	r0, #:lower16:.LC137
	ldr	r3, .L5250+4
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC137
	movw	r2, #1992
	bl	_assert_fail
.LVL6086:
.L5246:
.LBE16167:
.LBE16302:
.LBB16303:
.LBB16244:
.LBB16237:
.LBB16231:
.LBB16230:
.LBB16229:
.LBB16228:
.LBB16227:
	bl	cap_zombie_cap_get_capZombieType.isra.124.part.125
.LVL6087:
.L5244:
.LBE16227:
.LBE16228:
.LBE16229:
.LBE16230:
.LBE16231:
.LBE16237:
.LBB16238:
.LBB16213:
	bl	cap_notification_cap_get_capNtfnPtr.isra.95.part.96
.LVL6088:
.L5248:
.LBE16213:
.LBE16238:
.LBB16239:
.LBB16209:
.LBB16204:
.LBB16199:
.LBB16196:
.LBB16192:
	bl	cap_frame_cap_get_capFBasePtr.isra.131.part.132
.LVL6089:
.L5247:
.LBE16192:
.LBE16196:
	bl	generic_frame_cap_get_capFBasePtr.isra.133.part.134
.LVL6090:
.L5245:
.LBE16199:
.LBE16204:
.LBE16209:
.LBE16239:
.LBB16240:
.LBB16219:
	bl	cap_thread_cap_get_capTCBPtr.isra.87.part.88
.LVL6091:
.L5249:
.LBE16219:
.LBE16240:
.LBB16241:
.LBB16210:
.LBB16205:
.LBB16200:
.LBB16197:
.LBB16195:
	bl	cap_small_frame_cap_get_capFBasePtr.isra.129.part.130
.LVL6092:
.L5251:
	.align	2
.L5250:
	.word	.LANCHOR3+1172
	.word	.LANCHOR3+876
.LBE16195:
.LBE16197:
.LBE16200:
.LBE16205:
.LBE16210:
.LBE16241:
.LBE16244:
.LBE16303:
	.cfi_endproc
.LFE409:
	.size	create_it_address_space, .-create_it_address_space
	.text
	.align	2
	.global	decodeARMMMUInvocation
	.syntax unified
	.arm
	.fpu softvfp
	.type	decodeARMMMUInvocation, %function
decodeARMMMUInvocation:
.LFB466:
	.loc 11 2822 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6093:
	strd	r4, [sp, #-36]!
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	strd	r6, [sp, #8]
	strd	r8, [sp, #16]
	mov	r9, r0
	strd	r10, [sp, #24]
	str	lr, [sp, #32]
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
.LVL6094:
	ldr	r8, [sp, #88]
	ldrd	r4, [sp, #92]
.LVL6095:
.LBB16581:
.LBB16582:
	.loc 36 903 0
	and	r2, r8, #14
.LVL6096:
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r8
.LVL6097:
	.loc 36 904 0
	andne	r2, r8, #15
.LBE16582:
.LBE16581:
	.loc 11 2823 0
	sub	r2, r2, #1
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L5255
.L5257:
	.word	.L5256
	.word	.L5255
	.word	.L5256
	.word	.L5255
	.word	.L5258
	.word	.L5255
	.word	.L5259
	.word	.L5255
	.word	.L5260
	.word	.L5255
	.word	.L5261
.L5261:
.LBB16583:
	.loc 11 2847 0
	cmp	r0, #46
	bne	.L5367
	ldr	ip, [sp, #100]
	.loc 11 2854 0 discriminator 2
	cmp	r5, #0
	cmpne	ip, #0
	moveq	r4, #1
	movne	r4, #0
	cmp	r1, #1
	orrls	r4, r4, #1
	cmp	r4, #0
	bne	.L5368
.LVL6098:
.LBB16584:
.LBB16585:
	.loc 43 31 0
	movw	r7, #:lower16:ksCurThread
	ldr	r3, .L5399
.LVL6099:
	movt	r7, #:upper16:ksCurThread
.LBE16585:
.LBE16584:
	.loc 11 2865 0
	ldr	r8, [r5]
.LBB16593:
.LBB16590:
	.loc 43 31 0
	ldr	r1, [r7]
.LVL6100:
	b	.L5308
.LVL6101:
.L5310:
.LBE16590:
.LBE16593:
	.loc 11 2869 0 discriminator 4
	add	r4, r4, #1
.LVL6102:
	cmp	r4, #128
	beq	.L5309
.LVL6103:
.L5308:
	.loc 11 2869 0 is_stmt 0 discriminator 3
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	bne	.L5310
.LVL6104:
.LBB16594:
.LBB16595:
	.loc 36 903 0 is_stmt 1
	and	r3, r8, #14
	cmp	r3, #14
	.loc 36 904 0
	andne	r3, r8, #15
	.loc 36 903 0
	beq	.L5369
.L5312:
.LVL6105:
.LBE16595:
.LBE16594:
	.loc 11 2880 0
	cmp	r3, #2
	bne	.L5313
.LVL6106:
.LBB16597:
.LBB16598:
	.loc 36 1007 0 discriminator 1
	and	r3, r8, #15
	cmp	r3, #2
	bne	.L5337
.LBE16598:
.LBE16597:
	.loc 11 2865 0
	ldr	r9, [r5, #4]
.LBB16601:
.LBB16599:
	.loc 36 1010 0
	and	r3, r9, #31
.LBE16599:
.LBE16601:
	.loc 11 2880 0
	cmp	r3, #12
	bne	.L5313
.LVL6107:
.LBB16602:
.LBB16603:
	.loc 36 996 0
	ubfx	r9, r9, #5, #1
.LBE16603:
.LBE16602:
	.loc 11 2882 0
	cmp	r9, #0
	beq	.L5315
.LVL6108:
.L5313:
	.loc 11 2883 0
	ldr	ip, [r1, #68]
	add	r2, r1, #528
	movw	r0, #:lower16:.LC14
.LVL6109:
	movt	r0, #:upper16:.LC14
	movw	r3, #2883
	.loc 11 2887 0
	mov	r6, #3
	.loc 11 2883 0
	stm	sp, {r1, r2, ip}
.LVL6110:
	mov	r1, #0
	ldr	r2, .L5399+12
	bl	kprintf
.LVL6111:
	movw	r0, #:lower16:.LC362
	movt	r0, #:upper16:.LC362
.LVL6112:
.L5359:
.LBE16583:
.LBB16644:
	.loc 11 2943 0
	bl	kprintf
.LVL6113:
	movw	r0, #:lower16:.LC16
	movt	r0, #:upper16:.LC16
	bl	kprintf
.LVL6114:
	.loc 11 2944 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 2945 0
	mov	r1, #1
	str	r1, [r3, #4]
	.loc 11 2944 0
	str	r2, [r3, #24]
	.loc 11 2947 0
	b	.L5252
.LVL6115:
.L5256:
.LBE16644:
	.loc 11 2834 0
	ldr	ip, [sp, #92]
	mov	r2, r3
	ldr	r3, [sp, #88]
.LVL6116:
	str	ip, [sp]
	str	r5, [sp, #4]
	bl	decodeARMFrameInvocation.isra.284
.LVL6117:
	mov	r6, r0
.LVL6118:
.L5252:
	.loc 11 2989 0
	mov	r0, r6
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldrd	r4, [sp]
	.cfi_restore 5
	.cfi_restore 4
	ldrd	r6, [sp, #8]
	.cfi_restore 7
	.cfi_restore 6
	ldrd	r8, [sp, #16]
	.cfi_restore 9
	.cfi_restore 8
	ldrd	r10, [sp, #24]
	.cfi_restore 11
	.cfi_restore 10
	add	sp, sp, #32
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
	.cfi_restore 15
	.cfi_def_cfa_offset 0
.LVL6119:
.L5258:
	.cfi_restore_state
.LBB16673:
	.loc 11 2923 0
	cmp	r0, #47
	bne	.L5370
	.loc 11 2930 0
	cmp	r5, #0
	beq	.L5371
.LVL6120:
	.loc 11 2938 0
	ldr	r3, [r5]
.LVL6121:
.LBB16645:
.LBB16646:
	.loc 36 903 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 36 905 0
	uxtbeq	r2, r3
.LVL6122:
	.loc 36 904 0
	andne	r2, r3, #15
.LBE16646:
.LBE16645:
	.loc 11 2940 0
	cmp	r2, #9
	bne	.L5325
.LVL6123:
.LBB16647:
.LBB16648:
	.loc 36 2049 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L5296
.LVL6124:
	.loc 36 2052 0
	ubfx	r9, r3, #4, #1
.LBE16648:
.LBE16647:
	.loc 11 2940 0
	cmp	r9, #0
	bne	.L5325
.LVL6125:
.LBB16649:
.LBB16650:
	.loc 36 1833 0
	and	r3, r8, #15
.LVL6126:
	cmp	r3, #5
	bne	.L5372
	.loc 36 1836 0
	ubfx	r4, r4, #0, #17
.LVL6127:
.LBE16650:
.LBE16649:
	.loc 11 2950 0
	movw	r3, #:lower16:armKSASIDTable
	lsr	r2, r4, #10
	movt	r3, #:upper16:armKSASIDTable
	ldr	r7, [r3, r2, lsl #2]
.LVL6128:
	.loc 11 2952 0
	cmp	r7, #0
	beq	.L5373
.LBB16652:
.LBB16653:
	.loc 36 1850 0
	bic	r8, r8, #15
.LVL6129:
.LBE16653:
.LBE16652:
	.loc 11 2961 0
	cmp	r7, r8
	moveq	r3, r7
	addeq	r1, r4, #1024
.LVL6130:
	beq	.L5330
	b	.L5374
.LVL6131:
.L5332:
	add	r4, r4, #1
	add	r3, r3, #4
	.loc 11 2971 0 discriminator 6
	cmp	r1, r4
	beq	.L5375
.LVL6132:
.L5330:
	.loc 11 2971 0 is_stmt 0 discriminator 3
	cmp	r4, #0
	beq	.L5332
	.loc 11 2971 0 discriminator 5
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L5332
.LVL6133:
	.loc 11 2982 0 is_stmt 1
	movw	r3, #:lower16:ksCurThread
	mov	r1, #2
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL6134:
	bl	setThreadState
.LVL6135:
.LBB16654:
.LBB16655:
.LBB16656:
.LBB16657:
	.loc 36 2022 0
	ldr	r3, [r5]
	and	r2, r3, #15
	cmp	r2, #9
	bne	.L5376
	.loc 36 2026 0
	mov	r1, #0
	movt	r1, 65534
	ands	r6, r4, r1
	bne	.L5377
	.loc 36 2028 0
	ldr	r2, [r5, #4]
.LBE16657:
.LBE16656:
	.loc 11 2167 0
	bic	r0, r3, #16320
.LBB16661:
.LBB16662:
	.loc 36 2070 0
	orr	r3, r3, #16
.LBE16662:
.LBE16661:
	.loc 11 2166 0
	ubfx	ip, r4, #0, #10
	.loc 11 2167 0
	bic	r0, r0, #63
.LBB16664:
.LBB16663:
	.loc 36 2070 0
	str	r3, [r5]
.LBE16663:
.LBE16664:
.LBB16665:
.LBB16658:
	.loc 36 2028 0
	and	r3, r2, r1
	.loc 36 2029 0
	orr	r4, r3, r4
.LVL6136:
	str	r4, [r5, #4]
.LVL6137:
.LBE16658:
.LBE16665:
	.loc 11 2166 0
	str	r0, [r7, ip, lsl #2]
.LVL6138:
.LBE16655:
.LBE16654:
	.loc 11 2983 0
	b	.L5252
.LVL6139:
.L5259:
.LBE16673:
.LBB16674:
.LBB16675:
	.loc 11 2321 0
	cmp	r0, #37
	beq	.L5378
	.loc 11 2331 0
	cmp	r0, #36
	bne	.L5379
	.loc 11 2337 0
	cmp	r5, #0
	cmpne	r1, #1
	movls	r7, #1
	movhi	r7, #0
	bls	.L5380
.LVL6140:
.LBB16676:
.LBB16677:
	.loc 36 1883 0
	and	r2, r8, #15
	cmp	r2, #7
	bne	.L5291
.LBE16677:
.LBE16676:
	.loc 11 2343 0
	tst	r4, #536870912
	bne	.L5381
.LVL6141:
	.loc 11 2356 0
	ldr	r9, [r5]
.LBB16678:
.LBB16679:
	.loc 43 31 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
	ldr	r2, [r7]
.LVL6142:
.LBE16679:
.LBE16678:
.LBB16683:
.LBB16684:
	.loc 36 903 0
	and	r1, r9, #14
.LVL6143:
	cmp	r1, #14
	.loc 36 905 0
	uxtbeq	r1, r9
.LVL6144:
	.loc 36 904 0
	andne	r1, r9, #15
.LBE16684:
.LBE16683:
	.loc 11 2358 0
	cmp	r1, #9
	bne	.L5295
.LVL6145:
.LBB16685:
.LBB16686:
	.loc 36 2049 0
	and	r1, r9, #15
	cmp	r1, #9
	bne	.L5296
.LVL6146:
.LBE16686:
.LBE16685:
	.loc 11 2358 0
	tst	r9, #16
	beq	.L5295
.LBB16687:
.LBB16682:
.LBB16680:
.LBB16681:
	.loc 10 36 0
	ldr	r10, [r2, #8]
.LBE16681:
.LBE16680:
.LBE16682:
.LBE16687:
.LBB16688:
.LBB16689:
	.loc 36 2038 0
	bic	r9, r9, #16320
.LVL6147:
.LBE16689:
.LBE16688:
.LBB16691:
.LBB16692:
	.loc 36 2011 0
	ldr	fp, [r5, #4]
.LBE16692:
.LBE16691:
.LBB16694:
.LBB16690:
	.loc 36 2038 0
	bic	r9, r9, #63
.LVL6148:
.LBE16690:
.LBE16694:
	.loc 11 2370 0
	cmn	r10, #536870913
.LBB16695:
.LBB16693:
	.loc 36 2011 0
	ubfx	fp, fp, #0, #17
.LBE16693:
.LBE16695:
	.loc 11 2370 0
	bhi	.L5382
.LBB16696:
	.loc 11 2381 0
	mov	r1, fp
	add	r0, sp, #40
.LVL6149:
	str	r3, [sp, #16]
	bl	findPDForASID
.LVL6150:
	.loc 11 2382 0
	ldr	r3, [sp, #16]
	ldr	r6, [sp, #40]
	cmp	r6, #0
	bne	.L5383
	.loc 11 2390 0
	ldr	r2, [sp, #44]
	cmp	r9, r2
	bne	.L5384
.LBE16696:
	.loc 11 2400 0
	lsr	r10, r10, #21
.LVL6151:
.LBB16697:
.LBB16698:
	.loc 36 2325 0
	ldr	r1, [r9, r10, lsl #3]
.LBE16698:
.LBE16697:
	.loc 11 2401 0
	add	r2, r9, r10, lsl #3
.LVL6152:
	.loc 11 2402 0
	tst	r1, #3
	dmb