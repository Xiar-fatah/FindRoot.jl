using FindRoot
using Documenter

DocMeta.setdocmeta!(FindRoot, :DocTestSetup, :(using FindRoot); recursive=true)

makedocs(;
    modules=[FindRoot],
    authors="Kiar Fatah",
    repo="https://github.com/xiar-fatah/FindRoot.jl/blob/{commit}{path}#{line}",
    sitename="FindRoot.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://xiar-fatah.github.io/FindRoot.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/xiar-fatah/FindRoot.jl",
    devbranch="main",
)
