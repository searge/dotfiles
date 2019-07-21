import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Quick"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "qml-private", "gui-private", "core-private", "qml-private", "core-private", "gui-private", "qml-private", "quick"]}

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
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include/QtQuick/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtQuick/5.10.0/QtQuick"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
