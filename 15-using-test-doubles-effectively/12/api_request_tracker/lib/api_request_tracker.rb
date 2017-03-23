require 'metrics_reporter'
require 'endpoint'

class APIRequestTracker
  def process(request)
    endpoint_description = Endpoint.description_of(request)
    MetricsReporter.increment("api.requests.#{endpoint_description}")
  end
end
