class HashKVStore
  def initialize
    @hash = {}
  end

  def store(key, value)
    @hash[key] = value
  end

  def fetch(key)
    @hash.fetch(key)
  end
end
