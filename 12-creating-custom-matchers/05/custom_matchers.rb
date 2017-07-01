# validate me
require 'rspec/expectations'

include RSpec::Matchers

results = [Math::PI]
expect(results).to start_with a_value_within(0.1).of(Math::PI)

RSpec::Matchers.alias_matcher :an_admin, :be_an_admin

RSpec::Matchers.class_exec { undef an_admin }

RSpec::Matchers.alias_matcher :an_admin, :be_an_admin do |old_description|
  old_description.sub('be an admin', 'a superuser')
end

RSpec::Matchers.define :split_infinitives do
  match { |_| false }
end

RSpec::Matchers.define_negated_matcher :avoid_splitting_infinitives,
                                       :split_infinitives

correct_grammar = 'to boldly split infinitives'

expect(correct_grammar).to_not split_infinitives

expect(correct_grammar).to avoid_splitting_infinitives

RSpec::Matchers.define_negated_matcher :start_with_something_besides,
                                       :start_with

RSpec::Matchers.define_negated_matcher :end_with_something_besides,
                                       :end_with

# Strict: requires both conditions to be satisfied
expect('blazingly').to(
  start_with_something_besides('a').and \
    end_with_something_besides('z')
)

# Permissive: requires at least one condition to be satisfied
expect('absolutely').to(
  start_with_something_besides('a').or \
    end_with_something_besides('z')
)
