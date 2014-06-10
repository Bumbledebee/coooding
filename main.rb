require 'rspec'
require_relative 'lib/control_panel'
require_relative 'lib/excursion'
require_relative 'lib/plateau'
require_relative 'lib/rover'

nasa = Excursion.new("lib/nasa_input.csv")
nasa.get_excursion

plateau = Plateau.new(5,5)

rovers = []
rover_one = Rover.new(1,2,"N")
rover_two = Rover.new(3,3,"E")
rovers << rover_one
rovers << rover_two

rovers[0].input_reading(nasa.excursion[0].input)
rovers[1].input_reading(nasa.excursion[1].input)
puts "first rover position"
print rovers[0].x
print rovers[0].y
puts rovers[0].direction
puts "second rover position"
print rovers[1].x
print rovers[1].y
puts rovers[1].direction
