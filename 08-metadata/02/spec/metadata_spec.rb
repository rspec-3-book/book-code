require 'pp'

RSpec.describe Hash do
  it 'is used by RSpec for metadata', fast: true do |example|
    pp example.metadata
  end
end
