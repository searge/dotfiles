import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PrintSupport"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtPrintSupport"
    libNameForLinkerRelease: "QtPrintSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtPrintSupport.framework/QtPrintSupport"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtPrintSupport.framework/QtPrintSupport"
    cpp.defines: ["QT_PRINTSUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtPrintSupport.framework/Headers"]
    cpp.libraryPaths: []
    
}
