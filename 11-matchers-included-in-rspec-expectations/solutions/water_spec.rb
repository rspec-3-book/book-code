class Water
  def self.elements
    [:oxygen, :hydrogen]
  end
end

RSpec.describe Water do
  it 'is H2O' do
    expect(Water.elements).to contain_exactly(:hydrogen, :hydrogen, :oxygen)
  end
end
