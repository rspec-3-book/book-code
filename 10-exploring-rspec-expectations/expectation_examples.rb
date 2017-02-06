# validate me
require 'rspec/expectations'
require 'rspec/core'

ENME = RSpec::Expectations::ExpectationNotMetError

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

# or, if you are using RSpec::Expectations without RSpec::Core:

RSpec::Expectations.configuration.syntax = [:should, :expect]

extend RSpec::Matchers

def self.heredoc_without_markers(heredoc)
  heredoc.chomp.split("\n").reject { |l| l =~ /# (START|END)/ }.join("\n")
end

ratio = 22 / 7.0
expect(ratio).to be_within(0.1).of(Math::PI)

numbers = [13, 3, 99]
expect(numbers).to all be_odd

alphabet = ('a'..'z').to_a
expect(alphabet).to start_with('a').and end_with('z')

gem_info = { name: 'RSpec', age: 9 }
expect(gem_info).to match(name: 'RSpec', age: a_value > 5)

class Deck
  def cards
    @cards ||= Array.new(52)
  end
end

deck = Deck.new
expect(deck.cards.count).to eq(52), 'not playing with a full deck'

expect {
  expect([13, 2, 3, 99]).to all be_odd
}.to raise_error(ENME, heredoc_without_markers(<<-EOM))
expected [13, 2, 3, 99] to all be odd

   object at index 1 failed to match:
      expected `2.odd?` to return true, got false
EOM

'food'.should match(/foo/)

'food'.should_not match(/bar/)

presidents = [
  { name: 'George Washington', birth_year: 1732 },
  { name: 'John Adams',        birth_year: 1735 },
  # ...
]
expect(presidents).to start_with(
  name: 'George Washington', birth_year: a_value_between(1730, 1740)
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
