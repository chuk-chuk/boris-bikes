DEFAULT_CAPACITY = 20
class DockingStation

  attr_accessor :bikes, :capacity

  def initialize(bikes = [], capacity = DEFAULT_CAPACITY)
    @bikes = bikes
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike
    fail "Station full" if full?
    @bikes << Bike.new
  end

  private
  def empty?
    @bikes.count == 0
  end

  def full?
    @bikes.count == DEFAULT_CAPACITY
  end
end

class Bike
  def working?
    true
  end
end

# station = DockingStation.new
# station.release_bike
# station.dock_bike(bike)
# station.dock_bike(bike)
