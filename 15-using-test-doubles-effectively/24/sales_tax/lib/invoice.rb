require 'my_app'
require 'sales_tax'

class Invoice
  def initialize(address, items, sales_tax: SalesTax.new)
    @address = address
    @items = items
    @sales_tax = sales_tax
  end

  def calculate_total
    subtotal = @items.map(&:cost).inject(0, :+)
    taxes = subtotal * tax_rate
    subtotal + taxes
  end

private

  def tax_rate
    @sales_tax.rate_for(@address.zip)
  end
end
