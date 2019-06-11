import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickExtras"
    Depends { name: "Qt"; submodules: ["core-private", "qml-private", "3dquick-private", "3drender-private", "3dquickextras"]}

    architecture: "x86_64"
    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include/Qt3DQuickExtras/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/Qt3DQuickExtras/5.10.0/Qt3DQuickExtras"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
