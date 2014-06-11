require 'rspec'
require_relative '../lib/excursion'

describe Excursion do
  before(:each) do
    nasa = Excursion.new("lib/nasa_input.csv")
    @information = nasa.get_information
  end

  it "should store the lines of input for this particular excursion to a hash" do
    expect(@information.values.size).to eql 5
  end
end
