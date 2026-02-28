# Benchmark runner for StrictTemplate.jl
#
# Discovers every *_benchmark.jl file in benchmarks/, loads them into a
# shared SUITE, runs everything, and displays results. If a baseline.json
# exists from a previous run, it loads that too and calls judge() — so you
# see what got faster, what got slower, and by how much.
#
# The convention: each benchmark file defines entries in SUITE. Name it
# correctly and the runner handles the rest.

using BenchmarkTools
using StrictTemplate

const SUITE = BenchmarkGroup()

for file in readdir(joinpath(@__DIR__, "benchmarks"); join=true)
    if endswith(file, "_benchmark.jl")
        include(file)
    end
end

results = run(SUITE; verbose=true)
display(results)

# Compare against saved baseline if it exists
const baseline_path = joinpath(@__DIR__, "baseline.json")
if isfile(baseline_path)
    baseline = BenchmarkTools.load(baseline_path)[1]
    judge(median(results), median(baseline))
end
