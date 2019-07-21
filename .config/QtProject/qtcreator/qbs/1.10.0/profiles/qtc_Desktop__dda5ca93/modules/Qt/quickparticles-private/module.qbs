import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickParticles"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "qml-private", "quick-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui"]
    frameworksRelease: ["QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtQuickParticles"
    libNameForLinkerRelease: "QtQuickParticles"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickParticles.framework/QtQuickParticles"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickParticles.framework/QtQuickParticles"
    cpp.defines: ["QT_QUICKPARTICLES_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickParticles.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickParticles.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickParticles.framework/Headers/5.10.0/QtQuickParticles"]
    cpp.libraryPaths: []
    
}
