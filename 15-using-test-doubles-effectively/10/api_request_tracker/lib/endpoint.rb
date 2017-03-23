Request = Struct.new(:verb, :path)

class Endpoint
  def self.description_of(request)
    "#{request.verb}_#{request.path.sub(%r{^/}, '')}"
  end
end
