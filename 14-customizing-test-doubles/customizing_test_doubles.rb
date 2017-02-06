# validate me
require 'rspec/expectations'
include RSpec::Matchers
require 'rspec/mocks/standalone'

RSpec::Mocks.configuration.color = false

class PasswordHash
  COST_FACTOR = 12

  # ...
end

double = double()
object = Object.new
a_return_value = nil
a_value_to_a_block = nil
AnException = Class.new(StandardError)
optional_value = Object.new

allow(double).to receive(:a_message).and_return(a_return_value)
allow(double).to receive(:a_message).and_raise(AnException)
allow(double).to receive(:a_message).and_yield(a_value_to_a_block)
allow(double).to receive(:a_message).and_throw(:a_symbol, optional_value)
allow(double).to receive(:a_message) { |arg| do_something_with(arg) }

# These last two are just for partial doubles:
allow(object).to receive(:a_message).and_call_original
allow(object).to receive(:a_message).and_wrap_original { |original| }

some_existing_object = Object.new

expect(some_existing_object).to receive(:a_message)

extractor = double('TwitterURLExtractor')

allow(extractor).to receive(:extract_urls_from_twitter_firehose)
  .and_yield('https://rspec.info/',   93284234987)
  .and_yield('https://github.com/',   43984523459)
  .and_yield('https://pragprog.com/', 33745639845)

dbl = double
AnExceptionClass = Class.new(StandardError)

allow(dbl).to receive(:msg).and_raise(AnExceptionClass)
allow(dbl).to receive(:msg).and_raise('an error message')
allow(dbl).to receive(:msg).and_raise(AnExceptionClass, 'with a message')

an_exception_instance = AnExceptionClass.new
allow(dbl).to receive(:msg).and_raise(an_exception_instance)

# fake implementation for specific arguments:
allow(File).to receive(:read).with('/etc/passwd').and_raise('HAHA NOPE')

# fallback:
allow(File).to receive(:read).and_call_original

Customer = Struct.new(:id)

class CustomerService
  def self.all
    1.upto(100).map { |id| Customer.new(id) }
  end
end

allow(CustomerService).to receive(:all).and_wrap_original do |original|
  all_customers = original.call
  all_customers.sort_by(&:id).take(10)
end

expect(CustomerService.all).to eq(1.upto(10).map { |i| Customer.new(i) })

allow(PasswordHash).to receive(:hash_password)
  .and_wrap_original do |original, cost_factor|
    original.call(1)
  end

require 'timeout'
weather_api = double('WeatherAPI')

counter = 0

allow(weather_api).to receive(:temperature) do |zip_code|
  counter = (counter + 1) % 4
  counter.zero? ? raise(Timeout::Error) : 35.0
end

expect(weather_api.temperature).to eq(35.0)
expect(weather_api.temperature).to eq(35.0)
expect(weather_api.temperature).to eq(35.0)
expect { weather_api.temperature }.to raise_error(Timeout::Error)
expect(weather_api.temperature).to eq(35.0)
expect(weather_api.temperature).to eq(35.0)
expect(weather_api.temperature).to eq(35.0)
expect { weather_api.temperature }.to raise_error(Timeout::Error)

movie = double('Jaws')

expect(movie).to receive(:record_review).with('Great movie!')
expect(movie).to receive(:record_review).with(/Great/)
expect(movie).to receive(:record_review).with('Great movie!', 5)

cart = double

expect(cart).to receive(:add_product).with('Hoodie', anything, anything)

cart = double

expect(cart).to receive(:add_product).with('Hoodie', any_args)

cart.add_product('Hoodie')
cart.add_product('Hoodie', 27182818)
cart.add_product('Hoodie', 27182818, 'HOODIE-SERIAL-123')

database = double

expect(database).to receive(:delete_all_the_things).with(no_args)

class BoxOffice
  def find_showtime(options)
    # ...
  end
end


def use_box_office(box_office)
  expect(box_office).to receive(:find_showtime)
    .with(hash_including(movie: 'Jaws'))

box_office.find_showtime(movie: 'Jaws')
box_office.find_showtime(movie: 'Jaws', zip_code: 97204)
box_office.find_showtime(movie: 'Jaws', city: 'Portland', state: 'OR')
end

use_box_office(instance_double(BoxOffice))
Object.send(:remove_const, :BoxOffice)

class BoxOffice
  def find_showtime(movie:, zip_code: nil, city: nil, state: nil)
    # ...
  end
end

use_box_office(instance_double(BoxOffice))

RSpec::Matchers.define :a_city_in_oregon do
  match do |hash|
    hash[:state] == 'OR' && hash[:city]
  end
end

box_office = instance_double(BoxOffice)

expect(box_office).to receive(:find_showtime).with(a_city_in_oregon)

box_office.find_showtime(movie: 'Jaws', city: 'Portland', state: 'OR')

expect {
  box_office.find_showtime(movie: 'Jaws', city: 'Portland', state: 'ME')
}.to raise_error(a_string_matching 'expected: (a city in oregon)')

greeter = double

expect(greeter).to receive(:hello)
expect(greeter).to receive(:goodbye)

# The following will pass:
greeter.goodbye
greeter.hello

greeter = double

expect {
  expect(greeter).to receive(:hello).ordered
  expect(greeter).to receive(:goodbye).ordered

  # The following will fail:
  greeter.goodbye
  greeter.hello
}.to raise_error(a_string_matching('out of order'))
