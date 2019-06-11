import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "GraphicsSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "OpenGL", "AGL"]
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "OpenGL", "AGL"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5GraphicsSupport_debug"
    libNameForLinkerRelease: "Qt5GraphicsSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5GraphicsSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5GraphicsSupport.a"
    cpp.defines: ["QT_GRAPHICS_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtGraphicsSupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtGraphicsSupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtGraphicsSupport/5.10.0/QtGraphicsSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
