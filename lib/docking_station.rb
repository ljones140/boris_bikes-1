require_relative 'bike'
class DockingStation
  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end
  def dock bike
    raise "station is full" if full?
    @bike = bike
  end
  def full?
    return true if @bike
    return false
  end
end