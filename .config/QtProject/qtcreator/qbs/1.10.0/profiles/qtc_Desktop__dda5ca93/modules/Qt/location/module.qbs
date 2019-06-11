import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core", "positioning", "gui", "quick", "network", "qml"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtPositioning", "QtCore", "DiskArbitration", "IOKit", "QtQuick", "QtQml", "QtNetwork", "QtGui"]
    frameworksRelease: ["QtPositioning", "QtCore", "DiskArbitration", "IOKit", "QtQuick", "QtQml", "QtNetwork", "QtGui"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtLocation"
    libNameForLinkerRelease: "QtLocation"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtLocation.framework/QtLocation"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtLocation.framework/QtLocation"
    cpp.defines: ["QT_LOCATION_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtLocation.framework/Headers"]
    cpp.libraryPaths: []
    
}
