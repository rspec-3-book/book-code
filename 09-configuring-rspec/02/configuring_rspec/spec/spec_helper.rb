class MyFormatter
  RSpec::Core::Formatters.register self

  def initialize(_)
  end
end

RSpec.configure do |config|
  config.add_formatter MyFormatter
end
