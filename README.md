# DiffableDistributions.jl

Render the distributions in [Distributions.jl](https://github.com/JuliaStats/Distributions.jl) compatible with automatic differentiation in [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl)

## The strategy:
- This requires that each distribution `d` derives from `Abstract<d>`.
- We create a parameterized, differentiable distribution corresponding to each `d`. Thus, for the case of `Normal <: AbstractNormal`, we have:
```julia
immutable DNormal{T <: Real} <: AbstractNormal
    μ::T
    σ::T
end
```
- We then extend `Normal` with an outer constructor that, when any argument `x::ForwardDiff.ForwardDiffNumber`, delegates to a constructor for `DNormal`.
- This allows `Normal` to continue as a leaf type while allowing differentiability to be facilitated transparently through parameterized distributions.
