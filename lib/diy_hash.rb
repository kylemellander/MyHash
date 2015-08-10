class Hashbrowns
  def initialize
    @keys = []
    @values = []
  end

  def myStore(key, value)
    @keys.push(key)
    @values.push(value)
  end

  def myFetch(key)
    i = @keys.index(key)
    @values[i]
  end

  def hashbrowns_key?(key)
    @keys.include?(key)
  end
end
