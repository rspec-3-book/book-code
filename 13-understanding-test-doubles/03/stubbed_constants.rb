# validate me
require 'rspec/expectations'
include RSpec::Matchers
require 'rspec/mocks/standalone'

class PasswordHash
  COST_FACTOR = 12

  # ...
end

stub_const('PasswordHash::COST_FACTOR', 1)

expect(PasswordHash::COST_FACTOR).to eq 1

hide_const('ActiveRecord')
