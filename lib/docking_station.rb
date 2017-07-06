class DockingStation

  attr_accessor :bikes

  def initialize(bikes = [Bike.new])
    @bikes = bikes
  end

  def release_bike
    fail "No bikes available" if @bikes.count == 0
    @bikes.pop
  end

  def empty?
    @bikes.count == 0
  end

  def dock_bike
    fail "Station full" if @bikes.count == 20
    @bikes << Bike.new
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
