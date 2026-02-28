<p align="center">
  <img src="https://img.shields.io/badge/F_⊣_G-adjoint paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
</p>

# StrictTemplate.jl

<!-- TODO: describe your package -->

An [AdjointAntics](https://github.com/AdjointAntics) package.

## Installation

```julia
using Pkg
Pkg.add("StrictTemplate")
```

## Usage

```julia
using StrictTemplate

greet("Yoneda")  # => "Hello, Yoneda!"
```

<!-- TODO: replace with real usage examples -->

## Documentation

Full documentation is available [here](https://AdjointAntics.github.io/StrictTemplate.jl/dev/).

## Contributing

### Project Structure

**Tests** — [Aqua.jl](https://github.com/JuliaTesting/Aqua.jl) checks what you'd forget to write: ambiguities, unbound type parameters, stale dependencies. The core suite covers the public API. A test asserts two paths to the same result agree — commutativity is correctness.

**CI** — Julia 1.10 and nightly on Ubuntu, 1.10 on macOS. `fail-fast: false` so a nightly regression doesn't mask an LTS result. CI maps the package through every supported environment and checks that structure survives the trip.

**Docs** — [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) builds from docstrings. GitHub Pages hosts. PR previews deploy automatically.

**Benchmarks** — [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) with baseline comparison. Drop a `*_benchmark.jl` in `bench/benchmarks/`, the runner discovers it. `judge` tells you what moved.

**Changelog** — [Keep a Changelog](https://keepachangelog.com) format, [Semantic Versioning](https://semver.org).

**TagBot** — Automated releases from registry tags via [TagBot](https://github.com/JuliaRegistries/TagBot).

### Makefile

```
make help     Show targets
make test     Run tests (Aqua + core suite)
make bench    Run benchmarks (with baseline comparison if available)
make docs     Build docs
make clean    Clean artifacts
```

## License

MIT. See [LICENSE](LICENSE).
