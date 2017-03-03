class CashCow
  def self.charge_card(card, amount)
    # ...
    puts "charged card: #{card}"
  end

  def self.bulk_charge_cards(cards_and_amounts)
    # ...
    cards_and_amounts.each do |card, _|
      puts "charged card: #{card}"
    end
  end
end
