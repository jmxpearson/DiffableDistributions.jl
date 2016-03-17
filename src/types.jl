
immutable DNormal{T <: Real} <: AbstractNormal
    μ::T
    σ::T

    DNormal(μ, σ) = new(μ, σ)
end

# DNormal constructors
DNormal{T <: Real}(μ::T, σ::T) = DNormal{T}(μ, σ)
DNormal(μ::Real, σ::Real) = DNormal(promote(μ, σ)...)

# Forwarding from Normal when one argument is differentiated
Normal(μ::FDN, σ::FDN) = DNormal(μ, σ)
Normal(μ::FDN, σ::Real) = DNormal(μ, σ)
Normal(μ::Real, σ::FDN) = DNormal(μ, σ)
