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

  #def add_many_passengers(passengers)
  #  for passenger in passengers
  #    add_passenger(passenger)
  #  end
  #end

# we've got an array so we can call .index(passenger) to access a whole passenger inside the array
# use .slice! to permantently remove the passenger from the array.

  def drop_off_passenger(passenger)
    index = @passengers.index(passenger)
    @passenger.slice!(index, 1)
  end


end
