# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    cnats
    VERSION
    "1.4.4"
    URL
    "https://github.com/nats-io/cnats/archive/v1.4.4.tar.gz"
    SHA1
    52e34602430578700a1a21a1183c6af5f7ade240
)

# Probably more versions for real packages...

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME cnats)