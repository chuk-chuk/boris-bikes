require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike) }

  it "release a bike and then expects the bike to be working" do
    # 1. have a bike in the docking stationn
    # 2. releasea bike
    # 3. make an assertion on that bike
    bike = Bike.new
    subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  describe '#release_bike' do
    it "returns bikes" do
      bike = Bike.new
      subject.dock(bike)
      #we want to return the bike to the dock
      expect(subject.dock(bike)).to eq bike
    end

    it "should raise an error if no bikes available" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end
  end

  it {is_expected.to respond_to(:bike)}
end
