# Tests for IO.jl

using Base.Test
using SciScriptTools.IO: find_files

@testset "IO" begin
    @testset "findfiles" begin

    list = find_files("IO.j")
    @test length(find("IO.jl" .== list)) == 1

    list = find_files(suffix=".jl")
    @test length(list) >= 1

    list = find_files("IO"; suffix="jl")
    @test length(find("IO.jl" .== list)) == 1

    list = find_files("IO"; suffix="jl", path="../src/")
    @test length(find("IO.jl" .== list)) == 1

    end
end