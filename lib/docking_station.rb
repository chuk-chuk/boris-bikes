require_relative 'bike'

class DockingStation

  attr_reader :bike
  def release_bike
    Bike.new
  end

  def dock(bike)
  #Use an instance variable to store the bike
  # in the 'state' of this instance
    @bike = bike
  end
  
end
