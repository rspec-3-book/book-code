# validate me
require 'rspec/expectations'

# We can't use the `include` matcher when including `RSpec::Matchers`
# at the top level because of `main#include`, so we put it in a host
# class instead.
class Host
  extend RSpec::Matchers

  def self.heredoc_without_markers(heredoc)
    heredoc
      .chomp
      .split("\n")
      .reject { |l| l =~ /# (START|END)/ }
      .join("\n")
      .gsub(/^  /, '')
  end

  def self.fail(*args)
    raise_error(RSpec::Expectations::ExpectationNotMetError, *args)
  end

  expect('a string').to include('str')
  expect([1, 2, 3]).to include(3)

  hash = { name: 'Harry Potter', age: 17, house: 'Gryffindor' }
  expect(hash).to include(:name)
  expect(hash).to include(age: 17)

  expect('a string').to include('str', 'ing')
  expect([1, 2, 3]).to include(3, 2)
  expect(hash).to include(:name, :age)
  expect(hash).to include(name: 'Harry Potter', age: 17)

  expecteds = nil

  expect {
    expecteds = [3, 2]
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
    { name: 'Coen',   age: 6 },
    { name: 'Daphne', age: 4 },
    { name: 'Crosby', age: 2 }
  ]

  expect(children).to match [
    { name: 'Coen',   age: a_value > 5 },
    { name: 'Daphne', age: a_value_between(3, 5) },
    { name: 'Crosby', age: a_value < 3 }
  ]

  expect(children).to contain_exactly(
    { name: 'Daphne', age: a_value_between(3, 5) },
    { name: 'Crosby', age: a_value < 3 },
    { name: 'Coen',   age: a_value > 5 }
  )

  expect(children).to contain_exactly(
    { name: 'Crosby', age: a_value < 3 },
    { name: 'Coen',   age: a_value > 5 },
    { name: 'Daphne', age: a_value_between(3, 5) }
  )

  expect([]).to respond_to(:size, :each, :map)

  expect({}).to respond_to(:merge).with(1).argument
  expect({}).to respond_to(:fetch).with(2).arguments

  require 'uri'
  uri = URI('http://github.com/rspec/rspec')
  expect(uri).to have_attributes(host: 'github.com', path: '/rspec/rspec')

  expect([uri]).to include(an_object_having_attributes(host: 'github.com'))
end
