# Benchmarks

Uses [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl).

## Run

```bash
make bench
```

Or manually:

```bash
julia --project=. bench/run_bench.jl
```

## Structure

- `benchmarks/*_benchmark.jl` — Benchmark suites (auto-discovered by `run_bench.jl`)
- `run_bench.jl` — Runner that collects all suites, executes, and optionally compares against a saved baseline

## Adding benchmarks

Create a new file in `benchmarks/` following the naming convention `<name>_benchmark.jl`:

```julia
using BenchmarkTools
using StrictTemplate

SUITE["my_function"] = @benchmarkable my_function(args...)
```

The runner will pick it up automatically.

## Baseline comparison

Save a baseline:

```julia
using BenchmarkTools
BenchmarkTools.save("bench/baseline.json", results)
```

Subsequent runs will compare against it and report regressions.
