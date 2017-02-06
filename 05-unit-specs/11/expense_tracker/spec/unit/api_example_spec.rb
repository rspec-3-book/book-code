require_relative '../../app/api'
require 'rack/test'

module ExpenseTracker
  RSpec.describe API do
    include Rack::Test::Methods
    let(:ledger) { instance_double('ExpenseTracker::Ledger') }
    let(:app) { API.new(ledger: ledger) }

    describe 'POST /expenses' do
      context 'when the expense is successfully recorded' do
        let(:expense) { { 'some' => 'data' } }

        before do
          allow(ledger).to receive(:record)
            .with(expense)
            .and_return(RecordResult.new(true, 417, nil))
        end

        it 'works' do
          post '/expenses', JSON.generate(expense)

          parsed = JSON.parse(last_response.body)
          expect(parsed).to do_something
        end

        def do_something
          include('expense_id' => 417)
        end
      end
    end
  end
end
