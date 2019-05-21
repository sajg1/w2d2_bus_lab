require("minitest/autorun")
require("minitest/rg")
require_relative("../person")


class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Stephen", "35")
  end

  def test_person_name
    assert_equal("Stephen", @person.person_name)
  end

  def test_age
    assert_equal("35", @person.person_age)
  end

end
