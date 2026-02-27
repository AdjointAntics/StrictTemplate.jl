# StrictTemplate.jl

Template repository for creating new [AdjointAntics](https://github.com/AdjointAntics) Julia packages.

## Create a New Package

### 1. Create repo from template

On GitHub, click **"Use this template"** > **"Create a new repository"**, or:

```bash
gh repo create AdjointAntics/YourPackage.jl --template AdjointAntics/StrictTemplate.jl --public --clone
```

### 2. Initialize

```bash
cd YourPackage.jl
make init NAME=YourPackage
```

This replaces all `StrictTemplate` references, generates a fresh UUID, renames the source file, and updates the git remote.

### 3. Set up GitHub Pages

Go to **Settings > Pages** and set source to **"Deploy from a branch"** with branch `gh-pages` and folder `/ (root)`.

### 4. Optional: Documenter deploy key

Generate a deploy key for documentation:

```julia
using DocumenterTools
DocumenterTools.genkeys(user="AdjointAntics", repo="YourPackage.jl")
```

Add the public key as a deploy key and the private key as `DOCUMENTER_KEY` in repo secrets.

## What's Included

- **CI**: GitHub Actions testing on Julia 1.10 + nightly (Ubuntu, macOS)
- **Docs**: Documenter.jl + Literate.jl, deployed to GitHub Pages
- **Tests**: Aqua.jl code quality checks + placeholder test suite
- **Releases**: TagBot for automated release tagging
- **Strict.jl**: Placeholder for future code standards enforcement

## Makefile Targets

```
make help    Show available targets
make init    Initialize new package from template
make test    Run test suite
make docs    Build documentation locally
make clean   Remove build artifacts
```
