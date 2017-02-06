class S3Client
  def self.for(type)
    return if type == :real || type == :memory
    raise "Invalid: #{type.inspect}"
  end
end

RSpec.describe 'Music storage' do
  let(:s3_client) do |example|
    S3Client.for(example.metadata[:s3_adapter])
  end

  it 'stores music on the real S3', s3_adapter: :real do
    # ...
  end

  it 'stores music on an in-memory S3', s3_adapter: :memory do
    # ...
  end

  before { s3_client }
end
