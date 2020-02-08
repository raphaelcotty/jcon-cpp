import qbs 1.0

StaticLibrary {
    name: "jcon-cpp"
    Depends { name: "cpp" }
    cpp.cxxLanguageVersion:"c++14"
    Depends { name: "Qt"; submodules: ["core", "network", "test", "websockets"] }
    files: [
        "src/jcon/*.h",
        "src/jcon/*.cpp"
    ]
    Export {
        Depends { name: "cpp" }
        cpp.cxxLanguageVersion:"c++14"
        cpp.includePaths: "src"
    }
}
