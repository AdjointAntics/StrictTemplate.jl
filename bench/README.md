# Benchmarks

Uses [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl).

## Run

```bash
make bench
```

## Structure

- `benchmarks/*_benchmark.jl` — Suites, auto-discovered
- `run_bench.jl` — Runner with optional baseline comparison

## Add a benchmark

```julia
using BenchmarkTools
using StrictTemplate

SUITE["my_function"] = @benchmarkable my_function(args...)
```

Drop it in `benchmarks/`. The runner finds it.

## Baseline

```julia
BenchmarkTools.save("bench/baseline.json", results)
```

Next run compares. Time only moves in one direction, but your allocations shouldn't.
