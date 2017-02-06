require 'hash_kv_store'
require 'file_kv_store'
require 'support/kv_store_shared_examples'

RSpec.describe 'Key-value stores' do
  it_behaves_like 'KV store', HashKVStore
  it_behaves_like 'KV store', FileKVStore
end
