import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "GraphicsSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86"
    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "OpenGLES"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5GraphicsSupport_debug"
    libNameForLinkerRelease: "Qt5GraphicsSupport"
    libFilePathDebug: "/Users/searge/Qt/5.9.4/ios/lib/libQt5GraphicsSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.9.4/ios/lib/libQt5GraphicsSupport.a"
    cpp.defines: ["QT_GRAPHICS_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.9.4/ios/include", "/Users/searge/Qt/5.9.4/ios/include/QtGraphicsSupport", "/Users/searge/Qt/5.9.4/ios/include/QtGraphicsSupport/5.9.4", "/Users/searge/Qt/5.9.4/ios/include/QtGraphicsSupport/5.9.4/QtGraphicsSupport"]
    cpp.libraryPaths: ["/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib"]
    isStaticLibrary: true
}
