set_project("app")
set_version("0.2.0")
set_warnings("all")
add_rules("mode.debug", "mode.release")
add_configfiles("include/config.h.in", { prefix = "APP" })
add_linkdirs("vendor/lib")
add_includedirs("include", "src/lib", "vendor/include")
add_links("LCUI")
add_rpathdirs("./lib")

target("app")
    set_targetdir("app/")
    set_kind("binary")
    add_files("src/**.c")
