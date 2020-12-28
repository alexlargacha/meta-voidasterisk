
IMAGE_FSTYPES_append = " squashfs ext4"

# Need to be done first
# to avoid problems creating
# BOOT.BIN file

IMAGE_INSTALL = "\
    packagegroup-core-boot              \
    packagegroup-core-ssh-openssh       \
    ${CORE_IMAGE_EXTRA_INSTALL}         \
    lsof                                \
    kernel-modules                      \
    mmc-utils                           \
    mtd-utils                           \
    run-postinsts                       \
    e2fsprogs                           \
    curl                                \
    ethtool                             \
    tcpdump                             \
    haveged                             \
    dosfstools"

inherit core-image
inherit extrausers

# set image passwords
ROOT_PASSWORD ?= "root"

# Calculate password hash and add users in system
EXTRA_USERS_PARAMS = "\
   usermod -p `openssl passwd ${ROOT_PASSWORD}` root; \
   "
