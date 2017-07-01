RSpec::Matchers.define :have_a_balance_of do |amount|
  match { |account| account.current_balance == amount }
end
