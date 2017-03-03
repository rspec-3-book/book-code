require 'cash_cow'

class RecurringPayment
  def self.process_subscriptions(subscriptions)
    cards_and_amounts = subscriptions.each_with_object({}) do |sub, data|
      data[sub.credit_card] = sub.amount
    end

    CashCow.bulk_charge_cards(cards_and_amounts)
    # ...send receipts and other stuff...
  end
end
