require 'my_app'

class SalesTax
  def initialize(tax_client = MyApp.tax_client)
    @tax_client = tax_client
  end

  def rate_for(zip)
    @tax_client.rates_for_location(zip).combined_rate
  rescue Taxjar::Error::NotFound
    nil
  end
end
