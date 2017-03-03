require 'cash_cow'

class RecurringPayment
  def self.process_subscriptions(subscriptions, bank: CashCow)
    subscriptions.each do |subscription|
      bank.charge_card(subscription.credit_card, subscription.amount)
      # ...send receipt and other stuff...
    end
  end
end
