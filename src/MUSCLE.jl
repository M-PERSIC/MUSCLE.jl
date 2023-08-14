"""
This package provides a number of Julia bindings for the [MUSCLE (MUltiple Sequence Comparison by Log-Expectation)](https://drive5.com/muscle5/) 
multiple sequence alignment program. 

For more information on how MUSCLE works, see https://doi.org/10.1093/nar/gkh340
For more information on the latest developments with MUSCLE5, see https://doi.org/10.1038/s41467-022-34630-w
"""
module MUSCLE

using MUSCLE_jll

using BioSequences
using FASTX
using PrecompileTools
using Random

include("ensembles.jl")
include("align.jl")

include("./utils.jl")
include("./workload.jl")

# export fa2efa

end
