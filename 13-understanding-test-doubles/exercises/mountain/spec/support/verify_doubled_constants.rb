RSpec.configure do |c|
  c.mock_with :rspec do |mocks|
    mocks.verify_doubled_constant_names = true
  end
end
