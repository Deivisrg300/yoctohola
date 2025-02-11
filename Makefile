SUMMARY = "Ejemplo de BitBake con Makefile"
LICENSE = "CLOSED"
SRC_URI = "file://Makefile \
           file://main.c"

S = "${WORKDIR}"

inherit autotools

do_compile() {
    oe_runmake
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 holamundogit ${D}${bindir}
}
