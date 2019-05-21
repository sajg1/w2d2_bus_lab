class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
  end

  def drive(route_number)
    return "Brum brum"
  end

  
end
