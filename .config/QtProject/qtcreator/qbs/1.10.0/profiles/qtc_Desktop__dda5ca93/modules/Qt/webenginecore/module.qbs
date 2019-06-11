import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "webchannel", "positioning"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtWebChannel", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtPositioning", "QtCore", "DiskArbitration", "IOKit", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtWebChannel", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtPositioning", "QtCore", "DiskArbitration", "IOKit", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtWebEngineCore"
    libNameForLinkerRelease: "QtWebEngineCore"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/QtWebEngineCore"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/QtWebEngineCore"
    cpp.defines: ["QT_WEBENGINECORE_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/Headers"]
    cpp.libraryPaths: []
    
}
