# class Hashbrowns
#   def initialize
#     @keys = []
#     @values = []
#   end
#
#   def myStore(key, value)
#     @keys.push(key)
#     @values.push(value)
#     @hashbrowns = [@keys, @values]
#   end
#
#   def myFetch(key)
#     i = @keys.index(key)
#     @values[i]
#   end
#
#   def hashbrowns_key?(key)
#     @keys.include?(key)
#   end
#
#   def hashbrowns_value?(value)
#     @values.include?(value)
#   end
#
#   def hashbrowns_length
#     i=0
#     @keys.each do
#       i+=1
#     end
#     i
#   end
#
#   def hashbrowns_merge(hash2)
#     merged_hash = []
#     self.each do |hash_array|
#       merge_array = []
#       hash_array.each do |hash|
#         merge_array.push(hash)
#       end
#       merged_hash.push(merge_array)
#     end
#   end
# end


class Hashbrowns
  def initialize
    @hashbrowns = []
  end
  def myStore(key, value)
    @hash = []
    @hashbrowns.push(@hash.push(key, value))
  end

  def hashbrowns_key?(key)
    key_find = false
    @hashbrowns.each do |hashbrown|
      if hashbrown[0] == key
        key_find = true
      end
    end
    key_find
  end

  def hashbrowns_value?(value)
    value_find = false
    @hashbrowns.each do |hashbrown|
      if hashbrown[1] == value
        value_find = true
      end
    end
    value_find
  end

  def myFetch(key)
    value = nil
    @hashbrowns.each do |hashbrown|
      if hashbrown[0] == key
        value = hashbrown[1]
      end
    end
    value
  end

  def hashbrowns_length
    counter = 0
    @hashbrowns.each() do |hashbrown|
      counter += 1
    end
    counter
  end

end
