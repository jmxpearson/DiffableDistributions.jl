module DiffableDistributions

    ###########
    # imports #
    ###########
    using ForwardDiff
    typealias FDN ForwardDiff.ForwardDiffNumber

    import Distributions:
        Normal, AbstractNormal

    ############
    # includes #
    ############
    include("types.jl")

    ###########
    # exports #
    ###########
    export DNormal

end
