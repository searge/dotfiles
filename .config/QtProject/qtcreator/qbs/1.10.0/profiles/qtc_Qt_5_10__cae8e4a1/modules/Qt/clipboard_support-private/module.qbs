import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ClipboardSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["ImageIO", "MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "OpenGLES"]
    frameworksRelease: ["ImageIO", "MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreGraphics", "OpenGLES", "CoreText", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ClipboardSupport_debug"
    libNameForLinkerRelease: "Qt5ClipboardSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/lib/libQt5ClipboardSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/lib/libQt5ClipboardSupport.a"
    cpp.defines: ["QT_CLIPBOARD_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include", "/Users/searge/Qt/5.10.0/ios/include/QtClipboardSupport", "/Users/searge/Qt/5.10.0/ios/include/QtClipboardSupport/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtClipboardSupport/5.10.0/QtClipboardSupport"]
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
