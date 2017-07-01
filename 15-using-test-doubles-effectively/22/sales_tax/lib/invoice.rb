require 'my_app'

class Invoice
  def initialize(address, items, tax_client: MyApp.tax_client)
    @address = address
    @items = items
    @tax_client = tax_client
  end

  def calculate_total
    subtotal = @items.map(&:cost).inject(0, :+)
    taxes = subtotal * tax_rate
    subtotal + taxes
  end

private

  def tax_rate
    @tax_client.rates_for_location(@address.zip).combined_rate
  end
end
