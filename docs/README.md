# Documentation

Built with [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl).

## Build

```bash
make docs
```

Output: `docs/build/`.

## Structure

- `src/index.md` — Landing page
- `src/api.md` — API reference, generated from docstrings

## Deploy

CI deploys to GitHub Pages on push to `main`. Requires `DOCUMENTER_KEY` secret.

The infrastructure writes itself. The documentation does not.
