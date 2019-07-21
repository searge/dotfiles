import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qtposition_cl"
    Depends { name: "Qt"; submodules: []}

    className: "QGeoPositionInfoSourceFactoryCL"
    architecture: "x86_64"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Positioning_debug.a", "clip2tri_debug", "poly2tri_debug", "clipper_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Positioning.a", "clip2tri", "poly2tri", "clipper", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Foundation", "CoreLocation", "MobileCoreServices", "UIKit", "CoreFoundation"]
    frameworksRelease: ["Foundation", "CoreLocation", "MobileCoreServices", "UIKit", "CoreFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qtposition_cl_debug"
    libNameForLinkerRelease: "qtposition_cl"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/plugins/position/libqtposition_cl_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/plugins/position/libqtposition_cl.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
