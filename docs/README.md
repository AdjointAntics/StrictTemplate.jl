# 📖 Documentation

> *Undocumented code is a love letter you never sent.*

Built with [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl).

## Build locally

```bash
make docs
```

Or the scenic route:

```bash
julia --project=docs -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
julia --project=docs docs/make.jl
```

Output lands in `docs/build/`. Open `index.html` and bask.

## Structure

- `src/index.md` — Landing page
- `src/api.md` — Auto-generated API reference from docstrings

## Deploy

CI builds and deploys to GitHub Pages on every push to `main`.
Requires a `DOCUMENTER_KEY` secret (see root README for setup).

The docs deploy themselves. You just have to write them. That's the hard part. We believe in you.
