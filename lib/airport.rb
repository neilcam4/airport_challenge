require_relative './plane.rb'
require_relative './weather.rb'

class Airport
  DEFAULT_CAPACITY = 5

  def initialize(capacity= DEFAULT_CAPACITY)
    @planes_num = []
    @capacity = capacity
    @capacity.times do
    @planes_num << Plane.new
    end
  end

  def take_off
    @plane = @planes_num.pop
    @capacity = @planes_num.length
  end

  def land_plane
    fail "Weather is stormy plane cannot land" if @weather == "Stormy" || full?
    @planes_num << @plane
  end

private
  def full?
   if @planes_num.length == @capacity
     true
   else
     false
   end
  end
end
