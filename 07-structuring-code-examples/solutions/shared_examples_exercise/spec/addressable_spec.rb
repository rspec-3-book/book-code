require 'addressable'
require 'support/shared_examples'

RSpec.describe Addressable do
  it_behaves_like 'a URI parsing library', Addressable::URI

  it 'does not default the port for an http URI' do
    expect(Addressable::URI.parse('http://example.com/').port).to eq nil
  end

  it 'does not default the port for an https URI' do
    expect(Addressable::URI.parse('https://example.com/').port).to eq nil
  end
end
