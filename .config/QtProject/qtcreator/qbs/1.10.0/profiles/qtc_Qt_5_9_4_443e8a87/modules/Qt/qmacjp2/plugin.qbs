import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qmacjp2"
    Depends { name: "Qt"; submodules: []}

    className: "QMacJp2Plugin"
    architecture: "x86"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["CoreFoundation", "CoreGraphics", "ImageIO", "MobileCoreServices", "Foundation", "UIKit", "OpenGLES", "CoreText"]
    frameworksRelease: ["CoreFoundation", "CoreGraphics", "ImageIO", "MobileCoreServices", "Foundation", "UIKit", "OpenGLES", "CoreText"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qmacjp2_debug"
    libNameForLinkerRelease: "qmacjp2"
    libFilePathDebug: "/Users/searge/Qt/5.9.4/ios/plugins/imageformats/libqmacjp2_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.9.4/ios/plugins/imageformats/libqmacjp2.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib"]
    isStaticLibrary: true
}
