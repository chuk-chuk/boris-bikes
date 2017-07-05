require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike) }

  it "release a bike and then expects the bike to be working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    #we want to return the bike to the dock
    expect(subject.dock(bike)).to eq bike
  end

  it {is_expected.to respond_to(:bike)}

end
