require_relative 'triangle'

class EquilateralTriangle < Triangle
  def initialize(side)
    @side = side
  end

  def area
    (Math.sqrt(3) / 4) * (@side ** 2)
  end
end
