require 'account'
require 'support/matchers'

RSpec.describe '`have_a_balance_of(amount)`' do
  let(:account) { Account.new('Checking') }

  before do
    account.expenses << Expense.new(Date.new(2016, 12, 10), 10)
    account.expenses << Expense.new(Date.new(2016, 12, 15), 20)
  end

  it 'passes when the balances match' do
    expect(account).to have_a_balance_of(30)
    # or
    expect(account).to have_a_balance_of(10).as_of(Date.new(2016, 12, 12))
  end

  it 'fails when the balance as of a date does not match' do
    expect(account).to have_a_balance_of(15).as_of(Date.new(2016, 12, 12))
  end

  it 'can be used in a compound expression' do
    expect(account).to have_a_balance_of(30).and \
                       have_attributes(name: 'Checking')
  end

  it 'can be passed to another matcher' do
    user_accounts = [account]

    expect(user_accounts).to include(an_account_with_a_balance_of(30))
  end
end
