require 'minitest/autorun'

class TestNumbers < Minitest::Test
  def test_that_numbers_are_odd
    numbers = [13, 2, 3, 4, 99]
    assert numbers.all?(&:odd?)
  end
end
