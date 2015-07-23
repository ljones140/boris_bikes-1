require 'docking_station'

describe DockingStation do

  it "has a default capacity of 20" do
    expect(subject.capacity).to eq(20)
  end

  it "has ability to be given capacity at creation" do
    station = DockingStation.new(10)
    expect(station.capacity).to eq(10)
  end

  it "changeable capacity" do
    subject.capacity = 10
    expect(subject.capacity).to eq(10)
  end

  it "responds to dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe "#release_bike" do
    it "should release instance of Bike" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_a(Bike)
    end

    it "only releases working bikes" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_working
    end

    it "raises an error if DockingStation empty" do
      expect{subject.release_bike}.to raise_error "No working bikes available"
    end

    it "doesn't release broken bikes" do
      bike = Bike.new
      bike.report_broken
      station = DockingStation.new
      station.dock(bike)
      expect{station.release_bike}.to raise_error "No working bikes available"
    end

  end

  describe "#dock" do
    it "raises error if Full" do
      subject.capacity.times {subject.dock Bike.new}
      expect{subject.dock(Bike.new)}.to raise_error "station is full"
    end
  end

end











