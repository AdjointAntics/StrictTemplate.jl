"""
    StrictTemplate

Initial object in the category of AdjointAntics packages.

For any package you need, exactly one morphism exists from here to there:
`make init NAME=YourPackage`. That's the universal property — not a slogan,
the actual definition. One command renames every file, regenerates the UUID,
repoints the remote. No choices, no configuration, no second way to do it.

What survives the morphism: CI, docs deployment, benchmark runner, changelog
format, the Makefile. What doesn't: this module, its lone function, these
words. Replace them.

The badge reads `F ⊣ G`. Instantiation freely generates structure; you forget
the template the moment you start working. That adjunction is the whole idea.
"""
module StrictTemplate

export greet

"""
    greet(name)

Return a greeting string for `name`.

Exists to prove the template compiles, exports, and doctests. The identity
morphism made visible — the least interesting function that still demonstrates
the structure works. Delete it once you have something real.

# Examples
```jldoctest
julia> greet("Yoneda")
"Hello, Yoneda!"

julia> greet("World")
"Hello, World!"
```
"""
greet(name) = "Hello, $(name)!"

end # module StrictTemplate
