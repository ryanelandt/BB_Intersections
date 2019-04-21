
eM_box = output_eMesh_box()

@testset "extensions" begin
    @test_throws ErrorException volume(as_tri_eMesh(eM_box))
    @test_throws ErrorException area(as_tet_eMesh(eM_box))

    c = SVector(99.0, 99.0, 99.0)
    e = SVector(1.0, 2.0, 3.0)

    aabb = AABB(c, e)
    @test 8 * 6.0 == volume(aabb)
    @test 4 * 22.0 == area(aabb)
end
