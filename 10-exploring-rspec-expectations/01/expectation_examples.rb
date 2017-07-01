# validate me
require 'rspec/expectations'
include RSpec::Matchers

ratio = 22 / 7.0
expect(ratio).to be_within(0.1).of(Math::PI)

numbers = [13, 3, 99]
expect(numbers).to all be_odd

alphabet = ('a'..'z').to_a
expect(alphabet).to start_with('a').and end_with('z')
