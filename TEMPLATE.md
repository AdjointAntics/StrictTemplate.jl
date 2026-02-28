# Using This Template

This file exists only in the template. `make init` deletes it.

## Create a New Package

### 1. Clone

```bash
gh repo create AdjointAntics/YourPackage.jl --template AdjointAntics/StrictTemplate.jl --public --clone
```

Or click **"Use this template"** on GitHub.

### 2. Initialize

```bash
cd YourPackage.jl
make init NAME=YourPackage
```

One command. Every file, every UUID, every remote — renamed. This file, deleted.

### 3. GitHub Pages

**Settings > Pages** — source: `gh-pages`, folder: `/ (root)`.

### 4. Documenter deploy key (optional)

```julia
using DocumenterTools
DocumenterTools.genkeys(user="AdjointAntics", repo="YourPackage.jl")
```

Public key → deploy key. Private key → `DOCUMENTER_KEY` secret.

---

The universal property of a good template: every package factors through it, uniquely.
