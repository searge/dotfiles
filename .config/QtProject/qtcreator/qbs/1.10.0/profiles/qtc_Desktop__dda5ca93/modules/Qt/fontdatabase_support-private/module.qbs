import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "FontDatabaseSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: ["qtfreetype_debug", "qtlibpng_debug", "z"]
    staticLibsRelease: ["qtfreetype", "qtlibpng", "z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "CoreFoundation", "CoreGraphics", "CoreText", "Foundation", "AppKit", "OpenGL", "AGL"]
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "CoreFoundation", "CoreGraphics", "CoreText", "Foundation", "AppKit", "OpenGL", "AGL"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "Qt5FontDatabaseSupport_debug"
    libNameForLinkerRelease: "Qt5FontDatabaseSupport"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5FontDatabaseSupport_debug.a"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/libQt5FontDatabaseSupport.a"
    cpp.defines: ["QT_FONTDATABASE_SUPPORT_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/include", "/Users/searge/Qt/5.10.0/clang_64/include/QtFontDatabaseSupport", "/Users/searge/Qt/5.10.0/clang_64/include/QtFontDatabaseSupport/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/include/QtFontDatabaseSupport/5.10.0/QtFontDatabaseSupport"]
    cpp.libraryPaths: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    isStaticLibrary: true
}
