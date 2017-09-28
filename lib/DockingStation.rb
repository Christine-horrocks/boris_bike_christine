require_relative 'Bike'

class DockingStation
  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.shift
  end

  def dock(bike)
    raise 'At capacity' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= @capacity
  end

  private
  def empty?
    @bikes.length <= 0
  end

end
