# validate me
require 'rspec/core'
require 'rspec/expectations'
require 'stringio'

$spec_out = StringIO.new
$spec_err = StringIO.new
RSpec.configuration.output_stream = $spec_out
RSpec.configuration.error_stream  = $spec_err

class User
  def initialize(admin)
    @admin = admin
  end

  def admin?
    @admin
  end

  # Hardcoding this to make it look pretty for an expectation failure below.
  def to_s
    '#<User name="Daphne">'
  end
  alias inspect to_s
end

# We can't use the `include` matcher when including `RSpec::Matchers`
# at the top level because of `main#include`, so we put it in a host
# class instead.
class Host
  extend RSpec::Matchers

  class ImmediateFailureFormatter
    RSpec::Core::Formatters.register self, :example_failed

    def initialize(_)
    end

    def example_failed(notification)
      raise notification.exception
    end
  end

  RSpec.configuration.add_formatter ImmediateFailureFormatter

  def self.verify_group_passes
    $spec_out.rewind
    $spec_err.rewind

    group = yield

    run_result = group.run(RSpec.configuration.reporter)
    expect(run_result).to eq(true), $spec_out.string
    expect($spec_err.string).to eq('')
  end

  def self.heredoc_without_markers(heredoc)
    heredoc
      .chomp
      .split("\n")
      .reject { |l| l =~ /# (START|END)/ }
      .join("\n")
      .gsub(/^  /, '')
  end

  # When Ruby warnings are enabled, any expression that uses `==`
  # that appears to discard the value generates a warning:
  #   possibly useless use of == in void context
  # To avoid that, we wrap the bit of code that ends in `==` in this,
  # method, which simply yields, tricking ruby into thinking we are using
  # the return value of `==`.
  def self.silence_useless_use_of_eq_in_void_context
    yield
  end

  def self.fail(*args)
    raise_error(RSpec::Expectations::ExpectationNotMetError, *args)
  end

  silence_useless_use_of_eq_in_void_context do
    expect(Math.sqrt(9)).to eq(3)
    # equivalent to:
    Math.sqrt(9) == 3
  end

  class Permutations
    def of(_words)
      :result
    end
  end

  long_word_list = []

  perms      = Permutations.new
  first_try  = perms.of(long_word_list)
  second_try = perms.of(long_word_list)

  expect(second_try).to eq(first_try)

  expect(second_try).to equal(first_try)

  verify_group_passes do
    RSpec.describe RSpec do
      describe '.configuration' do
        it 'returns the same object every time' do
          expect(RSpec.configuration).to equal(RSpec.configuration)
        end
      end
    end
  end

  expect(RSpec.configuration).to be(RSpec.configuration)

  # 3 == 3.0:
  expect(3).to eq(3.0)
  # ...but 3.eql?(3.0) is false:
  expect(3).not_to eql(3.0)

  expect(true).to be_truthy
  expect(0).to be_truthy
  expect(false).not_to be_truthy
  expect(nil).not_to be_truthy

  # ...and on the flip side:
  expect(false).to be_falsey
  expect(nil).to be_falsey
  expect(true).not_to be_falsey
  expect(0).not_to be_falsey

  expect(1.odd?).to be true
  expect(2.odd?).to eq false

  expect([String, Regexp]).to include(String)

  expect(['a string', Regexp]).to include(String)

  expect([String, Regexp]).to include(an_object_eq_to String)

  expect {
    expect(['a string', Regexp]).to include(an_object_eq_to String)
  }.to fail

  expect(1).to be == 1
  expect(1).to be < 2
  expect(1).to be <= 2
  expect(2).to be > 1
  expect(2).to be >= 1
  expect(String).to be === 'a string'
  expect(/foo/).to be =~ 'food'

  squares = 1.upto(4).map { |i| i * i }
  expect(squares).to include(a_value > 15)

  expect {
    expect(0.1 + 0.2).to eq(0.3)
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected: 0.3
       got: 0.30000000000000004

  (compared using ==)
  EOM

  expect(0.1 + 0.2).to be_within(0.0001).of(0.3)

  town_population = 1237
  expect(town_population).to be_within(25).percent_of(1000)

  expect(town_population).to be_between(750, 1250)

  expect([]).to be_empty

  user = User.new(true)

  expect(user).to be_admin
  expect(user).to be_an_admin

  hash = { name: 'Harry Potter', age: 17, house: 'Gryffindor' }
  expect(hash).to have_key(:age)

  expect(user.admin?).to eq(true)

  expect {
    user = User.new(false)
    expect(user.admin?).to eq(true)
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected: true
       got: false

  (compared using ==)
  EOM

  expect {
    user = User.new(false)
    expect(user).to be_an_admin
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected `#<User name="Daphne">.admin?` to return true, got false
  EOM

  array_of_hashes = [{ lol: nil }]
  expect(array_of_hashes).to include(have_key(:lol))

  # Our choice not to use Symbol#to_proc is intentional
  # here for didactic reasons.
  expect(1).to satisfy { |number| number.odd? }

  expect {
    expect(2).to satisfy { |number| number.odd? }
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected 2 to satisfy block
  EOM

  expect([1, 2, 3]).to include(an_object_satisfying(&:even?))

  expect('a string').to include('str')
  expect([1, 2, 3]).to include(3)

  hash = { name: 'Harry Potter', age: 17, house: 'Gryffindor' }
  expect(hash).to include(:name)
  expect(hash).to include(age: 17)

  expect('a string').to include('str', 'ing')
  expect([1, 2, 3]).to include(3, 2)
  expect(hash).to include(:name, :age)
  expect(hash).to include(name: 'Harry Potter', age: 17)

  expecteds = [3, 2]

  expect {
    expect([1, 2, 3]).to include(expecteds)
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected [1, 2, 3] to include [3, 2]
  EOM

  expect([1, 2, 3]).to include(*expecteds)

  expect('a string').to start_with('a str').and end_with('ng')
  expect([1, 2, 3]).to start_with(1).and end_with(3)

  expect([1, 2, 3]).to start_with(1, 2)
  expect([1, 2, 3]).to end_with(2, 3)

  expect(['list', 'of', 'words']).to start_with(
    a_string_ending_with('st')
  ).and end_with(
    a_string_starting_with('wo')
  )

  numbers = [2, 4, 6, 8]
  expect(numbers).to all be_even

  def self.evens_up_to(n = 0)
    0.upto(n).select(&:odd?)
  end

  expect(evens_up_to).to all be_even

  expect {
    RSpec::Matchers.define_negated_matcher :be_non_empty, :be_empty

    expect(evens_up_to).to be_non_empty.and all be_even
  }.to fail(a_string_including heredoc_without_markers(<<-EOM))
  expected `[].empty?` to return false, got true
  EOM

  expect('a string').to match(/str/)
  expect('a string').to match('str')

  children = [
    { name: 'Coen',   age: 4 },
    { name: 'Daphne', age: 2 }
  ]

  expect(children).to match [
    { name: 'Coen',   age: a_value > 3 },
    { name: 'Daphne', age: a_value < 3 }
  ]

  expect(children).to contain_exactly(
    { name: 'Daphne', age: a_value < 3 },
    { name: 'Coen',   age: a_value > 3 }
  )

  expect(children).to contain_exactly(
    { name: 'Coen',   age: a_value > 3 },
    { name: 'Daphne', age: a_value < 3 }
  )

  expect([]).to respond_to(:size, :each, :map)

  expect({}).to respond_to(:merge).with(1).argument
  expect({}).to respond_to(:fetch).with(2).arguments

  require 'uri'
  uri = URI('http://github.com/rspec/rspec')
  expect(uri).to have_attributes(host: 'github.com', path: '/rspec/rspec')

  expect([uri]).to include(an_object_having_attributes(host: 'github.com'))

  expect(3).to eq(3)

  expect { raise 'boom' }.to raise_error('boom')

  expect(-> { raise 'boom' }).to raise_error('boom')
  expect { raise 'boom' }.to raise_error('boom')

  expect {
    'hello'.world
  }.to raise_error(an_object_having_attributes(name: :world))

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

  expect {
    age_of(user)
  }.to raise_error(MissingDataError) do |ex|
    expect(ex.cause).to be_a(KeyError)
  end

  expect {
    'hello'.world
  }.to raise_error(NoMethodError) do |ex|
    expect(ex.name).to eq(:world)
  end

  expect {
    expect {
      age__of(user)
    }.not_to raise_error(MissingDataError)
  }.to output(/risks false positives/).to_stderr

  expect { throw :found }.to throw_symbol(:found)

  expect { throw :found, 10 }.to throw_symbol(:found, a_value > 9)

  def self.just_yield
    yield
  end

  expect { |block| just_yield(&block) }.to yield_control

  expect { |block| 2.times(&block) }.to yield_control.twice
  expect { |block| 2.times(&block) }.to yield_control.at_most(4).times
  expect { |block| 4.times(&block) }.to yield_control.at_least(3).times

  def self.just_yield_these(*args)
    yield(*args)
  end

  expect { |block|
    just_yield_these(10, 'food', Math::PI, &block)
  }.to yield_with_args 10, /foo/, a_value_within(0.1).of(3.14)

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
  }.to fail(a_string_starting_with('expected result to have changed'))
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
