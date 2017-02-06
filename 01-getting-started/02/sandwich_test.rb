require 'minitest/autorun'

Sandwich = Struct.new(:taste, :toppings)

class TestSandwich < Minitest::Test
  def test_that_sandwich_is_delicious
    sandwich = Sandwich.new('delicious', [])
    assert_equal('delicious', sandwich.taste, 'Sandwich is not delicious')
  end
end
