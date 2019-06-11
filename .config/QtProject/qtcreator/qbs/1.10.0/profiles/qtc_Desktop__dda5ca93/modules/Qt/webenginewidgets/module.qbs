import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "webenginecore", "widgets", "network", "quick", "printsupport"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtWebEngineCore", "QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtWebChannel", "QtPositioning", "QtPrintSupport", "QtWidgets"]
    frameworksRelease: ["QtWebEngineCore", "QtQuick", "QtQml", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtWebChannel", "QtPositioning", "QtPrintSupport", "QtWidgets"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtWebEngineWidgets"
    libNameForLinkerRelease: "QtWebEngineWidgets"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineWidgets.framework/QtWebEngineWidgets"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineWidgets.framework/QtWebEngineWidgets"
    cpp.defines: ["QT_WEBENGINEWIDGETS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineWidgets.framework/Headers"]
    cpp.libraryPaths: []
    
}
