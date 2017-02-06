RSpec.describe 'An integration spec' do
  it 'does not get `fast: true` metadata' do |example|
    expect(example.metadata).not_to include(fast: true)
  end
end
