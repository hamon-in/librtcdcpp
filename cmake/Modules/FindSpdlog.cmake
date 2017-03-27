if (NOT TARGET Gabime::Spdlog)
    include(FindPackageHandleStandardArgs)
    find_path(SPDLOG_INCLUDE_DIR NAMES spdlog/spdlog.h)
    find_package_handle_standard_args(Spdlog DEFAULT_MSG SPDLOG_INCLUDE_DIR)
    add_library(spdlog INTERFACE)
    target_include_directories(spdlog INTERFACE ${SPDLOG_INCLUDE_DIR})
    add_library(Gabime::Spdlog ALIAS spdlog)
endif ()