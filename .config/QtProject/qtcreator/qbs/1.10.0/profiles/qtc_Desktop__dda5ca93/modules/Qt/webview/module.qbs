import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebView"
    Depends { name: "Qt"; submodules: []}

    architecture: "x86_64"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    frameworkPathsRelease: ["/Users/searge/Qt/5.10.0/clang_64/lib"]
    libNameForLinkerDebug: "QtWebView"
    libNameForLinkerRelease: "QtWebView"
    libFilePathDebug: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebView.framework/QtWebView"
    libFilePathRelease: "/Users/searge/Qt/5.10.0/clang_64/lib/QtWebView.framework/QtWebView"
    cpp.defines: ["QT_WEBVIEW_LIB"]
    cpp.includePaths: ["/Users/searge/Qt/5.10.0/clang_64/lib/QtWebView.framework/Headers"]
    cpp.libraryPaths: []
    
}
