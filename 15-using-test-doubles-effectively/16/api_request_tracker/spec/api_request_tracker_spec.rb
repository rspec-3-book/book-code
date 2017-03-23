require 'api_request_tracker'

RSpec.describe APIRequestTracker do
  let(:request) { Request.new(:get, '/users') }

  it 'increments the request counter' do
    reporter = class_double(MetricsReporter)
    expect(reporter).to receive(:increment).with('api.requests.get_users')

    APIRequestTracker.new(reporter: reporter).process(request)
  end
end
