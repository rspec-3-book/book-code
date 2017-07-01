if ENV['SIMULATE_JRUBY']
  original_ruby_platform = RUBY_PLATFORM
  Object.send(:remove_const, :RUBY_PLATFORM)
  RUBY_PLATFORM = 'java'
end

RSpec.configure do |config|
  config.filter_run_excluding :jruby_only unless RUBY_PLATFORM == 'java'
end

if ENV['SIMULATE_JRUBY']
  Object.send(:remove_const, :RUBY_PLATFORM)
  RUBY_PLATFORM = original_ruby_platform
end

RSpec.describe "All rubies" do
  it "always runs" do
  end
end

RSpec.describe "Only on JRuby", :jruby_only do
  it "always runs" do
  end
end
