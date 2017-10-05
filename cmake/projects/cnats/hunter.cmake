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
    "https://github.com/dmpriso/cnats/archive/dmpriso2.tar.gz"
    SHA1
    2ACCBEABE5FD3CC52EB15D6403E0C3EFF06DD849
)

hunter_add_version(
    PACKAGE_NAME
    cnats
    VERSION
    "1.6.0"
    URL
    "https://github.com/nats-io/cnats/archive/v1.6.0.tar.gz"
    SHA1
    E3B459797092BE186E1BD4FFB84F92AB6C482EF4
)

# Probably more versions for real packages...

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME cnats)
