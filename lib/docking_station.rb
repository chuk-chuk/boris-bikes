require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Station full" if @bike
    @bike = bike
  end
end

# station = DockingStation.new
# bike= Bike.new
# station.release_bike
# station.dock_bike(bike)
# station.dock_bike(bike)
