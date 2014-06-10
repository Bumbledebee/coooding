class Rover

  attr_reader :x, :y, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def input_reading(input)
    input = input.split('')
    input.each do |x|
      if x == "L" then self.left end
      if x == "R" then self.right end
      if x == "M" then self.move end
    end
  end

  def left
    case (@direction)
    when "N" then @direction = "W"
    when "W" then @direction = "S"
    when "S" then @direction = "E"
    when "E" then @direction = "N"
    end
  end

  def right
    case (@direction)
    when "N" then @direction = "E"
    when "W" then @direction = "N"
    when "S" then @direction = "W"
    when "E" then @direction = "S"
    end
  end

  def move
    case (@direction)
      when "N" then @y = @y+1
      when "W" then @x = @x-1
      when "S" then @y = @y-1
      when "E" then @x = @x+1
    end
  end

end
