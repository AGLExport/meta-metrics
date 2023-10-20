DESCRIPTION = "A simple code complexity analyser without caring about the C/C++ header \
               files or Java imports, supports most of the popular languages."
SUMMARY = "lizard: Cyclomatic Complexity Number and Number Line Of Code calculator."
HOMEPAGE = "https://github.com/terryyin/lizard"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "\
    file://LICENSE.txt;md5=a8add0f4f1d1fa89c11c9417e40d666b\
"

SRCREV = "bb8aa4d200a2935b07e6d2bf1e6072b449bc5ae3"
SRC_URI = "git://github.com/terryyin/lizard.git;protocol=https;branch=master"

S = "${WORKDIR}/git"

inherit setuptools3

RDEPENDS_${PN} += "python3-jinja2"

BBCLASSEXTEND = "native nativesdk"
