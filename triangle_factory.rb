require_relative 'equilateral_triangle'

class TriangleFactory
  def self.create_triangle(type, **kwargs)
    case type
    when 'equilateral'
      EquilateralTriangle.new(kwargs[:side])
    else
      raise ArgumentError, 'Unknown triangle type'
    end
  end
end
