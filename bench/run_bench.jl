# Benchmark runner for StrictTemplate.jl
#
# Uses HomTime.jl's benchmark_main for CI integration.
# Run: julia --project=bench bench/run_bench.jl
# CI:  julia --project=bench bench/run_bench.jl --baseline latest --evidence --fail
#
# After `make init`, replace the placeholder benchmarks with your actual hot paths.

using HomTime
using StrictTemplate

include(joinpath(@__DIR__, "benchmarks/core_benchmark.jl"))

benchmark_main(ARGS) do
    _build_suite()
end
