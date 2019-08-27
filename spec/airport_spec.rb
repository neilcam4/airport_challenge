require './lib/airport.rb'
require './lib/plane.rb'

describe Airport do
  it "creates an new airport" do
    expect(subject).to be_instance_of Airport
  end
  it "lands a plane" do
    airport_1 = Airport.new
    expect(airport_1).to respond_to(:land_plane)
  end
    it "plane takes off" do
    airport_1 = Airport.new
    expect(airport_1).to respond_to(:take_off)
  end
  it "check if capacity is full before landing plane" do
    airport_1 = Airport.new
    weather = Weather.new
    weather.choose_weather == "Stormy"
    airport_1.take_off
    expect(airport_1.land_plane).to raise_error("Weather is stormy plane cannot land")
  end
end
