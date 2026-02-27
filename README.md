<p align="center">
  <img src="https://img.shields.io/badge/F_⊣_G-adjoint paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
</p>

# StrictTemplate.jl

The starting point for [AdjointAntics](https://github.com/AdjointAntics) packages.

Every decision in this template was made so you don't have to. CI runs. Docs deploy. Tests exist. Benchmarks have a place to live. The changelog knows what format it is. You are free to think about the actual problem.

## Create a New Package

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

### 3. GitHub Pages

**Settings > Pages** — source: `gh-pages`, folder: `/ (root)`.

### 4. Documenter deploy key (optional)

```julia
using DocumenterTools
DocumenterTools.genkeys(user="AdjointAntics", repo="YourPackage.jl")
```

Public key → deploy key. Private key → `DOCUMENTER_KEY` secret.

## What's Here

- **Tests** — Aqua.jl quality checks. A placeholder suite that proves the module loads.
- **CI** — Julia 1.10 + nightly on Ubuntu and macOS. It either passes or it doesn't.
- **Docs** — Documenter.jl. Deploys itself. You just have to write words.
- **Benchmarks** — BenchmarkTools.jl scaffold. Baseline comparison built in.
- **Changelog** — Keep a Changelog. For when you forget what you did last Tuesday.
- **TagBot** — Makes releases so you can pretend you planned them.
- **Strict.jl** — Not yet real. When it is, every package from this template will know.

## Makefile

```
make help     Show targets
make init     Initialize from template
make test     Run tests
make bench    Run benchmarks
make docs     Build docs
make clean    Clean artifacts
```

---

<p align="center"><sub>The universal property of a good template is that every package factors through it uniquely.</sub></p>
