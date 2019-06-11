import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DeviceDiscoverySupport"
    Depends { name: "Qt"; submodules: ["core-private"]}

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
    libNameForLinkerDebug: "Qt5DeviceDiscoverySupport_debug"
    libNameForLinkerRelease: "Qt5DeviceDiscoverySupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5DeviceDiscoverySupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5DeviceDiscoverySupport.a"
    cpp.defines: ["QT_DEVICEDISCOVERY_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtDeviceDiscoverySupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtDeviceDiscoverySupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtDeviceDiscoverySupport/5.10.0/QtDeviceDiscoverySupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
