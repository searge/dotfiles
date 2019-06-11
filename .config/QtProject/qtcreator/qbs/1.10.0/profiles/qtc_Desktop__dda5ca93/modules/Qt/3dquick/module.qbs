import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuick"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "3dcore"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtQuick", "QtQml"]
    frameworksRelease: ["Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtQuick", "QtQml"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DQuick"
    libNameForLinkerRelease: "Qt3DQuick"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuick.framework/Qt3DQuick"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuick.framework/Qt3DQuick"
    cpp.defines: ["QT_3DQUICK_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuick.framework/Headers"]
    cpp.libraryPaths: []
    
}
