import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qavfcamera"
    Depends { name: "Qt"; submodules: []}

    className: "AVFServicePlugin"
    architecture: "x86"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Multimedia_debug.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Network_debug.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Multimedia.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Network.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["CoreFoundation", "Foundation", "AudioToolbox", "CoreAudio", "QuartzCore", "CoreMedia", "CoreGraphics", "CoreVideo", "MobileCoreServices", "UIKit", "Security", "OpenGLES", "CoreText", "AVFoundation"]
    frameworksRelease: ["CoreFoundation", "Foundation", "AudioToolbox", "CoreAudio", "QuartzCore", "CoreMedia", "CoreGraphics", "CoreVideo", "MobileCoreServices", "UIKit", "Security", "OpenGLES", "CoreText", "AVFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qavfcamera_debug"
    libNameForLinkerRelease: "qavfcamera"
    libFilePathDebug: "/Users/searge/Qt/5.9.4/ios/plugins/mediaservice/libqavfcamera_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.9.4/ios/plugins/mediaservice/libqavfcamera.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib"]
    isStaticLibrary: true
}
