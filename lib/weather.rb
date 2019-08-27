class Weather
  def initialize
    @weather 
  end

  def choose_weather
    weather = ["Sunny", "Stormy", "Rainy","Cloudy"]
    @weather = weather.shuffle[0]
  end
end
