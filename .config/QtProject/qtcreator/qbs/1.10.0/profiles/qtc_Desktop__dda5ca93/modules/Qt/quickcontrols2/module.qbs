import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickControls2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

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
    libNameForLinkerDebug: "QtQuickControls2"
    libNameForLinkerRelease: "QtQuickControls2"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickControls2.framework/QtQuickControls2"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickControls2.framework/QtQuickControls2"
    cpp.defines: ["QT_QUICKCONTROLS2_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickControls2.framework/Headers"]
    cpp.libraryPaths: []
    
}
