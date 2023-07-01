# <img src="./sticker.svg" width="30%" align="right" /> MUSCLE.jl

<!-- [![Latest Release](https://img.shields.io/github/release/BioJulia/MUSCLE.jl.svg)](https://github.com/BioJulia/MUSCLE.jl/releases/latest)-->
[![MIT license](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/BioJulia/MUSCLE.jl/blob/master/LICENSE) 
<!-- [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3361839.svg)](https://doi.org/10.5281/zenodo.3361839) -->
[![Stable documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://biojulia.github.io/MUSCLE.jl/stable)
[![Latest documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://biojulia.github.io/MUSCLE.jl/latest/)
<!-- [![Pkg Status](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active) -->

> Note: This package is under extensive development and will receive frequent updates that may break functionality. It is not available in any public registry.


## Description
Julia bindings for the [MUSCLE (MUltiple Sequence Comparison by Log-Expectation)](https://drive5.com/muscle5/) multiple sequence alignment program.

This package is integrated into the broader BioJulia ecosystem, primarily as a multiple sequence alignment backend for [BioAlignments.jl](https://github.com/BioJulia/BioAlignments.jl.git).

## Installation
You can install MUSCLE from the julia REPL.
Press `]` to enter pkg mode, and enter the following:

```julia
add MUSCLE
```

You can also install MUSCLE as an external program via its [JLL](https://docs.binarybuilder.org/stable/jll/) package:

```julia
add MUSCLE_jll
```

If you are interested in the cutting edge of the development, please check out
the master branch to try new features before release.

## Testing
MUSCLE is tested against Julia `1.X` on Linux, OS X, and Windows.

**Latest build status:**

[![Unit tests](https://github.com/BioJulia/MUSCLE.jl/workflows/Unit%20tests/badge.svg?branch=master)](https://github.com/BioJulia/MUSCLE.jl/actions?query=workflow%3A%22Unit+tests%22+branch%3Amaster)
[![Documentation](https://github.com/BioJulia/MUSCLE.jl/workflows/Documentation/badge.svg?branch=master)](https://github.com/BioJulia/MUSCLE.jl/actions?query=workflow%3ADocumentation+branch%3Amaster)
[![](https://codecov.io/gh/BioJulia/MUSCLE.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/BioJulia/MUSCLE.jl)

## Contributing
We appreciate contributions from users including reporting bugs, fixing
issues, improving performance and adding new features.

Take a look at the [contributing files](https://github.com/BioJulia/Contributing)
detailed contributor and maintainer guidelines, and code of conduct.

## Backers & Sponsors
Thank you to all our backers and sponsors!

[![backers](https://opencollective.com/biojulia/backers.svg?width=890)](https://opencollective.com/biojulia#backers)

[![](https://opencollective.com/biojulia/sponsor/0/avatar.svg)](https://opencollective.com/biojulia/sponsor/0/website)
[![](https://opencollective.com/biojulia/sponsor/1/avatar.svg)](https://opencollective.com/biojulia/sponsor/1/website)
[![](https://opencollective.com/biojulia/sponsor/2/avatar.svg)](https://opencollective.com/biojulia/sponsor/2/website)
[![](https://opencollective.com/biojulia/sponsor/3/avatar.svg)](https://opencollective.com/biojulia/sponsor/3/website)
[![](https://opencollective.com/biojulia/sponsor/4/avatar.svg)](https://opencollective.com/biojulia/sponsor/4/website)
[![](https://opencollective.com/biojulia/sponsor/5/avatar.svg)](https://opencollective.com/biojulia/sponsor/5/website)
[![](https://opencollective.com/biojulia/sponsor/6/avatar.svg)](https://opencollective.com/biojulia/sponsor/6/website)
[![](https://opencollective.com/biojulia/sponsor/7/avatar.svg)](https://opencollective.com/biojulia/sponsor/7/website)
[![](https://opencollective.com/biojulia/sponsor/8/avatar.svg)](https://opencollective.com/biojulia/sponsor/8/website)
[![](https://opencollective.com/biojulia/sponsor/9/avatar.svg)](https://opencollective.com/biojulia/sponsor/9/website)

## Questions?
If you have a question about contributing or using BioJulia software, come on over and chat to us on [the Julia Slack workspace](https://julialang.org/slack/), or you can try the [Bio category of the Julia discourse site](https://discourse.julialang.org/c/domain/bio).


