"""
This package provides a number of Julia bindings for the [MUSCLE (MUltiple Sequence Comparison by Log-Expectation)](https://drive5.com/muscle5/) 
multiple sequence alignment program. 

For more information on how MUSCLE works, see [MUSCLE: multiple sequence alignment with high accuracy and high throughput](https://doi.org/10.1093/nar/gkh340).
For more information on the latest developments with MUSCLE5, see [Muscle5: High-accuracy alignment ensembles enable unbiased assessments of sequence homology and phylogeny](https://doi.org/10.1038/s41467-022-34630-w)
"""
module MUSCLE

using MUSCLE_jll

using DocStringExtensions
using BioSequences
using FASTX
using PrecompileTools

include("./alignment.jl")
include("./commands.jl")
include("./workload.jl")

export efastats, efa_explode, fa2efa, disperse, addconfseq, letterconf, maxcc, resample

end
