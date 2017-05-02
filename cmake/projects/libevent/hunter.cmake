# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    libevent
    VERSION
    "2.1.8"
    URL
    "https://github.com/libevent/libevent/archive/release-2.1.8-stable.tar.gz"
    SHA1
    8A37AD06DD28ED3DA785819DA297B1A3B2EA9307
)

# Probably more versions for real packages...

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME libevent)