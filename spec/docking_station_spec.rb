require 'docking_station'
require 'bike'

describe DockingStation do
  it 'Responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'releases/gets bike that works' do
    expect(subject.release_bike).to be_a Bike
    expect(subject.release_bike).to be_working
  end
end

