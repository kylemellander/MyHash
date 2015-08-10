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

  def hashbrowns_value?(value)
    @values.include?(value)
  end

  def hashbrowns_length
    i=0
    @keys.each do
      i+=1
    end
    i
  end
end
