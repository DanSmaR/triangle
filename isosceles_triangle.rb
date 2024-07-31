require_relative 'triangle'

class IsoscelesTriangle < Triangle
  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    0.5 * @base * @height
  end
end
