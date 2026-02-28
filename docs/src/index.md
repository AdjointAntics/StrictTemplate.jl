# StrictTemplate.jl

The starting point for [AdjointAntics](https://github.com/AdjointAntics) packages — a template that provides CI, docs, tests, benchmarks, and a Makefile, all wired together. Clone it, run `make init`, and the scaffolding becomes yours.

!!! note "Template documentation"
    Everything on this page exists to be replaced. After `make init NAME=YourPackage`, delete these words and write the ones your package actually needs.

## Usage

```julia
using StrictTemplate

greet("Yoneda")  # => "Hello, Yoneda!"
```

The exported function is a placeholder. It proves the module loads, the export resolves, and doctests run. Nothing more. Your package will have real functions; this one just holds the seat.

See the [API Reference](@ref) for exported symbols.

---

The best documentation describes what the code does, then gets out of the way. Start there.
