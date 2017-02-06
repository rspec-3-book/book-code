RSpec.configure do |config|
  config.define_derived_metadata(file_path: /spec\/unit/) do |meta|
    meta[:fast] = true
  end
end
