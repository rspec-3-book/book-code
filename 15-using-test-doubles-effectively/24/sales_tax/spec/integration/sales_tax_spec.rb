require 'sales_tax'

RSpec.describe SalesTax do
  let(:sales_tax) { SalesTax.new }

  it 'can fetch the tax rate for a given zip' do
    rate = sales_tax.rate_for('90210')
    expect(rate).to be_a(Float).and be_between(0.01, 0.5)
  end

  it 'returns nil if the tax rate cannot be found' do
    rate = sales_tax.rate_for('00000')
    expect(rate).to be_nil
  end
end
