require 'wrong'

RSpec.configure do |config|
  config.expect_with :minitest, :rspec, Wrong
end

RSpec.describe 'Using different assertion/expectation libraries' do
  let(:result) { 2 + 2 }

  it 'works with minitest assertions' do
    assert_equal 4, result
  end

  it 'works with rspec expectations' do
    expect(result).to eq 4
  end

  it 'works with wrong' do
    # "Where 2 and 2 always makes 5..."
    assert { result == 5 }
  end
end
