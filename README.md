# Abacus

music by: [Ghost & Kozmos](https://soundcloud.com/the-ghost-that-haunts-your-house/ghost-kozmos-abacus-theme-electro-swing-remix)

[![Build Status](https://travis-ci.com/djsegal/Abacus.jl.svg?token=6MoHrva8xz9sBJHXmzmz&branch=master)](https://travis-ci.com/djsegal/Abacus.jl)
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/djsegal/webio-binder/master?filepath=webio.ipynb)

-----

### Instructions

note: must be using Python 2.x // :(

1) enter this into a julia repl:

```julia
> Pkg.clone("https://github.com/djsegal/Abacus.jl")
> Pkg.build("WebIO")
```

2) now you can play abacus in jupyter!

```julia
using Abacus

function foo()
  for cur_index in 99:-1:0
    print("$(cur_index) bottles of beer on the wall. ")
    println("$(cur_index) bottles of beer.")
    println("Take one down. Pass it around.")
    sleep(0.5)
  end
end

@abacus foo()
```
