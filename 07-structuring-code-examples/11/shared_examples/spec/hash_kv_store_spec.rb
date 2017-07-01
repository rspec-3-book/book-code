require 'hash_kv_store'
require 'support/kv_store_shared_examples'

RSpec.describe HashKVStore do
  it_behaves_like 'KV store', HashKVStore
end
