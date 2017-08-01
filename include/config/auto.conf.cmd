deps_config := \
	/home/sel4/work/work2/tools/common/Kconfig \
	tools/camkes/Kconfig \
	tools/elfloader/Kconfig \
	projects/vm/components/VM/Kconfig \
	apps/vm/Kconfig \
	apps/capdl-loader-experimental/Kconfig \
	libs/libusbdrivers/Kconfig \
	libs/libsel4allocman/Kconfig \
	libs/libsel4arm-vmm/Kconfig \
	libs/libsel4simple-default/Kconfig \
	libs/libsel4simple/Kconfig \
	libs/libutils/Kconfig \
	libs/libsel4vchan/Kconfig \
	libs/libsel4debug/Kconfig \
	libs/libsel4dma/Kconfig \
	libs/libplatsupport/Kconfig \
	libs/libsel4vka/Kconfig \
	libs/libsel4vspace/Kconfig \
	libs/libsel4sync/Kconfig \
	libs/libsel4bench/Kconfig \
	libs/libelf/Kconfig \
	libs/libcpio/Kconfig \
	libs/libsel4utils/Kconfig \
	libs/libsel4platsupport/Kconfig \
	libs/libsel4muslccamkes/Kconfig \
	libs/libsel4muslcsys/Kconfig \
	libs/libsel4/Kconfig \
	libs/libmuslc/Kconfig \
	/home/sel4/work/work2/kernel/src/plat/pc99/Kconfig \
	/home/sel4/work/work2/kernel/src/arch/arm/Kconfig \
	kernel/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(KERNEL_ROOT_PATH)" "/home/sel4/work/work2/kernel"
include/config/auto.conf: FORCE
endif
ifneq "$(COMMON_PATH)" "/home/sel4/work/work2/tools/common"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
