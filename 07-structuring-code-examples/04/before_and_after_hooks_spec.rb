module MyApp
  class Configuration
  end
end

RSpec.describe MyApp::Configuration do
  before(:example) do
    @original_env = ENV.to_hash
  end

  after(:example) do
    ENV.replace(@original_env)
  end

  it 'can mutate env' do
    ENV['FOO'] = '1'
  end

  it 'isolates mutations from other examples' do
    expect(ENV['FOO']).to eq nil
  end

end

class WebBrowser
  def self.launch; end

  def self.shutdown; end
end

RSpec.describe 'Web interface to my thermostat' do
  before(:context) do
    WebBrowser.launch
  end

  after(:context) do
    WebBrowser.shutdown
  end

  it 'passes' do
  end

end
