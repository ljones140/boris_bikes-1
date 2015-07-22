require 'docking_station'

describe DockingStation do

  it "should respond to dock method" do
    expect(subject).to respond_to(:dock).with(1).argument
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
end