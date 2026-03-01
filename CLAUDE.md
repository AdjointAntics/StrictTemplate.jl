# CLAUDE.md -- Conventions for AI assistants working on StrictTemplate.jl

## Project Overview

StrictTemplate.jl is an AdjointAntics package template. It scaffolds new Julia packages with CI, documentation, benchmarks, and testing infrastructure. It is NOT a runnable package — it's a project generation scaffold.

## Key Files

- `TEMPLATE.md` -- template creation instructions and checklist
- `src/<PackageName>.jl` -- main module (rename on fork)
- `test/runtests.jl` -- test runner (Aqua + test files)
- `bench/` -- benchmark infrastructure (HomTime.jl or BenchmarkTools.jl)
- `docs/` -- Documenter.jl setup

## Running Tests

```sh
make test
# or directly:
julia --project=test -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate(); include("test/runtests.jl")'
```

## Conventions

- Follow [AdjointAntics engineering standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/engineering.md)
- Follow [AdjointAntics categorical standards](https://github.com/AdjointAntics/.github/blob/main/docs/standards/categorical.md)
- When forking this template, rename all occurrences of `StrictTemplate` to your package name
- Every generated package MUST have its own CLAUDE.md adapted from this scaffold

## Post-Scaffold Checklist

After `make init NAME=YourPackage`:

1. **CLAUDE.md** — Replace template content with package-specific sections:
   - Architecture (list all src/ files with one-line descriptions)
   - Key Types (main types the package exports)
   - Key Functions (main functions the package exports)
   - Testing (how to run, list of test files)
   - Pitfalls (common mistakes, gotchas)
   - Extension Guide (how to add new functionality)

2. **src/** — For multi-file packages:
   - Main module file includes all submodules via `include("SubModule.jl")`
   - Group exports by category with section comments
   - Use TitleCase.jl filenames for included files

3. **test/** — Keep `aqua.jl` from template, add `test_*.jl` files:
   - One test file per source module
   - Include all in `runtests.jl` within the main `@testset`

4. **bench/** — For HomTime.jl benchmarks:
   - Update `bench/Project.toml` to depend on HomTime.jl instead of BenchmarkTools
   - Add `[sources]` section with `HomTime = {path = "../../HomTime.jl"}`
   - HomTime UUID: `4ea9fb63-ed65-45bc-904e-cb86f4459fff`

5. **Dependencies** — For inter-package deps:
   - Add `[deps]` section to root Project.toml
   - Add `[sources]` section with relative paths: `Dep = {path = "../Dep.jl"}`

6. **README.md** — Replace placeholder description with three sentences:
   what is it, what does it provide, what structure powers it

7. **docs/src/index.md** — Replace template content with real usage examples

## What NOT to Do

- Do not add external dependencies unless absolutely necessary
- Do not remove the benchmark or documentation infrastructure
- Do not skip algebraic law tests for categorical abstractions
