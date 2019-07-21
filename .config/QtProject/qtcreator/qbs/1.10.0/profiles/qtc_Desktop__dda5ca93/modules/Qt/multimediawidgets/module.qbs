import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "multimedia", "widgets"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtMultimedia", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtWidgets"]
    frameworksRelease: ["QtMultimedia", "QtNetwork", "QtCore", "DiskArbitration", "IOKit", "QtGui", "QtWidgets"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtMultimediaWidgets"
    libNameForLinkerRelease: "QtMultimediaWidgets"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaWidgets.framework/QtMultimediaWidgets"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaWidgets.framework/QtMultimediaWidgets"
    cpp.defines: ["QT_MULTIMEDIAWIDGETS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtMultimediaWidgets.framework/Headers"]
    cpp.libraryPaths: []
    
}
