import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bluetooth"
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
    libNameForLinkerDebug: "QtBluetooth"
    libNameForLinkerRelease: "QtBluetooth"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtBluetooth.framework/QtBluetooth"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtBluetooth.framework/QtBluetooth"
    cpp.defines: ["QT_BLUETOOTH_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtBluetooth.framework/Headers"]
    cpp.libraryPaths: []
    
}
