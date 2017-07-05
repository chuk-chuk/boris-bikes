require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike) }

  it "release a bike and then expects the bike to be working" do
    new_bike = subject.release_bike
    expect(new_bike).to be_working
  end

end
