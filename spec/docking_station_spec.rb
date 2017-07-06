require 'docking_station'

describe DockingStation do
  subject(:station) {described_class.new}

  it {is_expected.to respond_to(:release_bike) }

  it "release a bike and then expects the bike to be working" do
    station.dock_bike
    bike = station.release_bike
    expect(bike).to be_working
  end


  describe '#release_bike' do
    it "should raise an error if no bikes available" do
      station.dock_bike
      station.release_bike
      expect {station.release_bike}.to raise_error "No bikes available"
    end
  end

  describe '#dock_bike' do
    it "returns bikes" do
      # what is the return value of station.bikes 1
      station.dock_bike
      # what is the return value of station.bikes 2
      expect(station.bikes.size).to eq 1
    end

    it {is_expected.to respond_to(:dock_bike)}

    it "should raise an error if station full" do
      # Bike.new(bikes)
      DEFAULT_CAPACITY.times {station.dock_bike}
      expect {station.dock_bike}.to raise_error "Station full"
    end
  end

  # it {is_expected.to respond_to(:bikes)}
end
