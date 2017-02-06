# Load the spec so we get access to `RecordResult` struct.
require 'rspec/core'
require_relative 'spec/unit/app/api_spec.rb'
require 'sinatra/base'

class Ledger
  def record(_expense)
    ExpenseTracker::RecordResult.new
  end
end

class API < Sinatra::Base
  def initialize
    @ledger = Ledger.new
    super() # rest of initialization from Sinatra
  end
end

# Later, callers do this:
app = API.new
app.to_s # avoid unused variable warning

Object.send(:remove_const, :API)

class API < Sinatra::Base
  def initialize(ledger:)
    @ledger = ledger
    super()
  end
end

# Later, callers do this:
app = API.new(ledger: Ledger.new)
app.to_s # avoid unused variable warning

@ledger = Ledger.new

# Pseudocode for what happens inside the API class:
#
result = @ledger.record({ 'some' => 'data' })
result.success?      # => a Boolean
result.expense_id    # => a number
result.error_message # => a string or nil
