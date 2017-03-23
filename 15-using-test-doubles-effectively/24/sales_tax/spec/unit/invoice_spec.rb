require 'invoice'

RSpec.describe Invoice do
  let(:address) { Address.new(zip: '90210') }
  let(:items) { [Item.new(cost: 30), Item.new(cost: 70)] }

  it 'calculates the total' do
    sales_tax = instance_double(SalesTax, rate_for: 0.095)

    invoice = Invoice.new(address, items, sales_tax: sales_tax)

    expect(invoice.calculate_total).to eq(109.50)
  end
end
