require_relative 'Bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
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
    @bikes.length >= @DEFAULT_CAPACITY
  end

  private
  def empty?
    @bikes.length <= 0
  end

end
