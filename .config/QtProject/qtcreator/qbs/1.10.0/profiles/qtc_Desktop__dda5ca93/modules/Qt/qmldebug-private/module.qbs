import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDebug"
    Depends { name: "Qt"; submodules: ["core-private", "network", "packetprotocol-private", "qml-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib/libQt5PacketProtocol_debug.a"]
    staticLibsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib/libQt5PacketProtocol.a"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5QmlDebug_debug"
    libNameForLinkerRelease: "Qt5QmlDebug"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5QmlDebug_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5QmlDebug.a"
    cpp.defines: ["QT_QMLDEBUG_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtQmlDebug", "/Users/searge/Qt/5.10.0/clang_64/include/QtQmlDebug/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtQmlDebug/5.10.0/QtQmlDebug"]
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    isStaticLibrary: true
}
