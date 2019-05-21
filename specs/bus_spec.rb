require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Simon", "23")
    @bus = Bus.new("10", "Bonaly" )
  end

  def test_route_number
    assert_equal("10", @bus.route_number)
  end

  def test_destination
    assert_equal("Bonaly", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive("10"))
  end

  def test_total_passengers
    assert_equal(0, @bus.passengers())
  end

  def test_add_passenger
    actual = @person_1.add_passenger()
    p actual
    assert_equal(1, @bus.passengers(actual))
  end

end
