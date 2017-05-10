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
    "1.5.0"
    URL
    "https://github.com/dmpriso/cnats/archive/dmpriso4.tar.gz"
    SHA1
    4079aee7d708fe7e68aa774c80d58c1c94636e0d
)

# Probably more versions for real packages...

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME cnats)