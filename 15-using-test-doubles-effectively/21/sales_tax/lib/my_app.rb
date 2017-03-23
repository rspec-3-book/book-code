require 'taxjar'
require 'dotenv'
Dotenv.load('api_creds.env')

Address = Struct.new(:zip) do
  def initialize(zip:)
    super(zip)
  end
end

Item = Struct.new(:cost) do
  def initialize(cost:)
    super(cost)
  end
end

module MyApp
  def self.tax_client
    @tax_client ||= Taxjar::Client.new(api_key: ENV['TAXJAR_API_KEY'])
  end
end
