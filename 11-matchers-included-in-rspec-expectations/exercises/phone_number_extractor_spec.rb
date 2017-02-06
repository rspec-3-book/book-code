class PhoneNumberExtractor
  def self.extract_from(text, &block)
    # Look for patterns like (###) ###-####
    text.scan(/(d{3}) d{3}-d{4}/, &block)
  end
end

RSpec.describe PhoneNumberExtractor do
  let(:text) do
    <<-EOS
      Melinda: (202) 555-0168
      Bob: 202-555-0199
      Sabina: (202) 555-0176
    EOS
  end

  it 'yields phone numbers as it finds them' do
    yielded_numbers = []
    PhoneNumberExtractor.extract_from(text) do |number|
      yielded_numbers << number
    end

    expect(yielded_numbers).to eq [
      '(202) 555-0168',
      '202-555-0199',
      '(202) 555-0175'
    ]
  end
end
