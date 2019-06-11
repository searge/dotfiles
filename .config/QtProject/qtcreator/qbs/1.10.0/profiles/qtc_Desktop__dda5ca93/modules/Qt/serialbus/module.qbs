import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SerialBus"
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
    libNameForLinkerDebug: "QtSerialBus"
    libNameForLinkerRelease: "QtSerialBus"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialBus.framework/QtSerialBus"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialBus.framework/QtSerialBus"
    cpp.defines: ["QT_SERIALBUS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialBus.framework/Headers"]
    cpp.libraryPaths: []
    
}
