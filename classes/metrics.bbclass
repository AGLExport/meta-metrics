DEPENDS:append = " python3-lizard-native"
DEPENDS:remove:class-native = "python3-lizard-native"
DEPENDS:remove:class-nativesdk= "python3-lizard-native"

METRICS_DIRECTORY ??= "${DEPLOY_DIR}/metrics/"
METRICS_STATEDIR = "${WORKDIR}/cloc-destdir/"

python do_metrics() {

    import subprocess

    source_dir = d.getVar('S', True)
    pn = d.getVar('PN', True)

    destdir = d.expand('${METRICS_DIRECTORY}')
    bb.utils.mkdirhier(destdir)

    lizard_cmd = 'lizard %s --html -o %s/%s.html' % (source_dir, destdir, pn )
    subprocess.call(lizard_cmd, shell=True)
}

python do_metrics:class-native () {
    return
}

python do_metrics:class-nativesdk () {
    return
}

addtask metrics before do_configure after do_patch

EXPORT_FUNCTIONS do_metrics