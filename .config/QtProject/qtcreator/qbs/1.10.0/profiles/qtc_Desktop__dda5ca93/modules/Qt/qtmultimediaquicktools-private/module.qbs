import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtMultimedia", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtQuick", "QtQml"]
    frameworksRelease: ["QtMultimedia", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtQuick", "QtQml"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtMultimediaQuick"
    libNameForLinkerRelease: "QtMultimediaQuick"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaQuick.framework/QtMultimediaQuick"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaQuick.framework/QtMultimediaQuick"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaQuick.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaQuick.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaQuick.framework/Headers/5.10.0/QtMultimediaQuick"]
    cpp.libraryPaths: []
    
}
