RSpec::Matchers.define :have_a_balance_of do |amount|
  match { |account| account.current_balance == amount }
  failure_message { |account| super() + failure_reason(account) }
  failure_message_when_negated { |account| super() + failure_reason(account) }

private

  def failure_reason(account)
    ", but had a balance of #{account.current_balance}"
  end
end
