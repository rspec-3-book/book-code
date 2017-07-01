# validate me
require 'rspec/core'

SomeFastUnitSpecs = Class.new

RSpec.describe SomeFastUnitSpecs, fail_if_slower_than: 0.01 do
  # ...
end
