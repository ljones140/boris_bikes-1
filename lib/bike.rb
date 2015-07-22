class Bike
  def initialize
    @broken = false
  end
  def working?
    return true unless @broken
  end
  def report_broken
    @broken = true
  end
  def broken?
    @broken
  end
end