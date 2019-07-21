import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MacExtras"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtMacExtras"
    libNameForLinkerRelease: "QtMacExtras"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMacExtras.framework/QtMacExtras"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMacExtras.framework/QtMacExtras"
    cpp.defines: ["QT_MACEXTRAS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtMacExtras.framework/Headers"]
    cpp.libraryPaths: []
    
}
