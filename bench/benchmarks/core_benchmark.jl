# Placeholder benchmark — demonstrates the HomTime.jl convention.
#
# Define _build_suite() returning a Suite, and optionally _run_scaling()
# and _run_complexity() for informational analysis.
# After `make init`, replace this with benchmarks for your actual hot paths.

using HomTime
using StrictTemplate

function _build_suite()
    suite("StrictTemplate.jl") do d
        d[:greet] = hom(:greet, greet, "World"; samples=100, seconds=1.0)
    end
end
