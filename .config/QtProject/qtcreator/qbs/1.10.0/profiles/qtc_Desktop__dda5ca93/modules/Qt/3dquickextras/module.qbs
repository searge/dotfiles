import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3dinput", "3dquick", "3drender", "3dlogic", "3dextras"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Qt3DExtras", "Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DInput", "QtGamepad", "Qt3DLogic", "QtConcurrent", "Qt3DQuick", "QtQuick", "QtQml"]
    frameworksRelease: ["Qt3DExtras", "Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DInput", "QtGamepad", "Qt3DLogic", "QtConcurrent", "Qt3DQuick", "QtQuick", "QtQml"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DQuickExtras"
    libNameForLinkerRelease: "Qt3DQuickExtras"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickExtras.framework/Qt3DQuickExtras"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickExtras.framework/Qt3DQuickExtras"
    cpp.defines: ["QT_3DQUICKEXTRAS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickExtras.framework/Headers"]
    cpp.libraryPaths: []
    
}
