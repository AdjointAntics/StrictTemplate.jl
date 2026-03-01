# Benchmarks

Performance is a property of every operation you write, whether you measure it or not. This directory is where you measure it.

Uses [HomTime.jl](../../HomTime.jl) for hom-functor measurement with trust scores and scaling analysis.

## Run

```bash
make bench
```

## Structure

- `benchmarks/*_benchmark.jl` — Suites, auto-discovered by filename convention
- `run_bench.jl` — Runner: discovers suites, executes them, compares against baseline if one exists

## Add a benchmark

```julia
using HomTime
using StrictTemplate

SUITE["my_function"] = hom() do
    my_function(args...)
end
```

Name the file `*_benchmark.jl` and drop it in `benchmarks/`. The runner finds it.

## Baseline

```julia
save_results("bench/baseline.json", results)
```

Next run compares automatically. `compare` tells you what moved, which direction, and includes trust scores indicating measurement confidence. Scaling analysis detects whether regressions are constant-factor or asymptotic.

Time only moves in one direction, but your allocations shouldn't.
