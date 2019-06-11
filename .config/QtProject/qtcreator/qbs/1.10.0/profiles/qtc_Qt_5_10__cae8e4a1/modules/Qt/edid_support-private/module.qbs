import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EdidSupport"
    Depends { name: "Qt"; submodules: ["core-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core_debug.a", "m", "z", "qtpcre2_debug"]
    staticLibsRelease: ["z", "m", "/Users/searge/Qt/5.10.0/ios/lib/libQt5Core.a", "m", "z", "qtpcre2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EdidSupport_debug"
    libNameForLinkerRelease: "Qt5EdidSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/ios/lib/libQt5EdidSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/ios/lib/libQt5EdidSupport.a"
    cpp.defines: ["QT_EDID_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/ios/include", "/Users/searge/Qt/5.10.0/ios/include/QtEdidSupport", "/Users/searge/Qt/5.10.0/ios/include/QtEdidSupport/5.10.0", "/Users/searge/Qt/5.10.0/ios/include/QtEdidSupport/5.10.0/QtEdidSupport"]
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/ios/lib", "/Users/searge/Qt/5.10.0/ios/lib"]
    isStaticLibrary: true
}
