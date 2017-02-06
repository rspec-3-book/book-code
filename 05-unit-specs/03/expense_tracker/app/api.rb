require 'sinatra/base'
require 'json'

module ExpenseTracker
  class API < Sinatra::Base
    def initialize(ledger: Ledger.new)
      @ledger = ledger
      super()
    end

    post '/expenses' do
      status 404
      JSON.generate('expense_id' => 42)
    end


    get '/expenses/:date' do
      JSON.generate([])
    end
  end
end
