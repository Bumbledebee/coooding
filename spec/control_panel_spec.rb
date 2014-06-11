require 'rspec'
require_relative '../lib/control_panel'
require_relative '../lib/rover'

describe ControlPanel do
  let(:rover) {Rover.new(1,2,"N")}

  it "should make rover turn left when given command L" do
    expect(rover.left).to eql "W"
  end

  it "should make rover turn right when given command R" do
    expect(rover.right).to eql "E"
  end

  it "should make rover move one coordinate in the direction when given command M" do
    expect(rover.move).to eql 3
  end
end
