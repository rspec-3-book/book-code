class Tokenizer
  def self.tokenize(string)
    string.split(/ +/)
  end
end

RSpec.describe Tokenizer do
  let(:text) do
    <<-EOS
      I am Sam.
      Sam I am.
      Do you like green eggs and ham?
    EOS
  end

  it 'tokenizes multiple lines of text' do
    tokenized = Tokenizer.tokenize(text)
    expect(tokenized.first(6)).to eq ['I', 'am', 'Sam.', 'Sam', 'I', 'am']
  end
end
