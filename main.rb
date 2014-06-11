require 'rspec'
require_relative 'lib/control_panel'
require_relative 'lib/excursion'
require_relative 'lib/plateau'
require_relative 'lib/rover'

nasa = Excursion.new("lib/nasa_input.csv")
nasa.get_information
nasa.get_rovers
nasa.get_plateau
nasa.ride_rovers
nasa.print_position


