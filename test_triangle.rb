require 'minitest/autorun'
require_relative 'triangle_factory'

class TestTriangle < Minitest::Test
  def test_equilateral_triangle_area
    triangle = TriangleFactory.create_triangle('equilateral', side: 10)
    assert_in_delta 43.301, triangle.area, 0.001
  end

  def test_scalene_triangle_area
    triangle = TriangleFactory.create_triangle('scalene', side1: 3, side2: 5, side3: 6)
    assert_in_delta 18.3, triangle.area, 0.1
  end

  def test_isosceles_triangle_area
    triangle = TriangleFactory.create_triangle('isosceles', base: 10, height: 8)
    assert_in_delta 40.0, triangle.area, 0.1
  end
end
