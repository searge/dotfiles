import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "RemoteObjects"
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
    libNameForLinkerDebug: "QtRemoteObjects"
    libNameForLinkerRelease: "QtRemoteObjects"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtRemoteObjects.framework/QtRemoteObjects"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtRemoteObjects.framework/QtRemoteObjects"
    cpp.defines: ["QT_REMOTEOBJECTS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtRemoteObjects.framework/Headers"]
    cpp.libraryPaths: []
    
}
