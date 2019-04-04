# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54418)
set(VERSION_MAJOR 19)
set(VERSION_MINOR 6)
set(VERSION_PATCH 1)
set(VERSION_GITHASH 30d3496c36cf3945c9828ac0b7cf7d1774a9f845)
set(VERSION_DESCRIBE v19.6.1.1-testing)
set(VERSION_STRING 19.6.1.1)
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()

if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")
set (VERSION_SO "${VERSION_STRING}")

math (EXPR VERSION_INTEGER "${VERSION_PATCH} + ${VERSION_MINOR}*1000 + ${VERSION_MAJOR}*1000000")

if(YANDEX_OFFICIAL_BUILD)
    set(VERSION_OFFICIAL " (official build)")
endif()
