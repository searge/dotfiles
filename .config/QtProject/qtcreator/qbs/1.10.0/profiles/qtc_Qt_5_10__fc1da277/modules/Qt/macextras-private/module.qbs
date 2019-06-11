import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MacExtras"
    Depends { name: "Qt"; submodules: ["macextras"]}

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
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include/QtMacExtras/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtMacExtras/5.10.0/QtMacExtras"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
