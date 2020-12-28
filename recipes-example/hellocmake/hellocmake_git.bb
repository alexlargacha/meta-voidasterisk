HELLOCMAKE_BRANCH ?= "main"

SRCREV = "${AUTOREV}"
PV = "${HELLOCMAKE_BRANCH}+git${SRCPV}"

include hellocmake.inc
