"""
    RegistryInstances

Package providing an external source of Pkg's `RegistryInstance`
abstraction, thus not relying on Pkg internals.

Exported structs:
* `RegistryInstance`
* `PkgInfo`
* `PkgEntry`

Exported functions:
* `reachable_registries`
* `registry_info`
* `compat_info`
* `treehash`
* `uuids_from_name`
* `isyanked`
"""
module RegistryInstances

export RegistryInstance, PkgInfo, PkgEntry
export reachable_registries, registry_info, compat_info
export treehash, uuids_from_name, isyanked

# These two functions have been lifted from Pkg's
# `Registry/Registry.jl` file.
function registry_use_pkg_server()
    get(ENV, "JULIA_PKG_SERVER", nothing) !== ""
end

registry_read_from_tarball() = 
    registry_use_pkg_server() && !(get(ENV, "JULIA_PKG_UNPACK_REGISTRY", "") == "true")

# Initially an exact copy of Pkg's `Registry/registry_instance.jl`.
include("registry_instance.jl")

end
