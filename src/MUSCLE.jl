"""
"""
module MUSCLE

using MUSCLE_jll

using FASTX
using BioSequences
using BioAlignments

include("./precompile.jl")
include("./utils.jl")

import Base: show

"""
"""
Base.@kwdef struct Muscle
    muscle_version::VersionNumber = v"5.2"
    diags::Bool = false
    maxiters::Int = 16
    quiet::Bool = true
end

Base.show(io::IO, ::MIME"text/plain", m::Muscle) = print(
    io,
    (raw"$(muscle()) " * "-diags $(m.diags) -maxiters $(m.maxiters) -quiet $(m.quiet)"),
)

"""
function align(alignment::Muscle,
    input::String,
    perturb::Int,
    perm::Symbol,
    stratified::Bool,
    diversified::Bool,
    replicates::Int,
    consiters::Int,
    refineiters::Int
)

end
"""

"""
"""
function super5() end

"""
"""
function efastats() end

"""
"""
function efa_explode() end

"""
"""
function disperse() end

"""
"""
function super5() end

"""
"""
function addconfseq() end

"""
"""
function letterconf() end

"""
"""
function maxcc() end

"""
"""
function resample() end

end
