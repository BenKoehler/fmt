SET(BK_FMT_VERSION "9.1.0")

add_subdirectory(${PROJECT_SOURCE_DIR}/thirdparty/fmt EXCLUDE_FROM_ALL)
ConfigureCompileOptions(fmt-header-only INTERFACE)

function(link_fmt target MOD)
    target_link_libraries(${target} ${MOD} fmt-header-only)
endfunction()
