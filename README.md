<p align="center">
  <a href="https://github.com/AdjointAntics"><img src="https://raw.githubusercontent.com/AdjointAntics/.github/main/profile/logo.svg" alt="AdjointAntics" width="120"/></a>
</p>

<p align="center">
  <a href="https://github.com/AdjointAntics/StrictTemplate.jl/actions/workflows/CI.yml"><img src="https://github.com/AdjointAntics/StrictTemplate.jl/actions/workflows/CI.yml/badge.svg" alt="CI"/></a>
  <a href="https://AdjointAntics.github.io/StrictTemplate.jl/dev/"><img src="https://img.shields.io/badge/docs-dev-00FFCE?style=flat-square" alt="Dev Docs"/></a>
  <img src="https://img.shields.io/badge/F_⊣_G-adjoint paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
</p>

# StrictTemplate.jl

<!-- Your package description goes here. Three sentences:
     What is it? What does it provide? What structure powers it?
     The algebra should speak for itself. -->

An [AdjointAntics](https://github.com/AdjointAntics) package.

## Installation

```julia
using Pkg
Pkg.add("StrictTemplate")
```

## Usage

```julia
using StrictTemplate
```

<!-- Replace with real examples — the morphisms your users compose. -->

## Documentation

[AdjointAntics.github.io/StrictTemplate.jl](https://AdjointAntics.github.io/StrictTemplate.jl/dev/)

---

## Development

Everything below ships with the package. It works out of the box.

| Target | What it does |
|--------|-------------|
| `make test` | Run tests — Strict + core suite |
| `make bench` | Run benchmarks — baseline comparison if available |
| `make docs` | Build documentation locally |
| `make clean` | Remove build artifacts |

### Tests

[Strict.jl](https://github.com/AdjointAntics/Strict.jl) lints what you'd miss — style, consistency, performance, design. The core suite covers the public API. Each test asserts two paths to the same result agree. Commutativity is correctness.

### CI

Julia 1.10 and nightly on Ubuntu, 1.10 on macOS. `fail-fast: false` — a nightly regression doesn't mask an LTS result. Structure survives the trip.

### Documentation

[Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) builds from docstrings. GitHub Pages hosts. PR previews deploy automatically.

The infrastructure writes itself. The documentation does not.

### Benchmarks

[BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) with baseline comparison. Drop a `*_benchmark.jl` in `bench/benchmarks/` — the runner discovers it. `judge` tells you what moved.

### Changelog

[Keep a Changelog](https://keepachangelog.com). [Semantic Versioning](https://semver.org). [TagBot](https://github.com/JuliaRegistries/TagBot) automates releases from registry tags.

## Contributing

[Open an issue](https://github.com/AdjointAntics/StrictTemplate.jl/issues) or submit a pull request.

## License

MIT. See [LICENSE](LICENSE).

---

<p align="center"><em>Seeking the universal property of good software.</em></p>
