<p align="center">
  <img src="https://img.shields.io/badge/F_⊣_G-adjoint paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
</p>

# StrictTemplate.jl

The initial object in the category of [AdjointAntics](https://github.com/AdjointAntics) packages. For any package you want to build, there is exactly one way to start: from here.

A template is not a collection of files. It's a structure — CI, docs, tests, benchmarks, changelog, Makefile — wired together so that every decision is already made. You inherit the decisions. You replace the content. The infrastructure stays; the placeholder goes. That's the contract.

## Quickstart

Three commands. No decisions. That's the universal property.

### 1. Clone the template

```bash
gh repo create AdjointAntics/YourPackage.jl --template AdjointAntics/StrictTemplate.jl --public --clone
```

Or click **"Use this template"** on GitHub if you prefer buttons.

### 2. Rename everything

```bash
cd YourPackage.jl
make init NAME=YourPackage
```

One command. Every file, every UUID, every remote — all renamed. The unique morphism from initial object to your package.

### 3. GitHub Pages

**Settings > Pages** — source: `gh-pages`, folder: `/ (root)`.

### 4. Documenter deploy key (optional)

```julia
using DocumenterTools
DocumenterTools.genkeys(user="AdjointAntics", repo="YourPackage.jl")
```

Public key → deploy key. Private key → `DOCUMENTER_KEY` secret.

## Architecture

What follows is what's here and why it's shaped the way it is.

### Tests

[Aqua.jl](https://github.com/JuliaTesting/Aqua.jl) runs the quality checks you'd forget to write — ambiguities, unbound type parameters, stale dependencies. The core suite covers the public API. Together they assert that two paths to the same result agree. That's all commutativity is, and all correctness ever was.

### CI

Julia 1.10 and nightly on Ubuntu. 1.10 on macOS. `fail-fast: false` so a nightly regression doesn't hide an LTS result. CI maps your package through every supported environment and checks that the structure survives the trip. A functor that doesn't preserve structure isn't a functor — it's a bug.

### Docs

[Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) builds it. GitHub Pages hosts it. The API reference generates itself from docstrings — each function characterized by its behavior on representative inputs. You write the docstrings; everything else is handled.

### Benchmarks

[BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) with baseline comparison. Drop a `*_benchmark.jl` file in `benchmarks/`, the runner discovers it. Save a baseline, and `judge` tells you what got faster and what didn't. Performance is a measurement on every operation, not a feature you add later.

### Changelog

[Keep a Changelog](https://keepachangelog.com) format. [Semantic Versioning](https://semver.org). The accumulated record — what changed, when, what it means. Coherent in retrospect.

### TagBot

Automated releases from registry tags. You register the package; [TagBot](https://github.com/JuliaRegistries/TagBot) cuts the GitHub release.

### Strict.jl

Not yet real. When it is, every package from this template will know.

## Makefile

```
make help     Show targets
make init     Initialize from template
make test     Run tests (Aqua + core suite)
make bench    Run benchmarks (with baseline comparison if available)
make docs     Build docs
make clean    Clean artifacts
```

---

<p align="center"><sub>The universal property of a good template: every package factors through it, uniquely.</sub></p>
