require 'api_request_tracker'

RSpec.describe APIRequestTracker do
  let(:request) { Request.new(:get, '/users') }

  it 'increments the request counter' do
    reporter = instance_double(MetricsReporter)
    allow(MetricsReporter).to receive(:new).and_return(reporter)
    expect(reporter).to receive(:increment).with('api.requests.get_users')

    APIRequestTracker.new.process(request)
  end
end
