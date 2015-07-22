require_relative 'bike'
class DockingStation

  attr_accessor :capacity

  def initialize (capacity=20)
    @bikes = []
    @capacity = capacity
  end
  def release_bike
    working_bikes = @bikes.select{|b| b.working?}
    raise "No working bikes available" if working_bikes.empty?
    working_bikes.pop
  end
  def dock bike
    raise "station is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end