using Test

@testset "StrictTemplate.jl" begin
    include("aqua.jl")
    include("core.jl")
    # include("strict.jl")  # Uncomment when Strict.jl is available
end
