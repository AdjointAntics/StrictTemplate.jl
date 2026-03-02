# Benchmark runner for StrictTemplate.jl

using HomTime
using StrictTemplate

include(joinpath(@__DIR__, "..", "..", "lib", "runners.jl"))

run_benches(@__MODULE__, @__DIR__)
