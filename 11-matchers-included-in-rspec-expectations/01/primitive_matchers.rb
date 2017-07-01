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
  expected 2 to satisfy expression `number.odd?`
  EOM

  expect([1, 2, 3]).to include(an_object_satisfying(&:even?))
end
