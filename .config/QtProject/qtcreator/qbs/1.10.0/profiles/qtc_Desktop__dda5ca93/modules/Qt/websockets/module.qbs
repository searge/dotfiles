import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebSockets"
    Depends { name: "Qt"; submodules: ["core", "network"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtWebSockets"
    libNameForLinkerRelease: "QtWebSockets"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebSockets.framework/QtWebSockets"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebSockets.framework/QtWebSockets"
    cpp.defines: ["QT_WEBSOCKETS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebSockets.framework/Headers"]
    cpp.libraryPaths: []
    
}
