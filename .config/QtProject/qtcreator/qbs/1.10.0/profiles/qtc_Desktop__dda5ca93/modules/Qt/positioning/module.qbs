import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Positioning"
    Depends { name: "Qt"; submodules: ["core"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtPositioning"
    libNameForLinkerRelease: "QtPositioning"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtPositioning.framework/QtPositioning"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtPositioning.framework/QtPositioning"
    cpp.defines: ["QT_POSITIONING_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtPositioning.framework/Headers"]
    cpp.libraryPaths: []
    
}
