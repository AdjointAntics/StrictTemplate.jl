<p align="center">
  <img src="https://img.shields.io/badge/F_⊣_G-adjoint paired-00FFCE?style=flat-square" alt="Adjoint Paired"/>
  <img src="https://img.shields.io/badge/julia-1.10+-9558B2?style=flat-square&logo=julia&logoColor=white" alt="Julia 1.10+"/>
  <img src="https://img.shields.io/badge/vibes-immaculate-ff69b4?style=flat-square" alt="Vibes"/>
</p>

# 🧬 StrictTemplate.jl

> *The opinionated starting point for [AdjointAntics](https://github.com/AdjointAntics) packages. Strict about structure, loose about everything else.*

You wouldn't build a house without a foundation. You wouldn't launch a satellite without a checklist. You *definitely* shouldn't start a Julia package without CI, docs, and tests already wired up.

This is that checklist. Clone it, rename it, ship something beautiful.

---

## 🚀 Create a New Package

### 1. Steal this template

On GitHub, click **"Use this template"** > **"Create a new repository"**, or if you prefer the terminal life:

```bash
gh repo create AdjointAntics/YourPackage.jl --template AdjointAntics/StrictTemplate.jl --public --clone
```

### 2. Make it yours

```bash
cd YourPackage.jl
make init NAME=YourPackage
```

This does the boring stuff so you don't have to — replaces all `StrictTemplate` references, generates a fresh UUID, renames the source file, updates the git remote. You're welcome.

### 3. Set up GitHub Pages

Go to **Settings > Pages** and set source to **"Deploy from a branch"** with branch `gh-pages` and folder `/ (root)`.

### 4. Optional: Documenter deploy key

```julia
using DocumenterTools
DocumenterTools.genkeys(user="AdjointAntics", repo="YourPackage.jl")
```

Add the public key as a deploy key and the private key as `DOCUMENTER_KEY` in repo secrets.

---

## 📦 What's In The Box

| | What | Why |
|:--|:--|:--|
| 🧪 | **Tests** | Aqua.jl code quality + placeholder suite. No excuses. |
| 🔁 | **CI** | GitHub Actions on Julia 1.10 + nightly. Ubuntu + macOS. |
| 📖 | **Docs** | Documenter.jl, deployed to GitHub Pages. Write the docs. |
| 🏷️ | **TagBot** | Automated release tagging. Because you'll forget. |
| 🏋️ | **Benchmarks** | BenchmarkTools.jl scaffold with baseline comparison. |
| 📋 | **Changelog** | [Keep a Changelog](https://keepachangelog.com/) format. For the humans. |
| 🔮 | **Strict.jl** | *Coming soon.* Placeholder for code standards enforcement. |

## 🛠️ Makefile Targets

```
make help     🗺️  Show available targets
make init     🧬  Initialize new package from template
make test     🧪  Run test suite
make bench    🏋️  Run benchmarks
make docs     📖  Build documentation locally
make clean    🧹  Remove build artifacts
```

---

<p align="center"><sub>Built with 🫠 by <a href="https://github.com/AdjointAntics">AdjointAntics</a> · Strict about structure, weird about everything else</sub></p>
