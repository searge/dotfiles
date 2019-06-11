import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Concurrent"
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
    libNameForLinkerDebug: "QtConcurrent"
    libNameForLinkerRelease: "QtConcurrent"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtConcurrent.framework/QtConcurrent"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtConcurrent.framework/QtConcurrent"
    cpp.defines: ["QT_CONCURRENT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtConcurrent.framework/Headers"]
    cpp.libraryPaths: []
    
}
