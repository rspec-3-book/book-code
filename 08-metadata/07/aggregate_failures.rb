# validate me
require 'rspec'

RSpec.configure do |config|
  config.define_derived_metadata do |meta|
    # Sets the flag unconditionally;
    # doesn't allow examples to opt out
    meta[:aggregate_failures] = true
  end
end

RSpec.describe 'Billing', aggregate_failures: false do
  context 'using the fake payment service' do
    before do
      expect(MyApp.config.payment_gateway).to include('sandbox')
    end

    # ...
  end
end
