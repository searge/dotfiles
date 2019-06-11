import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Test"
    Depends { name: "Qt"; submodules: ["core"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Security", "Foundation", "ApplicationServices", "IOKit", "QtCore", "DiskArbitration"]
    frameworksRelease: ["Security", "Foundation", "ApplicationServices", "IOKit", "QtCore", "DiskArbitration"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtTest"
    libNameForLinkerRelease: "QtTest"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtTest.framework/QtTest"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtTest.framework/QtTest"
    cpp.defines: ["QT_TESTLIB_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtTest.framework/Headers"]
    cpp.libraryPaths: []
    
}
