# validate me
require 'rspec/expectations'
include RSpec::Matchers

RSpec::Expectations.configuration.syntax = :should

'food'.should match(/foo/)
