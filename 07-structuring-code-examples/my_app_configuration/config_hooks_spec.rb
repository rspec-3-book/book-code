require 'spec_helper'

module MyApp
  class Configuration
  end
end

RSpec.describe MyApp::Configuration do
  it 'can mutate env' do
    ENV['FOO'] = '1'
  end

  it 'isolates mutations from other examples' do
    expect(ENV['FOO']).to eq nil
  end
end
