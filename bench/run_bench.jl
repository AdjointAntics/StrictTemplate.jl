using BenchmarkTools
using StrictTemplate

# Collect all *_benchmark.jl files
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
