require 'api_request_tracker'

RSpec.describe APIRequestTracker do
  let(:request) { Request.new(:get, '/users') }

  it 'increments the request counter' do
    expect(MetricsReporter).to receive(:increment).with(
      'api.requests.get_users'
    )

    APIRequestTracker.new.process(request)
  end
end
