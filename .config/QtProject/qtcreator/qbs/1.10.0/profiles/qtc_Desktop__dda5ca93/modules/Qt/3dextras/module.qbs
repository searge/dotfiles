import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore", "3drender", "3dinput", "3dlogic"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DInput", "QtGamepad", "Qt3DLogic", "QtConcurrent"]
    frameworksRelease: ["Qt3DRender", "Qt3DCore", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtNetwork", "Qt3DInput", "QtGamepad", "Qt3DLogic", "QtConcurrent"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt3DExtras"
    libNameForLinkerRelease: "Qt3DExtras"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DExtras.framework/Qt3DExtras"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DExtras.framework/Qt3DExtras"
    cpp.defines: ["QT_3DEXTRAS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DExtras.framework/Headers"]
    cpp.libraryPaths: []
    
}
