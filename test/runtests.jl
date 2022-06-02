import RegistryInstances
using Test: Test, @testset, @test

using Base: UUID

@testset "RegistryInstances.jl" begin
    general_registry = only(
        filter!(
            x -> x.name == "General",
            RegistryInstances.reachable_registries(),
        )
    )
    @test general_registry.name == "General"
    @test general_registry.uuid == UUID("23338594-aafe-5451-b93e-139f81909106")
    @test !isempty(general_registry.pkgs)
end
