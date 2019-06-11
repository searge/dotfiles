import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Zlib"
    Depends { name: "Qt"; submodules: []}

    architecture: "x86"
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
    cpp.defines: ["QT_ZLIB_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.9.4/ios/include", "/Users/searge/Qt/5.9.4/ios/include/QtZlib", "/Users/searge/Qt/5.9.4/ios/include/QtZlib/5.9.4", "/Users/searge/Qt/5.9.4/ios/include/QtZlib/5.9.4/QtZlib"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
