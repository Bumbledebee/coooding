class Plateau

  attr_reader :x, :y, :size

  def initialize(x,y)
    @x = x
    @y = y
    @size = (x+1) * (y+1)
  end

end
