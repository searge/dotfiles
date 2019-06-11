import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    cpp.defines: ["QT_WEBENGINECOREHEADERS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebEngineCore.framework/Headers/5.10.0/QtWebEngineCore"]
    cpp.libraryPaths: []
    
}
