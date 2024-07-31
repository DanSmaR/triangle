require_relative 'equilateral_triangle'
require_relative 'scalene_triangle'

class TriangleFactory
  def self.create_triangle(type, **kwargs)
    case type
    when 'equilateral'
      EquilateralTriangle.new(kwargs[:side])
    when 'scalene'
      ScaleneTriangle.new(kwargs[:side1], kwargs[:side2], kwargs[:side3])
    else
      raise ArgumentError, 'Unknown triangle type'
    end
  end
end
