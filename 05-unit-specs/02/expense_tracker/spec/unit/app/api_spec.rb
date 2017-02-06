require_relative '../../../app/api'

module ExpenseTracker
  RSpec.describe API do
    describe 'POST /expenses' do
      context 'when the expense is successfully recorded' do
        it 'responds with a 200 (OK)'
        it 'returns the expense id'
      end

      # ... next context will go here...

      context 'when the expense fails validation' do
        it 'responds with a 422 (Unprocessable entity)'
        it 'returns an error message'
      end
    end
  end
end
