import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qavfmediaplayer"
    Depends { name: "Qt"; submodules: []}

    className: "AVFMediaPlayerServicePlugin"
    architecture: "x86_64"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5MultimediaWidgets_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5OpenGL_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Multimedia_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Widgets_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Network_debug.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5MultimediaWidgets.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5OpenGL.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Multimedia.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Widgets.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Network.a", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["CoreMedia", "CoreVideo", "QuartzCore", "Foundation", "MobileCoreServices", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText", "AVFoundation"]
    frameworksRelease: ["CoreMedia", "CoreVideo", "QuartzCore", "Foundation", "MobileCoreServices", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText", "AVFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qavfmediaplayer_debug"
    libNameForLinkerRelease: "qavfmediaplayer"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/plugins/mediaservice/libqavfmediaplayer_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/plugins/mediaservice/libqavfmediaplayer.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
