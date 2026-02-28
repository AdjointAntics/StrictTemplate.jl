# Core tests — the public API, the behavior you promise.
#
# Each @test is a commutativity check: you say greet does X, and it does X.
# Two paths to the same result, agreeing. After `make init`, replace these
# with tests for your actual functions. Keep the structure.

using StrictTemplate

@testset "Core" begin
    @test greet("World") == "Hello, World!"
    @test greet("Julia") == "Hello, Julia!"
    @test greet("Yoneda") == "Hello, Yoneda!"
    @test greet("") == "Hello, !"
end
