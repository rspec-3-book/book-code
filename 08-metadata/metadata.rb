# validate me
require 'rspec'

RSpec.configure do |config|
  config.define_derived_metadata(type: :model) do |meta|
    # ...
  end
end

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

RSpec.configure do |config|
  config.around(:example) do |example|
    pp example.metadata
  end
end

class SomeNewExampleGroup
end

RSpec.describe SomeNewExampleGroup, order: :random do
  # ...
end

require 'tmpdir'
require 'fileutils'

Dir.mktmpdir do |dir|
  Dir.chdir(dir) do
    FileUtils.mkdir_p 'db'
    FileUtils.mkdir_p 'log'

    require 'sequel'
    DB = Sequel.sqlite("./db/#{ENV.fetch('RACK_ENV', 'development')}.db")

    require 'logger'
    DB.loggers << Logger.new('log/sequel.log')
  end
end
