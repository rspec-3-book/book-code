RSpec.describe Hash do
  it 'is used by RSpec for metadata', :fast, :focus do |example|
    expect(example.metadata).to include(fast: true, focus: true)
  end
end
