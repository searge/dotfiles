import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["z", "m"]
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
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.10.0\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=10", "QT_VERSION_PATCH=0", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include", "/Users/searge/Qt/5.10.0/ios/include/QtCore", "/Users/searge/Qt/5.10.0/ios/include/QtCore/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtCore/5.10.0/QtCore", "/Users/searge/Qt/5.10.0/ios/include/QtXml", "/Users/searge/Qt/5.10.0/ios/include/QtXml/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtXml/5.10.0/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
