require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Simon", "23")
    @person_2 = Person.new("Steve", "32")
    @person_3 = Person.new("Steph", "25")
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
    @bus.add_passenger(@person_1)
    assert_equal(1, @bus.passengers())
  end

  def test_add_passenger__3_passengers
    @bus.add_passenger(@person_1)
    @bus.add_passenger(@person_2)
    @bus.add_passenger(@person_3)
    assert_equal(3, @bus.passengers())
  end

  def test_drop_off_passenger
    @bus.add_passenger(@person_1)
    @bus.drop_off_passenger(@person_1)
    assert_equal(0, @bus.passengers())
  end
end
