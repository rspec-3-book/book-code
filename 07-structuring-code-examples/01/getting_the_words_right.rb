# validate me
require 'rspec/core'

RSpec.describe 'My awesome gardening API' do
end

module Perennials
  class Rhubarb
  end
end

my_favorite_broccoli = Object.new

RSpec.describe Perennials::Rhubarb do
end

RSpec.describe Perennials do
end

RSpec.describe my_favorite_broccoli do
end

class Garden
end

RSpec.describe Garden, 'in winter' do
end

class WeatherStation
end

RSpec.describe WeatherStation, 'radar updates', uses_network: true do
end

class Sprinkler
end

RSpec.describe Sprinkler do
  it 'waters the garden', uses_serial_bus: true
end

RSpec.describe 'A kettle of water' do
  describe 'when boiling' do
    it 'can make tea'
    it 'can make coffee'
  end
end

RSpec.describe 'A kettle of water' do
  context 'when boiling' do
    it 'can make tea'
    it 'can make coffee'
  end
end

class PhoneNumberParser
end

RSpec.describe PhoneNumberParser, 'parses phone numbers' do
  it 'in xxx-xxx-xxxx form'
  it 'in (xxx) xxx-xxxx form'
end

RSpec.describe PhoneNumberParser, 'parses phone numbers' do
  example 'in xxx-xxx-xxxx form'
  example 'in (xxx) xxx-xxxx form'
end

RSpec.describe 'Deprecations' do
  specify 'MyGem.config is deprecated in favor of MyGem.configure'
  specify 'MyGem.run is deprecated in favor of MyGem.start'
end
