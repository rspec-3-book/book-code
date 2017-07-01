# validate me
require 'rspec/expectations'
include RSpec::Matchers

class Deck
  def cards
    @cards ||= Array.new(52)
  end
end

deck = Deck.new
expect(deck.cards.count).to eq(52), 'not playing with a full deck'
