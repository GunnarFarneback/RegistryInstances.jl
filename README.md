# RegistryInstances

Access the information in installed Julia registries.

## Background

Julia's package manager stores package metadata in registries, which
consist of TOML files in a directory structure. For Julia 1.0 to 1.6
it was fairly straightforward to access this information with just a
TOML reader. Julia 1.7 introduced an option to locally store the
registry in an archive format (for very good performance reasons) and
restructured the package manager (`Pkg`) code with an abstraction of
the registries (`RegistryInstance`). Thus it is now better and easier
to use the `RegistryInstance` abstraction, with the drawback that this
is considered an implementation detail in `Pkg` and may change between
Julia minor versions.

## About this Package

The whole purpose of RegistryInstances is to provide the
`RegistryInstance` abstraction without relying on `Pkg` internals. The
advantages of getting it from here instead of from `Pkg` are:

* Does not change with Julia minor versions.
* The key structs and functions are exported and part of the public
  API. Therefore breaking changes will follow semantic versioning
  principles.
* Works with Julia 1.6 and up.

Initially this was based on an exact copy of
[`Registry/registry_instance.jl`](https://github.com/JuliaLang/Pkg.jl/blob/74643bee0bf446bb649280c36749c29f6114aa33/src/Registry/registry_instance.jl)
from `Pkg` on August 12, 2021.

## Public API

The public API consists of the structs

* to be determined

and the functions

* to be determined
