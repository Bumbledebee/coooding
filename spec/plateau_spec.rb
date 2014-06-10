require 'rspec'
require_relative '../lib/plateau.rb'

describe Plateau do
  let(:plateau) {Plateau.new(5,5)}

  it "should create an instance of a Plateau" do
    expect(plateau).to be_an_instance_of Plateau
  end

  it "should have a x coordinate" do
    expect(plateau.x).to eql 5
  end

  it "should have a y coordinate" do
    expect(plateau.y).to eql 5
  end

  it "should have a size of squares that is the product of x and y" do
    expect(plateau.size). to eql ((plateau.x+1) * (plateau.y+1))
  end
end
