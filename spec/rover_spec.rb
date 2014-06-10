require 'rspec'
require_relative '../lib/rover.rb'

describe Rover do
  let(:rover_one) {Rover.new(1,2,"N")}
  let(:rover_two) {Rover.new(3,3,"E")}

  it "should have a start position in order to be a Rover" do
    expect(rover_one).to be_an_instance_of Rover
    expect(rover_two).to be_an_instance_of Rover
  end

  it "should have a x position to start with" do
    expect(rover_one.x).to eql 1
    expect(rover_two.x).to eql 3
  end

  it "should have an y position to start with" do
    expect(rover_one.y).to eql 2
    expect(rover_two.y).to eql 3
  end

  it "should be facing a direction to start with" do
    expect(rover_one.direction).to eql "N"
    expect(rover_two.direction).to eql "E"
  end
end
