FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " \
    file://0001-board-ebaz4205-added-EBAZ4205-dts-and-configs.patch \
    "

#unset DTB_NAME to avoid using external DTB in u-boot build
#meta-xilinx-tools/recipes-bsp/u-boot/u-boot-xlnx_%.bbappend
DTB_NAME = ""

HAS_PLATFORM_INIT_append = " \
    zynq_ebaz4205_defconfig \
    "
