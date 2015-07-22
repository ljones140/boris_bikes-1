require_relative 'bike'
class DockingStation

  attr_accessor :capacity

  def initialize (capacity=20)
    @bikes = []
    @capacity = capacity
  end
  def release_bike
    raise "No bikes available" if empty?
    raise "Bike is broken" unless @bikes.last.working?
    @bikes.pop
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