import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickRender"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3dquick"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DQuick", "QtQuick", "QtQml", "QtConcurrent"]
    frameworksRelease: ["Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DQuick", "QtQuick", "QtQml", "QtConcurrent"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DQuickRender"
    libNameForLinkerRelease: "Qt3DQuickRender"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickRender.framework/Qt3DQuickRender"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickRender.framework/Qt3DQuickRender"
    cpp.defines: ["QT_3DQUICKRENDER_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickRender.framework/Headers"]
    cpp.libraryPaths: []
    
}
