# validate me
require 'rspec/expectations'

# We can't use the `include` matcher when including `RSpec::Matchers`
# at the top level because of `main#include`, so we put it in a host
# class instead.
class Host
  extend RSpec::Matchers

  def self.fail(*args)
    raise_error(RSpec::Expectations::ExpectationNotMetError, *args)
  end

  expect(3).to eq(3)

  expect { raise 'boom' }.to raise_error('boom')

  expect {
    'hello'.world
  }.to raise_error(an_object_having_attributes(name: :world))

  expect { 'hello'.world }.to raise_error(NoMethodError) do |ex|
    expect(ex.name).to eq(:world)
  end

  MissingDataError = Class.new(StandardError)

  def self.age_of(user)
    user.fetch(:age)
  rescue KeyError
    raise MissingDataError, 'Age is missing'
  end

  user = { name: 'Violet' }
  expect {
    age_of(user)
  }.to raise_error(
    an_object_having_attributes(cause: an_instance_of(KeyError))
  )

  expect { age_of(user) }.to raise_error(MissingDataError) do |ex|
    expect(ex.cause).to be_a(KeyError)
  end

  expect {
    expect { age__of(user) }.not_to raise_error(MissingDataError)
  }.to output(/risks false positives/).to_stderr

  expect { throw :found }.to throw_symbol(:found)

  expect { throw :found, 10 }.to throw_symbol(:found, a_value > 9)

  def self.just_yield
    yield
  end

  expect { |block_checker| just_yield(&block_checker) }.to yield_control

  expect { |block| 2.times(&block) }.to yield_control.twice
  expect { |block| 2.times(&block) }.to yield_control.at_most(4).times
  expect { |block| 4.times(&block) }.to yield_control.at_least(3).times

  def self.just_yield_these(*args)
    yield(*args)
  end

  expect { |block|
    just_yield_these(10, 'food', Math::PI, &block)
  }.to yield_with_args(10, /foo/, a_value_within(0.1).of(3.14))

  expect { |block| just_yield_these(&block) }.to yield_with_no_args

  expect { |block|
    ['football', 'barstool'].each_with_index(&block)
  }.to yield_successive_args(
    [/foo/,                         0],
    [a_string_starting_with('bar'), 1]
  )

  array = [1, 2, 3]
  expect { array << 4 }.to change { array.size }

  expect { array << 4 }.to change(array, :size)

  # Validate what the text says about the failure message...
  expect {
    expect { }.to change { array.size }
  }.to fail(a_string_starting_with('expected `array.size` to have changed'))
  expect {
    expect { }.to change(array, :size)
  }.to fail(a_string_starting_with('expected #size to have changed'))

  expect { array.concat([1, 2, 3]) }.to change { array.size }.by(3)
  expect { array.concat([1, 2, 3]) }.to change { array.size }.by_at_least(2)
  expect { array.concat([1, 2, 3]) }.to change { array.size }.by_at_most(4)

  array = [1, 2, 3]
  expect { array << 4 }.to change { array.size }.from(3)
  expect { array << 5 }.to change { array.size }.to(5)
  expect { array << 6 }.to change { array.size }.from(5).to(6)
  expect { array << 7 }.to change { array.size }.to(7).from(6)

  x = 5
  expect { x += 10 }.to change { x }
    .from(a_value_between(2, 7))
    .to(a_value_between(12, 17))

  x = 5
  expect { x += 1 }.to change { x }.from(a_value_between(2, 7))

  x = 5
  expect { }.not_to change { x }.from(5)

  expect { print 'OK' }.to output('OK').to_stdout
  expect { warn 'problem' }.to output(/prob/).to_stderr

  expect { system('echo OK') }.to output("OK\n").to_stdout_from_any_process
end
