import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qoffscreen"
    Depends { name: "Qt"; submodules: []}

    className: "QOffscreenIntegrationPlugin"
    architecture: "x86_64"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5EventDispatcherSupport_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5FontDatabaseSupport_debug.a", "qtfreetype_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5EventDispatcherSupport.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5FontDatabaseSupport.a", "qtfreetype", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qoffscreen_debug"
    libNameForLinkerRelease: "qoffscreen"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqoffscreen_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqoffscreen.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
