import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Sensors"
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
    libNameForLinkerDebug: "QtSensors"
    libNameForLinkerRelease: "QtSensors"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSensors.framework/QtSensors"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtSensors.framework/QtSensors"
    cpp.defines: ["QT_SENSORS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtSensors.framework/Headers"]
    cpp.libraryPaths: []
    
}
