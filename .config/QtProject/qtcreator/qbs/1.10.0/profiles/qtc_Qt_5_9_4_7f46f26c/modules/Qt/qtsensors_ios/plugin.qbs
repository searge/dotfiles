import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qtsensors_ios"
    Depends { name: "Qt"; submodules: []}

    className: "IOSSensorPlugin"
    architecture: "x86"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Sensors_debug.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Sensors.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Foundation", "CoreLocation", "CoreMotion", "UIKit", "MobileCoreServices", "CoreFoundation"]
    frameworksRelease: ["Foundation", "CoreLocation", "CoreMotion", "UIKit", "MobileCoreServices", "CoreFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qtsensors_ios_debug"
    libNameForLinkerRelease: "qtsensors_ios"
    libFilePathDebug: "/Users/searge/Qt/5.9.4/ios/plugins/sensors/libqtsensors_ios_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.9.4/ios/plugins/sensors/libqtsensors_ios.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib"]
    isStaticLibrary: true
}
