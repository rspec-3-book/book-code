# validate me
require 'rspec/expectations'
include RSpec::Matchers

presidents = [
  { name: 'George Washington', birth_year: 1732 },
  { name: 'John Adams',        birth_year: 1735 },
  { name: 'Thomas Jefferson',  birth_year: 1743 },
  # ...
]
expect(presidents).to start_with(
  { name: 'George Washington', birth_year: a_value_between(1730, 1740) },
  { name: 'John Adams',        birth_year: a_value_between(1730, 1740) }
)

alphabet = ('a'..'z').to_a
expect(alphabet).to start_with('a').and end_with('z')

stoplight_color = %w[ green red yellow ].sample
expect(stoplight_color).to eq('green').or eq('red').or eq('yellow')

alphabet = ('a'..'z').to_a
expect(alphabet).to start_with('a') & end_with('z')

stoplight_color = %w[ green red yellow ].sample
expect(stoplight_color).to eq('green') | eq('red') | eq('yellow')

letter_ranges = ['N to Z', 'A to M']
expect(letter_ranges).to contain_exactly(
  a_string_starting_with('A') & ending_with('M'),
  a_string_starting_with('N') & ending_with('Z')
)
