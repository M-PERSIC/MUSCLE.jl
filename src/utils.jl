"""
https://discourse.julialang.org/t/dict-key-value-to-array-in-comprehension/56818/2
"""
function _transform_args(args::Dict{String,Union{Int,String}})
    return collect(
        Iterators.flatten(
            filter(
                pair::Pair -> typeof(pair.second) !== Bool && pair.second != false,
                args,
            ),
        ),
    )
end
