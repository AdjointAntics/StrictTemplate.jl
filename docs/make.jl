using Documenter
using Literate
using StrictTemplate

const literate_dir = joinpath(@__DIR__, "literate")
const generated_dir = joinpath(@__DIR__, "src", "generated")

@info "Building Literate.jl docs"
for (root, _, files) in walkdir(literate_dir)
    for file in files
        if endswith(file, ".jl")
            input = joinpath(root, file)
            Literate.markdown(input, generated_dir; documenter=true)
            Literate.notebook(input, generated_dir)
        end
    end
end

@info "Building Documenter.jl docs"
makedocs(;
    sitename="StrictTemplate.jl",
    modules=[StrictTemplate],
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", nothing) == "true",
    ),
    pages=[
        "Home" => "index.md",
        "Examples" => [
            "generated/example.md",
        ],
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo="github.com/AdjointAntics/StrictTemplate.jl.git",
    devbranch="main",
    push_preview=true,
)
