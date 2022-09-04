add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/fmt EXCLUDE_FROM_ALL)
ConfigureCompileOptions(fmt-header-only INTERFACE)
ConfigureCompileOptions(fmt PUBLIC)

function(link_fmt target MOD)
    target_link_libraries(${target} ${MOD} fmt-header-only)
#    target_link_libraries(${target} ${MOD} fmt)
endfunction()
