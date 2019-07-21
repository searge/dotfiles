import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "network"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork"]
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DCore"
    libNameForLinkerRelease: "Qt3DCore"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DCore.framework/Qt3DCore"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DCore.framework/Qt3DCore"
    cpp.defines: ["QT_3DCORE_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DCore.framework/Headers"]
    cpp.libraryPaths: []
    
}
