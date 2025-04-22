project "libhydrogen"
    kind "StaticLib"
    language "C"
    cdialect "C99"
    rtti "Off"
    exceptionhandling "Off"
    staticruntime "Off"
    targetdir "bin/%{cfg.buildcfg}"
    includedirs {
        "./"
    }

    files { 
        "hydrogen.c"
    }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"