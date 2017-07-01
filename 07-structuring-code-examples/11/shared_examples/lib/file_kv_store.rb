require 'tempfile'
require 'pstore'

class FileKVStore
  def initialize(filename = Tempfile.new('pstore').path)
    @pstore = PStore.new(filename)
  end

  def store(key, value)
    @pstore.transaction do
      @pstore[key] = value
    end
  end

  def fetch(key)
    @pstore.transaction do
      @pstore.fetch(key)
    end
  rescue PStore::Error => e
    raise KeyError, e.message
  end
end
