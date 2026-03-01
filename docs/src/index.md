# StrictTemplate.jl

The universal property of package creation. StrictTemplate.jl is the scaffold that every other package in the AdjointAntics ecosystem factors through — clone it, run `make init`, and you have a fully-wired Julia package with CI, docs, benchmarks, linting, and categorical conventions baked in.

## Quick Start

```sh
git clone https://github.com/AdjointAntics/StrictTemplate.jl MyPackage.jl
cd MyPackage.jl
make init NAME=MyPackage
```

## What You Get

| Component | What It Provides |
|-----------|-----------------|
| `.github/workflows/` | CI (Julia 1.10 + nightly), TagBot, benchmarks |
| `bench/` | HomTime.jl benchmark scaffold with auto-discovery |
| `docs/` | Documenter.jl setup with GitHub Pages deployment |
| `src/` | Module with docstring template |
| `test/` | Aqua quality gates + Strict.jl linting + test scaffold |
| `CLAUDE.md` | AI assistant context template |
| `CONTRIBUTING.md` | Contribution guide |
| `Makefile` | `test` / `bench` / `docs` / `clean` targets |

## Post-Scaffold Checklist

1. Replace `CLAUDE.md` with package-specific architecture details
2. Add your types and functions to `src/`
3. Add tests to `test/test_*.jl`
4. Replace this `docs/src/index.md` with real usage examples
5. Write your README — three sentences: what is it, what does it provide, what structure powers it

See [TEMPLATE.md](https://github.com/AdjointAntics/StrictTemplate.jl/blob/main/TEMPLATE.md) for the full creation guide.

## API Reference

See the [API documentation](@ref).
