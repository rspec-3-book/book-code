RSpec.describe Hash, :fast do
  it 'is inherited' do |example|
    expect(example.metadata).to include(fast: true)
  end

  context 'on a nested group' do
    it 'is also inherited' do |example|
      expect(example.metadata).to include(fast: true)
    end
  end
end
