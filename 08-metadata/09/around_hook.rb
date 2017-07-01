# validate me
require 'rspec'

RSpec.configure do |config|
  config.around(:example) do |example|
    pp example.metadata
  end
end
