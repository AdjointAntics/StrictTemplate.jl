# Documentation

This README is about the documentation infrastructure, not the documentation itself.

Built with [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl).

## Build

```bash
make docs
```

Output lands in `docs/build/`.

## Structure

- `src/index.md` — Landing page
- `src/api.md` — API reference, generated from docstrings

To add a page: create a `.md` file in `docs/src/`, then add an entry to the `pages` array in `make.jl`. Order in the array is order in the sidebar.

## Deploy

CI deploys to GitHub Pages on push to `main`. Requires the `DOCUMENTER_KEY` secret. PR previews deploy automatically when `push_preview=true` in `make.jl`.

The infrastructure writes itself. The documentation does not.
