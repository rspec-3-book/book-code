# We disable line length because the labels cause lines to be too long
# but they do not render in the book so it causes no problems.
RSpec::Matchers.define :have_a_balance_of do |amount|
  chain(:as_of) { |date| @as_of_date = date }
  match do |account|
    values_match?(amount, account_balance(account))

    account_balance(account) == account
  end

  match { |account| values_match?(amount, account_balance(account)) }
  failure_message { |account| super() + failure_reason(account) }
  failure_message_when_negated { |account| super() + failure_reason(account) }

private

  def failure_reason(account)
    ", but had a balance of #{account_balance(account)}"
  end

  def account_balance(account)
    if @as_of_date
      account.balance_as_of(@as_of_date)
    else
      account.current_balance
    end
  end
end

RSpec::Matchers.alias_matcher :an_account_with_a_balance_of,
                              :have_a_balance_of
