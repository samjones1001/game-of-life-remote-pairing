class Cell
  attr_reader :x, :y, :livingness

  def initialize(x, y)
    @x = x
    @y = y
    @livingness = true
  end

  def die
    @livingness = false
  end

end
