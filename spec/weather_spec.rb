require './lib/weather.rb'

describe Weather do
  it "describes creating a new weather" do
    expect(subject).to be_instance_of Weather
  end
  it "chooses a random weather" do
    expect(subject).to respond_to(:choose_weather)
  end 
end
