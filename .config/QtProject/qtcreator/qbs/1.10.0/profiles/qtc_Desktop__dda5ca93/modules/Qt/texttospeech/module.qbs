import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "TextToSpeech"
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
    libNameForLinkerDebug: "QtTextToSpeech"
    libNameForLinkerRelease: "QtTextToSpeech"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtTextToSpeech.framework/QtTextToSpeech"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtTextToSpeech.framework/QtTextToSpeech"
    cpp.defines: ["QT_TEXTTOSPEECH_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtTextToSpeech.framework/Headers"]
    cpp.libraryPaths: []
    
}
