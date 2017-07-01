require 'minitest/autorun'

Sandwich = Struct.new(:taste, :toppings)

class TestSandwich < Minitest::Test
  def test_that_sandwich_is_delicious
    sandwich = Sandwich.new('delicious', [])

    taste = sandwich.taste

    assert_equal('delicious', taste, 'Sandwich is not delicious')
  end
end
