import qbs

StaticLibrary {
    name: "GoogleTest"
    files: [
        "googletest/googletest/src/gtest-all.cc",
        "googletest/googlemock/src/gmock-all.cc"
    ]

    cpp.includePaths: [
        "googletest/googletest/include",
        "googletest/googlemock/include",
        "googletest/googletest",
        "googletest/googlemock"
    ]
    cpp.cxxLanguageVersion: "c++11"

    Depends { name: "cpp" }
    Export {
        Depends { name: "cpp" }
        cpp.includePaths: [
            "googletest/googletest/include",
            "googletest/googlemock/include"
        ]
    }
}

//product.sourceDirectory + '/libs/3rdparty/googletest/googletest/googletest/include',
//product.sourceDirectory + '/libs/3rdparty/googletest/googletest/googlemock/include',
//"googletest/googletest/include",
//"googletest/googlemock/include"
