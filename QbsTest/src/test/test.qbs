import qbs

QtApplication {
    name: "Test"
    targetName: "Test"

    Depends { name: "Qt"; submodules: ["core","testlib"]; versionAtLeast: "5.4" }
    Depends { name: "GoogleTest"}

    cpp.cxxLanguageVersion: "c++11"
    consoleApplication: true

    files: [
        "QtTypePrinters.h",
        "main.cpp",
        "QStringTest.cpp"
    ]
}
