module StrictTemplate

export greet

"""
    greet(name)

Return a greeting string. This function exists solely to prove the template works.

Replace it with something that would make a category theorist proud.

# Examples
```jldoctest
julia> greet("Yoneda")
"Hello, Yoneda!"
```
"""
greet(name) = "Hello, $(name)!"

end # module StrictTemplate
