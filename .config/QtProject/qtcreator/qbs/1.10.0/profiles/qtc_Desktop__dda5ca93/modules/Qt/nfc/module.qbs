import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Nfc"
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
    libNameForLinkerDebug: "QtNfc"
    libNameForLinkerRelease: "QtNfc"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtNfc.framework/QtNfc"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtNfc.framework/QtNfc"
    cpp.defines: ["QT_NFC_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtNfc.framework/Headers"]
    cpp.libraryPaths: []
    
}
