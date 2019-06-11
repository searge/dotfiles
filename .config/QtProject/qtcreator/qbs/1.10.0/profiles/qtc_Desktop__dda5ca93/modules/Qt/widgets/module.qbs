import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Widgets"
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
    libNameForLinkerDebug: "QtWidgets"
    libNameForLinkerRelease: "QtWidgets"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWidgets.framework/QtWidgets"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWidgets.framework/QtWidgets"
    cpp.defines: ["QT_WIDGETS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWidgets.framework/Headers"]
    cpp.libraryPaths: []
    
}
