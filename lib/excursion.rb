require 'csv'

class Excursion
  attr_reader :excursion

  def initialize(filename)
    @filename = filename
  end

  def get_excursion
    @excursion = Hash.new
    n = 0
    CSV.foreach(@filename, headers: true) do |row|
      excursion[n] = ControlPanel.new(row["rover_instructions"])
      n+=1
    end
    @excursion
  end

end
