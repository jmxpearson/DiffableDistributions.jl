using DiffableDistributions

@assert DNormal <: Distributions.AbstractNormal

m = ForwardDiff.GradientNumber(1)
s = ForwardDiff.GradientNumber(3.2)
@assert isa(DNormal(m, s), DNormal)
@assert isa(DNormal(m, 3.2), DNormal)
@assert isa(DNormal(1, s), DNormal)
@assert isa(DNormal(1, 2), DNormal)
@assert isa(Distributions.Normal(m, 2), DNormal)
@assert isa(Distributions.Normal(1., s), DNormal)
@assert isa(Distributions.Normal(m, s), DNormal)
