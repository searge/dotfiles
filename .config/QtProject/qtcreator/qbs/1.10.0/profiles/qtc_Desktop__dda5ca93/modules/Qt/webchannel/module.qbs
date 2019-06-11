import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
    Depends { name: "Qt"; submodules: ["core", "qml"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtWebChannel"
    libNameForLinkerRelease: "QtWebChannel"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebChannel.framework/QtWebChannel"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebChannel.framework/QtWebChannel"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebChannel.framework/Headers"]
    cpp.libraryPaths: []
    
}
