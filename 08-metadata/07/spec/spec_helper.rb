RSpec.configure do |config|
  config.define_derived_metadata(type: :model) do |meta|
    # ...
    meta[:matched_by_type_model] = true
  end
end

RSpec.describe do
  it 'matches type: :model', type: :model do |example|
    expect(example.metadata).to include(matched_by_type_model: true)
  end
end
