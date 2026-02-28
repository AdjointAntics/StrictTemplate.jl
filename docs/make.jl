# Build and deploy documentation via Documenter.jl.
#
# Each entry in the `pages` array maps a sidebar label to a markdown file
# in docs/src/. To add a page: create the .md, add it to `pages` below.
#
# prettyurls is CI-only so local builds use plain file paths.
# push_preview deploys docs on PRs, not just on main.

using Documenter
using StrictTemplate

DocMeta.setdocmeta!(StrictTemplate, :DocTestSetup, :(using StrictTemplate); recursive=true)

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
