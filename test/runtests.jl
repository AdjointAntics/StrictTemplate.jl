# Test entry point for StrictTemplate.jl
#
# One file per concern, each included below. To add tests: create a file,
# include it here. The outer testset groups everything under one name
# so failures report which subsystem broke.
#
# Core checks the public API. Each file asserts that two paths to
# a result agree — that's all a test suite ever is.

using Test

@testset "StrictTemplate.jl" begin
    include("core.jl")
    # include("strict.jl")  # Strict.jl: not yet real. When it ships, uncomment.
end
