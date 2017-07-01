require 'account'
require 'support/matchers'

RSpec.describe '`have_a_balance_of(amount)`' do
  let(:account) { Account.new('Checking') }

  before do
    account.expenses << Expense.new(Date.new(2017, 6, 10), 10)
    account.expenses << Expense.new(Date.new(2017, 6, 15), 20)
  end

  it 'passes when the balance matches' do
    expect(account).to have_a_balance_of(30)
  end

  it 'fails when the balance does not match' do
    expect(account).to have_a_balance_of(35)
  end
end
