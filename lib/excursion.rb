require 'csv'

class Excursion
  attr_reader :information

  def initialize(filename)
    @filename = filename
  end

  def get_information
    @information = Hash.new
    n = 0
    CSV.foreach(@filename) do |row|
      information[n] = row
      n+=1
    end
    @information
  end

  def get_rovers
    rover_one_x = @information[1].first.split[0].to_i
    rover_one_y = @information[1].first.split[1].to_i
    rover_one_direction = @information[1].first.split[2]
    rover_two_x = @information[3].first.split[0].to_i
    rover_two_y = @information[3].first.split[1].to_i
    rover_two_direction = @information[3].first.split[2]
    @rover_one = Rover.new(rover_one_x, rover_one_y, rover_one_direction)
    @rover_two = Rover.new(rover_two_x, rover_two_y, rover_two_direction)
  end

  def get_plateau
    x = @information[0].first.delete(' ').split('').map(&:to_i).first
    y = @information[0].first.delete(' ').split('').map(&:to_i).last
    plateau = Plateau.new(x,y)
  end

  def ride_rovers
    rover_one_input = @information[2].first
    rover_two_input = @information[4].first
    @rover_one.input_reading(rover_one_input)
    @rover_two.input_reading(rover_two_input)
  end

  def print_position
    File.open("output.csv", "w") {|f|
      f << @rover_one.x.to_s + ' ' + @rover_one.y.to_s + ' ' + @rover_one.direction + "\n"
      f << @rover_two.x.to_s + ' ' + @rover_two.y.to_s + ' ' + @rover_two.direction
    }
  end
end
