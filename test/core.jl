using StrictTemplate

@testset "Core" begin
    @test greet("World") == "Hello, World!"
    @test greet("Julia") == "Hello, Julia!"
    @test greet("") == "Hello, !"
end
