import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qtaudio_coreaudio"
    Depends { name: "Qt"; submodules: []}

    className: "CoreAudioPlugin"
    architecture: "x86"
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Multimedia_debug.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui_debug.a", "qtlibpng_debug", "qtharfbuzz_debug", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Network_debug.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Multimedia.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Gui.a", "qtlibpng", "qtharfbuzz", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Network.a", "/Users/searge/Qt/5.9.4/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["Foundation", "AVFoundation", "CoreAudio", "AudioToolbox", "MobileCoreServices", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworksRelease: ["Foundation", "AVFoundation", "CoreAudio", "AudioToolbox", "MobileCoreServices", "UIKit", "CoreFoundation", "Security", "CoreGraphics", "OpenGLES", "CoreText"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qtaudio_coreaudio_debug"
    libNameForLinkerRelease: "qtaudio_coreaudio"
    libFilePathDebug: "/Users/searge/Qt/5.9.4/ios/plugins/audio/libqtaudio_coreaudio_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.9.4/ios/plugins/audio/libqtaudio_coreaudio.a"
    cpp.libraryPaths: ["/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib", "/Users/searge/Qt/5.9.4/ios/lib"]
    isStaticLibrary: true
}
