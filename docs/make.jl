using Documenter, DocStringExtensions
using MUSCLE

makedocs(
    sitename = "MUSCLE",
    format = Documenter.HTML(),
    modules = [MUSCLE],
    pages = [
        "Home" => "index.md",
        "Reference" => "reference.md",
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
