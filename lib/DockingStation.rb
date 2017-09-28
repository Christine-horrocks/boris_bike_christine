require_relative 'Bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    bike_to_release = @bike
    @bike = nil
    bike_to_release
  end

  def dock(bike)
      fail 'At capacity' if @bike
    @bike = bike
  end
end
