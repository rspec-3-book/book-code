module MyApp
  class Configuration
  end
end

RSpec.describe MyApp::Configuration do
  around(:example) do |ex|
    original_env = ENV.to_hash
    ex.run
    ENV.replace(original_env)
  end

  it 'can mutate env' do
    ENV['FOO'] = '1'
  end

  it 'isolates mutations from other examples' do
    expect(ENV['FOO']).to eq nil
  end

end
