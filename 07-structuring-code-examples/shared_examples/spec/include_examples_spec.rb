require 'hash_kv_store'
require 'support/kv_store_shared_examples'

RSpec.describe HashKVStore do
  include_examples 'KV store', HashKVStore
end
