require 'csv'
require 'pry'

class Excursion
  attr_reader :information

  def initialize(filename)
    @filename = filename
  end

  def get_excursion
    @information = Hash.new
    n = 0
    CSV.foreach(@filename) do |row|
      information[n] = row
      n+=1
    end
    @information
    binding.pry
  end

end
