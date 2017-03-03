require 'cash_cow'

class RecurringPayment
  def self.process_subscriptions(subscriptions)
    subscriptions.each do |subscription|
      CashCow.charge_card(subscription.credit_card, subscription.amount)
      # ...send receipt and other stuff...
    end
  end
end
