using BenchmarkTools
using StrictTemplate

const SUITE = BenchmarkGroup()

SUITE["greet"] = @benchmarkable greet("World")
