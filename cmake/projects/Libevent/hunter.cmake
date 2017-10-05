# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME Libevent
    VERSION "2.1.9"
    URL "https://github.com/dmpriso/libevent/archive/dmpriso1.tar.gz"
    SHA1 "F5462FD61FC9F31D3BBBD29392CE137E2839711B")
hunter_cmake_args(Libevent CMAKE_ARGS
                  EVENT__DISABLE_TESTS=ON
                  EVENT__DISABLE_SAMPLES=ON
                  EVENT__DISABLE_REGRESS=ON
                  EVENT__DISABLE_BENCHMARK=ON)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Libevent)
hunter_download(PACKAGE_NAME Libevent)
