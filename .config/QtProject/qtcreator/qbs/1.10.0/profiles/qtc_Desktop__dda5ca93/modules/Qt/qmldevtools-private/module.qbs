import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["core-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5QmlDevTools_debug"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtQml.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtQml.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtQml.framework/Headers/5.10.0/QtQml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
