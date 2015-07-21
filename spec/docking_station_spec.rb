require 'docking_station'

describe DockingStation do
  it "docking station responds to Release bike" do
    docking_station = DockingStation.new
    docking_station.respond_to? (:release_bike)
  end
end




# describe DockingStation do
#   it {should respond_to(:release_bike)}
# end
