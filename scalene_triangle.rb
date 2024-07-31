require_relative 'triangle'

class ScaleneTriangle < Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def area
    s = (@side1 + @side2 + @side3) / 2.0
    Math.sqrt(s * (s - @side1) * (s - @side2) * (@side3))
  end
end
