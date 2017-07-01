RSpec.configure do |config|
  config.filter_run_when_matching :focus
end

RSpec.describe "With no examples focused" do
  it "only runs if no other examples are focused" do
  end
end

RSpec.describe "With an example focused" do
  it "runs alone when focused", :focus => !!ENV['FOCUS_AN_EXAMPLE'] do
  end
end
