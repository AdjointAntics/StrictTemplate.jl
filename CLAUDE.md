# CLAUDE.md -- Conventions for AI assistants working on StrictTemplate.jl

## Project Overview

StrictTemplate.jl is an AdjointAntics package template. It scaffolds new Julia packages with CI, documentation, benchmarks, and testing infrastructure. It is NOT a runnable package — it's a project generation scaffold.

## Key Files

- `TEMPLATE.md` -- template creation instructions and checklist
- `src/<PackageName>.jl` -- main module (rename on fork)
- `test/runtests.jl` -- test runner
- `bench/` -- benchmark infrastructure
- `docs/` -- Documenter.jl setup

## Running Tests

```sh
julia --project=test -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
julia --project=test test/runtests.jl
```

## Conventions

- Follow [AdjointAntics engineering standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/engineering.md)
- Follow [AdjointAntics categorical standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/categorical.md)
- When forking this template, rename all occurrences of `StrictTemplate` to your package name
- Every generated package MUST have its own CLAUDE.md adapted from this scaffold

## What NOT to Do

- Do not add external dependencies unless absolutely necessary
- Do not remove the benchmark or documentation infrastructure
- Do not skip algebraic law tests for categorical abstractions
