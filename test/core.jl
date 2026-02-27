using StrictTemplate

@testset "Core" begin
    @test greet("World") == "Hello, World!"
    @test greet("Julia") == "Hello, Julia!"
    @test greet("Yoneda") == "Hello, Yoneda!"  # if it works for Yoneda, it works for everyone
    @test greet("") == "Hello, !"               # even the void deserves a greeting
end
