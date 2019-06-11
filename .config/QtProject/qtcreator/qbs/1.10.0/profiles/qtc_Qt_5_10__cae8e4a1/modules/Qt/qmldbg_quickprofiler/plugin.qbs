import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qmldbg_quickprofiler"
    Depends { name: "Qt"; submodules: []}

    className: "QQuickProfilerAdapterFactory"
    architecture: "x86_64"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5PacketProtocol_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Quick_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Qml_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Network_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5PacketProtocol.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Quick.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Qml.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Network.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qmldbg_quickprofiler_debug"
    libNameForLinkerRelease: "qmldbg_quickprofiler"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/plugins/qmltooling/libqmldbg_quickprofiler_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/plugins/qmltooling/libqmldbg_quickprofiler.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
