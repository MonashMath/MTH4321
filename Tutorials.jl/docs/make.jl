using Documenter, Tutorials

makedocs(;
    modules=[Tutorials],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/monashmath/Tutorials.jl/blob/{commit}{path}#L{line}",
    sitename="Tutorials.jl",
    authors="Santiago Badia",
    assets=String[],
)

deploydocs(;
    repo="github.com/monashmath/Tutorials.jl",
)
