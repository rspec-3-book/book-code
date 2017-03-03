# validate me
require 'rspec/expectations'
include RSpec::Matchers

def method_1
  $stdout.puts 'Hello, World!'
end

def method_2
  $stdout.write 'Hello, World!'
  $stdout.write "\n"
end

def method_3
  $stdout.print 'Hello, '
  $stdout.print 'World!'
  $stdout.print "\n"
end

def output_hello_world_to_stdout
  output("Hello, World!\n").to_stdout
end

expect { method_1 }.to output_hello_world_to_stdout
expect { method_2 }.to output_hello_world_to_stdout
expect { method_3 }.to output_hello_world_to_stdout
