import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickAnimation"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3danimation", "3dquick"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Qt3DAnimation", "Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtConcurrent", "Qt3DQuick", "QtQuick", "QtQml"]
    frameworksRelease: ["Qt3DAnimation", "Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "QtConcurrent", "Qt3DQuick", "QtQuick", "QtQml"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DQuickAnimation"
    libNameForLinkerRelease: "Qt3DQuickAnimation"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickAnimation.framework/Qt3DQuickAnimation"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickAnimation.framework/Qt3DQuickAnimation"
    cpp.defines: ["QT_3DQUICKANIMATION_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickAnimation.framework/Headers"]
    cpp.libraryPaths: []
    
}
