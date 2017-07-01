require_relative '../app/api'
require 'rack/test'

# This spec file contains a condensed form of `spec/unit/api_spec.rb` for the
# purpose of showing the constructs to share setup logic in ch 7.

module ExpenseTracker
  RSpec.describe 'POST a successful expense' do
    # let definitions
    let(:ledger)  { instance_double('ExpenseTracker::Ledger') }
    let(:expense) { { 'some' => 'data' } }

    # hook
    before do
      allow(ledger).to receive(:record)
        .with(expense)
        .and_return(RecordResult.new(true, 417, nil))
    end

    # helper method
    def parsed_last_response
      JSON.parse(last_response.body)
    end

    include Rack::Test::Methods

    def app
      API.new(ledger: ledger)
    end

    it 'responds with a 200 (OK)' do
      post '/expenses', JSON.generate(expense)
      expect(last_response.status).to eq(200)
      expect(parsed_last_response).to include('expense_id' => 417)
    end

  end
end
