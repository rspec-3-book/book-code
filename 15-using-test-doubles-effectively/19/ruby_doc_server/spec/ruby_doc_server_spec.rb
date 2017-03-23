require 'ruby_doc_server'

RSpec.describe RubyDocServer do
  it 'finds matching ruby methods' do
    out = get('/Array/max')

    expect(out).to have_received(:puts).with('Content-Type: application/json')
    expect(out).to have_received(:puts).with('["max","max_by"]')
  end

  def get(path)
    output = object_spy($stdout)
    RubyDocServer.new(output: output).process_request(path)
    output
  end
end
