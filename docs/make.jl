using Documenter
using StrictTemplate

@info "Building Documenter.jl docs"
makedocs(;
    sitename="StrictTemplate.jl",
    modules=[StrictTemplate],
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", nothing) == "true",
    ),
    pages=[
        "Home" => "index.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo="github.com/AdjointAntics/StrictTemplate.jl.git",
    devbranch="main",
    push_preview=true,
)
