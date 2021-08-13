"""
    RegistryInstances

Package providing an external source of Pkg's `RegistryInstance`
abstraction, thus not relying on Pkg internals.

Exported structs:
* To be determined.

Exported functions:
* To be determined.
"""
module RegistryInstances

# These two functions have been lifted from Pkg's
# `Registry/Registry.jl` file.
function registry_use_pkg_server()
    get(ENV, "JULIA_PKG_SERVER", nothing) !== ""
end

registry_read_from_tarball() = 
    registry_use_pkg_server() && !(get(ENV, "JULIA_PKG_UNPACK_REGISTRY", "") == "true")

# Initially an exact copy of Pkg's `Registry_registry_instance.jl`.
include("registry_instance.jl")

end
