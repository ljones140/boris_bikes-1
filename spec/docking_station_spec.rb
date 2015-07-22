require 'docking_station'

describe DockingStation do

  it 'releases/gets bike that works' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
    expect(subject.release_bike).to be_working
  end
  it "responds to dock with 1 arg" do
     expect(subject).to respond_to(:dock).with(1).argument
  end
  desribe '#release_bike' do
    it "gives error if empty of bikes" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end
end



