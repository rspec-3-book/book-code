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
    expect { |probe|
      PhoneNumberExtractor.extract_from(text, &probe)
    }.to yield_successive_args(
      '(202) 555-0168', '202-555-0199', '(202) 555-0175'
    )
  end
end
