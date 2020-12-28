SUMMARY = "Hello World CMake example"
HOMEPAGE = "https://github.com/alexlargacha/helloworldcmake"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://git@github.com/alexlargacha/helloworldcmake.git;protocol=ssh;branch=${HELLOCMAKE_BRANCH}"

S = "${WORKDIR}/git"

#PACKAGES = "${PN}"

ALLOW_EMPTY_${PN} = "1"

EXTRA_OECMAKE=""

inherit cmake

do_install_append() {
    install -m 0644 hellocmake ${D}/${bindir}
}

