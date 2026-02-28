# Aqua.jl — automated package quality checks.
#
# Catches what you'd never think to test: method ambiguities, unbound type
# parameters, stale dependencies, missing compat entries. The kind of
# structural rot that accumulates silently until something breaks at 2am.
#
# ambiguities=false because there's nothing to be ambiguous about yet.
# Turn it on when your method signatures start overlapping.

using Aqua, StrictTemplate

@testset "Aqua" begin
    Aqua.test_all(StrictTemplate; ambiguities=false)
end
