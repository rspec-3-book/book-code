RSpec.shared_examples 'KV store' do
  it 'allows you to fetch previously stored values' do
    kv_store.store(:language, 'Ruby')
    kv_store.store(:os, 'linux')

    expect(kv_store.fetch(:language)).to eq 'Ruby'
    expect(kv_store.fetch(:os)).to eq 'linux'
  end

  # remainder of examples...

  it 'raises a KeyError when you fetch an unknown key' do
    expect { kv_store.fetch(:foo) }.to raise_error(KeyError)
  end
end

require 'file_kv_store'
require 'tempfile'

RSpec.describe FileKVStore do
  it_behaves_like 'KV store' do
    let(:tempfile) { Tempfile.new('kv.store') }
    let(:kv_store) { FileKVStore.new(tempfile.path) }
  end
end
