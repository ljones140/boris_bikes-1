require_relative 'bike'
class DockingStation
  def initialize
    @bikes = []
  end
  def release_bike
    raise "No bikes available" unless @bikes.count > 0
    @bikes.pop
  end
  def dock bike
    raise "station is full" if full?
    @bikes << bike
  end
  def full?
    return true if @bikes.count >= 20
    return false
  end
end