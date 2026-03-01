# Contributing to StrictTemplate.jl

## Getting Started

1. Fork and clone the repository
2. Install dependencies: `julia --project=test -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'`
3. Run tests: `julia --project=test test/runtests.jl`

## Development Workflow

1. Create a feature branch from `main`
2. Make your changes
3. Add or update tests in `test/`
4. Run the full test suite
5. Submit a pull request

### What Makes a Good Contribution

A template improvement that benefits every future package. Changes to StrictTemplate.jl flow through to all new packages scaffolded with `make init`.

### Extension Patterns

- **Template structure change**: modify the scaffold files, then test by running `make init NAME=TestPkg` on a fresh clone and verifying the generated package passes `make test`.
- **New infrastructure**: add to the appropriate scaffold directory (`bench/`, `docs/`, `test/`). Ensure generated packages include the correct `[sources]` paths for inter-package dependencies.

### Testing Expectations

The template itself does not have domain-specific tests. Instead, test that generated packages pass `make test` and that the scaffold produces valid `Project.toml`, `CLAUDE.md`, and test infrastructure. Verify that the post-scaffold checklist items are all satisfied.

## Commit Style

Follow [Conventional Commits](https://www.conventionalcommits.org/): `feat:`, `fix:`, `docs:`, `test:`, `chore:`, `refactor:`.

## Standards

- [Engineering standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/engineering.md)
- [Categorical standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/categorical.md)
