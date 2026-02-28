# Placeholder benchmark — demonstrates the convention.
#
# Define entries in the shared SUITE BenchmarkGroup. Name your file
# *_benchmark.jl and the runner discovers it automatically.
# After `make init`, replace this with benchmarks for your actual hot paths.

using BenchmarkTools
using StrictTemplate

SUITE["greet"] = @benchmarkable greet("World")
