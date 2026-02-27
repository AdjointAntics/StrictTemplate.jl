# 🏋️ Benchmarks

> *If you didn't measure it, it didn't happen.*

Uses [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) — the gold standard for making Julia go brrr.

## Run

```bash
make bench
```

Or if you enjoy typing:

```bash
julia --project=bench bench/run_bench.jl
```

## Structure

- `benchmarks/*_benchmark.jl` — Benchmark suites (auto-discovered by `run_bench.jl`)
- `run_bench.jl` — Collects all suites, runs them, judges against baseline if one exists

## Adding benchmarks

Drop a file in `benchmarks/` following the `<name>_benchmark.jl` convention:

```julia
using BenchmarkTools
using StrictTemplate

SUITE["my_function"] = @benchmarkable my_function(args...)
```

The runner picks it up automatically. No registry, no config, no drama.

## 📊 Baseline comparison

Save a baseline after a good run:

```julia
using BenchmarkTools
BenchmarkTools.save("bench/baseline.json", results)
```

Future runs compare against it. Regressions get called out. Your past self holds your future self accountable.
