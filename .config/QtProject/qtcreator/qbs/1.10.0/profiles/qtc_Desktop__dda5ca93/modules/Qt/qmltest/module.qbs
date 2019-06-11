import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickTest"
    Depends { name: "Qt"; submodules: ["core", "testlib", "widgets"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtTest", "Security", "Foundation", "ApplicationServices", "IOKit", "QtCore", "DiskArbitration", "QtWidgets", "QtGui"]
    frameworksRelease: ["QtTest", "Security", "Foundation", "ApplicationServices", "IOKit", "QtCore", "DiskArbitration", "QtWidgets", "QtGui"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtQuickTest"
    libNameForLinkerRelease: "QtQuickTest"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickTest.framework/QtQuickTest"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickTest.framework/QtQuickTest"
    cpp.defines: ["QT_QMLTEST_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtQuickTest.framework/Headers"]
    cpp.libraryPaths: []
    
}
