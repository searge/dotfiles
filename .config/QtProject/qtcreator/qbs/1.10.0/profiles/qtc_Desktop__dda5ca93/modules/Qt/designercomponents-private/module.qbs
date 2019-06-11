import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DesignerComponents"
    Depends { name: "Qt"; submodules: ["core", "gui-private", "widgets-private", "designer-private", "xml"]}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtDesigner", "QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtXml"]
    frameworksRelease: ["QtDesigner", "QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtXml"]
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib", "/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtDesignerComponents"
    libNameForLinkerRelease: "QtDesignerComponents"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtDesignerComponents.framework/QtDesignerComponents"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtDesignerComponents.framework/QtDesignerComponents"
    cpp.defines: ["QT_DESIGNERCOMPONENTS_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtDesignerComponents.framework/Headers", "/Users/searge/Qt/5.10.0/clang_64/lib/QtDesignerComponents.framework/Headers/5.10.0", "/Users/searge/Qt/5.10.0/clang_64/lib/QtDesignerComponents.framework/Headers/5.10.0/QtDesignerComponents"]
    cpp.libraryPaths: []
    
}
