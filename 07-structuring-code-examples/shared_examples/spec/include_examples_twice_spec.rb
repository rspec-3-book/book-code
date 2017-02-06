require 'hash_kv_store'
require 'file_kv_store'
require 'support/kv_store_shared_examples'

RSpec.describe 'Key-value stores' do
  include_examples 'KV store', HashKVStore
  include_examples 'KV store', FileKVStore
end
