import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "FbSupport"
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
    libNameForLinkerDebug: "Qt5FbSupport_debug"
    libNameForLinkerRelease: "Qt5FbSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5FbSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5FbSupport.a"
    cpp.defines: ["QT_FB_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtFbSupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtFbSupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtFbSupport/5.10.0/QtFbSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
