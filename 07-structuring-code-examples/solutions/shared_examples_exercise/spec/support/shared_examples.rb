require 'uri'

RSpec.shared_examples 'a URI parsing library' do |library|
  it 'parses the scheme' do
    expect(library.parse('https://a.com/').scheme).to eq 'https'
  end

  it 'parses the host' do
    expect(library.parse('http://foo.com/').host).to eq 'foo.com'
  end

  it 'parses the port' do
    expect(library.parse('http://example.com:9876').port).to eq 9876
  end

  it 'parses the path' do
    expect(library.parse('http://a.com/foo').path).to eq '/foo'
  end
end
