import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["Foundation", "CoreServices"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap_debug"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.10.0\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=10", "QT_VERSION_PATCH=0", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtCore.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtCore.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtCore.framework/Headers/5.10.0/QtCore", "/Users/searge/Qt/5.10.0/clang_64/lib/QtXml.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtXml.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtXml.framework/Headers/5.10.0/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
