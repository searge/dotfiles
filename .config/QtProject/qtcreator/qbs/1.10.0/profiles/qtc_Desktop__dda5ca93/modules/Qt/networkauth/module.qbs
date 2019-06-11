import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "NetworkAuth"
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
    libNameForLinkerDebug: "QtNetworkAuth"
    libNameForLinkerRelease: "QtNetworkAuth"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtNetworkAuth.framework/QtNetworkAuth"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtNetworkAuth.framework/QtNetworkAuth"
    cpp.defines: ["QT_NETWORKAUTH_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtNetworkAuth.framework/Headers"]
    cpp.libraryPaths: []
    
}
