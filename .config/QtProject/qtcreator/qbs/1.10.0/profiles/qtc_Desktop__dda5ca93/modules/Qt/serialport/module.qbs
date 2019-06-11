import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SerialPort"
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
    libNameForLinkerDebug: "QtSerialPort"
    libNameForLinkerRelease: "QtSerialPort"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialPort.framework/QtSerialPort"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialPort.framework/QtSerialPort"
    cpp.defines: ["QT_SERIALPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtSerialPort.framework/Headers"]
    cpp.libraryPaths: []
    
}
