require 'docking_station'

describe DockingStation do
  subject(:station) {described_class.new}

  it {is_expected.to respond_to(:release_bike) }

  it {is_expected.to respond_to(:capacity) }

  it "should return default capacity 20 when no parameters are passed" do
    expect(station.capacity).to eq 20
  end

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
      station.dock_bike
      expect(station.bikes.size).to eq 1
    end

    it {is_expected.to respond_to(:dock_bike)}

    it "should raise an error if station full" do
      DockingStation::DEFAULT_CAPACITY.times {station.dock_bike}
      expect {station.dock_bike}.to raise_error "Station full"
    end
  end

end
