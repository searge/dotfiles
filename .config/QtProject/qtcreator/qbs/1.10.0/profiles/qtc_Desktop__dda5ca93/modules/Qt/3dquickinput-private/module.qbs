import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickInput"
    Depends { name: "Qt"; submodules: ["core-private", "qml-private", "3dquick-private", "3dcore-private", "3dinput-private", "3dquickinput"]}

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
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickInput.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/Qt3DQuickInput.framework/Headers/5.10.0/Qt3DQuickInput"]
    cpp.libraryPaths: []
    
}
