require 'rspec/core'
require 'rspec/core/formatters/base_text_formatter'
require 'rspec/print_failures_eagerly/version'

# We disable line length because the labels cause lines to be too long
# but they do not render in the book so it causes no problems.
module RSpec
  module PrintFailuresEagerly
    class Formatter
      RSpec::Core::Formatters.register self, :example_failed # <label id="code.formatter.register" />

      def initialize(output) # <label id="code.formatter.initialize" />
        @output = output
        @last_failure_index = 0
      end

      def example_failed(notification) # <label id="code.formatter.example-failed" />
        @output.puts
        @output.puts notification.fully_formatted(@last_failure_index += 1) # <label id="code.formatter.print-fully-formatted" />
        @output.puts
      end
    end
    module SilenceDumpFailures
      def dump_failures(_notification)
      end

      RSpec::Core::Formatters::BaseTextFormatter.prepend(self)
    end
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    config.add_formatter RSpec::PrintFailuresEagerly::Formatter
  end
end
