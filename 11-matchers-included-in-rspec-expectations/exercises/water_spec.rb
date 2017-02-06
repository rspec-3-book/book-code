class Water
  def self.elements
    [:oxygen, :hydrogen]
  end
end

RSpec.describe Water do
  it 'is H2O' do
    expect(Water.elements.sort).to eq [:hydrogen, :hydrogen, :oxygen]
  end
end
