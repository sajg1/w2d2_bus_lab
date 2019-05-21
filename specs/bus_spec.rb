require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")


class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("10", "Bonaly")
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

end
