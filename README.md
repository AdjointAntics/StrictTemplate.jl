<p align="center">
  <a href="https://github.com/AdjointAntics"><img src="https://raw.githubusercontent.com/AdjointAntics/.github/main/profile/logo.svg" alt="AdjointAntics" width="120"/></a>
</p>

<p align="center">
  <a href="https://github.com/AdjointAntics/StrictTemplate.jl/actions/workflows/CI.yml"><img src="https://github.com/AdjointAntics/StrictTemplate.jl/actions/workflows/CI.yml/badge.svg" alt="CI"/></a>
  <a href="https://AdjointAntics.github.io/StrictTemplate.jl/dev/"><img src="https://img.shields.io/badge/docs-dev-00FFCE?style=flat-square" alt="Dev Docs"/></a>
  <img src="https://img.shields.io/badge/F_%E2%8A%A3_G-adjoint%20paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
</p>

# StrictTemplate.jl — The universal property of package creation

StrictTemplate.jl is the scaffold that every other package in the AdjointAntics ecosystem factors through. Clone it, run `make init`, and you have a fully-wired Julia package with CI, docs, benchmarks, linting, and the categorical conventions baked in. Every package you see in this org started here.

## What You Get

```
MyPackage.jl/
├── .github/workflows/    CI + TagBot + benchmarks
├── bench/                HomTime.jl benchmark scaffold
├── docs/                 Documenter.jl setup
├── src/MyPackage.jl      Module with docstring template
├── test/                 Aqua + Strict + test scaffold
├── CHANGELOG.md          Keep a Changelog format
├── CLAUDE.md             AI assistant context
├── CONTRIBUTING.md       Contribution guide
├── LICENSE               MIT
├── Makefile              test / bench / docs / clean
├── Project.toml          Package metadata
└── README.md             This very template
```

See [TEMPLATE.md](TEMPLATE.md) for the 4-step creation guide.

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

[BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) with baseline comparison. Drop a `*_benchmark.jl` in `bench/benchmarks/` — the runner discovers it. `judge` tells you what moved. The template ships with BenchmarkTools.jl; ecosystem packages should switch to [HomTime.jl](https://github.com/AdjointAntics/HomTime.jl) after initialization (see the post-scaffold checklist in CLAUDE.md).

### Changelog

[Keep a Changelog](https://keepachangelog.com). [Semantic Versioning](https://semver.org). [TagBot](https://github.com/JuliaRegistries/TagBot) automates releases from registry tags.

## Contributing

See the [Contributing Guide](CONTRIBUTING.md). [Open an issue](https://github.com/AdjointAntics/StrictTemplate.jl/issues) or submit a pull request.

## Part of AdjointAntics

This package is part of the [AdjointAntics](https://github.com/AdjointAntics/.github/blob/main/README.md) ecosystem. See the [glossary](https://github.com/AdjointAntics/.github/blob/main/GLOSSARY.md) for categorical terminology and the [standards](https://github.com/AdjointAntics/.github/blob/main/STANDARDS.md) for conventions.

## License

MIT. See [LICENSE](LICENSE).

---

<p align="center"><em>Seeking the universal property of good software.</em></p>
