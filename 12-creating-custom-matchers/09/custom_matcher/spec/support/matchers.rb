# We disable line length because the labels cause lines to be too long
# but they do not render in the book so it causes no problems.
class HaveABalanceOf # <label id="code.have_balance_of-class-start" />
  include RSpec::Matchers::Composable # <label id="code.have_balance_of-composable" />

  def initialize(amount) # <label id="code.have_balance_of-class-init" />
    @amount = amount
  end

  def as_of(date) # <label id="code.have_balance_of-class-as-of" />
    @as_of_date = date
    self
  end

  def matches?(account) # <label id="code.have_balance_of-class-matches" />
    @account = account
    values_match?(@amount, account_balance)
  end

  def description # <label id="code.have_balance_of-class-description" />
    if @as_of_date
      "have a balance of #{description_of(@amount)} as of #{@as_of_date}"
    else
      "have a balance of #{description_of(@amount)}"
    end
  end

  def failure_message # <label id="code.have_balance_of-class-failure_msg" />
    "expected #{@account.inspect} to #{description}" + failure_reason
  end

  def failure_message_when_negated # <label id="code.have_balance_of-class-failure_msg_when_negated" />
    "expected #{@account.inspect} not to #{description}" + failure_reason
  end

private

  def failure_reason
    ", but had a balance of #{account_balance}"
  end

  def account_balance
    if @as_of_date
      @account.balance_as_of(@as_of_date)
    else
      @account.current_balance
    end
  end
end

module AccountMatchers
  def have_a_balance_of(amount)
    HaveABalanceOf.new(amount)
  end
end

RSpec.configure do |config|
  config.include AccountMatchers
end

RSpec::Matchers.alias_matcher :an_account_with_a_balance_of,
                              :have_a_balance_of
