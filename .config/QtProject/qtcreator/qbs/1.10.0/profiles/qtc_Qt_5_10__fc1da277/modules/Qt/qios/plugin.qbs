import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qios"
    Depends { name: "Qt"; submodules: []}

    className: "QIOSIntegrationPlugin"
    architecture: "x86_64"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5FontDatabaseSupport_debug.a", "qtfreetype_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5GraphicsSupport_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5ClipboardSupport_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5FontDatabaseSupport.a", "qtfreetype", "/Users/searge/Qt/5.10.0/ios/lib/libQt5GraphicsSupport.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5ClipboardSupport.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["Foundation", "UIKit", "QuartzCore", "AudioToolbox", "AssetsLibrary", "MobileCoreServices", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "ImageIO"]
    frameworksRelease: ["Foundation", "UIKit", "QuartzCore", "AudioToolbox", "AssetsLibrary", "MobileCoreServices", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "ImageIO"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qios_debug"
    libNameForLinkerRelease: "qios"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqios_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/plugins/platforms/libqios.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
