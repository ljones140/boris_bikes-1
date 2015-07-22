require 'docking_station'

describe DockingStation do

  it "should have a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "should respond to dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  xit "should respond to full? method" do
    expect(subject).to respond_to(:full?)
  end


  describe "#release_bike" do
    it "should release instance of Bike" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_a(Bike)
    end
    it "should be working" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_working
    end
    it "should raise an error if DockingStation empty" do
      expect{subject.release_bike}.to raise_error "No bikes available"
    end

  end

  xdescribe "#full?" do
    it "should be false with empty station" do
      expect(subject.full?).to be false
    end
    it "should be true if bike is docked" do
      20.times {subject.dock Bike.new}
      expect(subject.full?).to be true
    end
  end

  describe "#dock" do
      it "should raise_error if Full" do
        20.times {subject.dock Bike.new}
        expect{subject.dock(Bike.new)}.to raise_error "station is full"
    end
  end


end



