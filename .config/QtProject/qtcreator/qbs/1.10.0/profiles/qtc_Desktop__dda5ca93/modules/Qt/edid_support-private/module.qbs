import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EdidSupport"
    Depends { name: "Qt"; submodules: ["core-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5EdidSupport_debug"
    libNameForLinkerRelease: "Qt5EdidSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5EdidSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5EdidSupport.a"
    cpp.defines: ["QT_EDID_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtEdidSupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtEdidSupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtEdidSupport/5.10.0/QtEdidSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
