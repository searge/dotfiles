import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ClipboardSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["ImageIO", "QtGui", "QtCore", "DiskArbitration", "IOKit", "AppKit", "OpenGL", "AGL"]
    frameworksRelease: ["ImageIO", "QtGui", "QtCore", "DiskArbitration", "IOKit", "AppKit", "OpenGL", "AGL"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5ClipboardSupport_debug"
    libNameForLinkerRelease: "Qt5ClipboardSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5ClipboardSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5ClipboardSupport.a"
    cpp.defines: ["QT_CLIPBOARD_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtClipboardSupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtClipboardSupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtClipboardSupport/5.10.0/QtClipboardSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
