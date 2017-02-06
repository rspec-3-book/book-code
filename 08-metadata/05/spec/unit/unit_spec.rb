RSpec.describe 'A unit spec' do
  it 'gets `fast: true` metadata' do |example|
    expect(example.metadata).to include(fast: true)
  end
end
