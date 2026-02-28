# Benchmarks

Performance is a property of every operation you write, whether you measure it or not. This directory is where you measure it.

Uses [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl).

## Run

```bash
make bench
```

## Structure

- `benchmarks/*_benchmark.jl` — Suites, auto-discovered by filename convention
- `run_bench.jl` — Runner: discovers suites, executes them, compares against baseline if one exists

## Add a benchmark

```julia
using BenchmarkTools
using StrictTemplate

SUITE["my_function"] = @benchmarkable my_function(args...)
```

Name the file `*_benchmark.jl` and drop it in `benchmarks/`. The runner finds it.

## Baseline

```julia
BenchmarkTools.save("bench/baseline.json", results)
```

Next run compares automatically. `judge` tells you what moved and which direction.

Time only moves in one direction, but your allocations shouldn't.
