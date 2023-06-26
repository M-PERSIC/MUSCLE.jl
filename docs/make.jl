using MUSCLE
using Documenter

DocMeta.setdocmeta!(MUSCLE, :DocTestSetup, :(using MUSCLE); recursive=true)

makedocs(;
    modules=[MUSCLE],
    authors="Michael Persico <michael.a.persico@gmail.com> and contributors",
    repo="https://github.com/M-PERSIC/MUSCLE.jl/blob/{commit}{path}#{line}",
    sitename="MUSCLE.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://M-PERSIC.github.io/MUSCLE.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/M-PERSIC/MUSCLE.jl",
    devbranch="main",
)
