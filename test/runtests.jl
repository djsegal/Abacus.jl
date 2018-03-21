using Abacus
using Base.Test

@test isdefined(Main, Symbol("@abacus"))
@test isdefined(Abacus, :setup)
