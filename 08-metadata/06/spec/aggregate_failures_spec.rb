RSpec.describe ':aggregate_failures' do
  it 'has :aggregate_failures by default' do |example|
    expect(example.metadata).to include(aggregate_failures: true)
  end

  it 'can disable :aggregate_failures', aggregate_failures: false do |example|
    expect(example.metadata).to include(aggregate_failures: false)
  end
end
