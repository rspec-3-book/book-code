require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rspec/core/rake_task'

namespace :spec do
  desc 'Runs unit specs'
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = 'spec/unit/**/*_spec.rb'
    t.rspec_opts = ['--profile']
  end
end

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  puts 'Spec tasks not defined since RSpec is unavailable'
end
