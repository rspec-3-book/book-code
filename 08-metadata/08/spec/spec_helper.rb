RSpec.configure do |config|
  missing_creds_file = lambda do |meta_value|
    meta_value && !File.exist?("config/secrets.json")
  end

  config.define_derived_metadata(needs_creds: missing_creds_file) do |meta|
    meta[:skip] = "config/secrets.json is needed for this example"
  end
end

RSpec.describe do
  it "needs creds", :needs_creds do
  end
end
