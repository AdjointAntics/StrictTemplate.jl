using Aqua, StrictTemplate

@testset "Aqua" begin
    Aqua.test_all(StrictTemplate; ambiguities=false)
end
