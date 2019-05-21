class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive(route_number)
    return "Brum brum"
  end

  def passengers()
    return @passengers.count
  end

  def add_passenger(passenger)
    @passengers << passenger
  end


end
