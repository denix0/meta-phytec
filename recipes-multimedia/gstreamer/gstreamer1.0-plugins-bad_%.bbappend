FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
       file://0001-force-modesetting-true.patch \
       file://0002-camerabin-Disable-cropping-when-appropriate-env-vari.patch \
"

DEPENDS += "zbar"

PACKAGECONFIG += " opencv"
PACKAGECONFIG += "${@bb.utils.filter('DISTRO_FEATURES', 'wayland', d)}"

EXTRA_OECONF_remove = "--disable-qt"
EXTRA_OECONF_remove = "--disable-zbar"
EXTRA_OECONF += "--enable-zbar "
