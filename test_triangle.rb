require 'minitest/autorun'
require_relative 'triangle_factory'


class TestTriangle < Minitest::Test
  def test_equilateral_triangle_area
    triangle = TriangleFactory.create_triangle('equilateral', side: 10)
    assert_in_delta 43.301, triangle.area, 0.001
  end
end
