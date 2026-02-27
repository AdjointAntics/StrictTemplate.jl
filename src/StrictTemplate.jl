module StrictTemplate

export greet

"""
    greet(name)

Proof that the template works. Replace with something less trivial.

# Examples
```jldoctest
julia> greet("Yoneda")
"Hello, Yoneda!"
```
"""
greet(name) = "Hello, $(name)!"

end # module StrictTemplate
