require 'account'
require 'support/matchers'

RSpec.describe '`have_a_balance_of(amount)`' do
  let(:account) { Account.new('Checking') }

  before do
    account.expenses << Expense.new(Date.new(2017, 6, 10), 10_000_000.5)
    account.expenses << Expense.new(Date.new(2017, 6, 15), 500_000.4)
  end

  it 'passes when the balances match' do
    expect(account).to have_a_balance_of(a_value < 11_000_000)
    # or
    expect(account).to have_a_balance_of(a_value_within(50).of(10_500_000))
  end

  it 'fails when the balance does not match' do
    expect(account).to have_a_balance_of(a_value_within(1).of(10_499_999))
  end
end
