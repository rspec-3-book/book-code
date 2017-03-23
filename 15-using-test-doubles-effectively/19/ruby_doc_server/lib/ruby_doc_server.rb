require 'json'

class RubyDocServer
  def initialize(output: $stdout)
    @output = output
  end

  def process_request(path)
    class_name, method_prefix = path.sub(%r{^/}, '').split('/')
    klass = Object.const_get(class_name)
    methods = klass.instance_methods.grep(/\A#{method_prefix}/).sort
    respond_with(methods)
  end

private

  def respond_with(data)
    @output.puts 'Content-Type: application/json'
    @output.puts
    @output.puts JSON.generate(data)
  end
end

if __FILE__.end_with?($PROGRAM_NAME)
  RubyDocServer.new.process_request(ENV['PATH_INFO'])
end
