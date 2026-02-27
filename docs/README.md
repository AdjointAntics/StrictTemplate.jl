# Documentation

Built with [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl).

## Build locally

```bash
make docs
```

Or manually:

```bash
julia --project=docs -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
julia --project=docs docs/make.jl
```

Output goes to `docs/build/`.

## Structure

- `src/index.md` — Landing page
- `src/api.md` — Auto-generated API reference from docstrings

## Deploy

Documentation is built and deployed to GitHub Pages automatically by CI on pushes to `main`.
Requires a `DOCUMENTER_KEY` secret (see root README for setup).
