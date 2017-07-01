RSpec.describe 'Using a ledger double' do
  example 'a pure double' do
    ledger = double('ExpenseTracker::Ledger')
    allow(ledger).to receive(:record)
  end

  example 'a verifying double' do
    ledger = instance_double('ExpenseTracker::Ledger')
    allow(ledger).to receive(:record)
  end
end
