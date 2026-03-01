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

## Commit Style

Follow [Conventional Commits](https://www.conventionalcommits.org/): `feat:`, `fix:`, `docs:`, `test:`, `chore:`, `refactor:`.

## Standards

- [Engineering standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/engineering.md)
- [Categorical standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/categorical.md)
