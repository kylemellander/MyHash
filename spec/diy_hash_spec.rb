require('rspec')
require('diy_hash')

describe(Hashbrowns) do

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = Hashbrowns.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#hashbrowns_key?") do
    it("returns true if the hash has key") do
      test_hash = Hashbrowns.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.hashbrowns_key?("kitten")).to(eq(true))
    end
  end

  describe("#hashbrowns_value?") do
    it("returns true if the hash has key") do
      test_hash = Hashbrowns.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.hashbrowns_value?("cute")).to(eq(true))
    end
  end

  describe("#hashbrowns_length") do
    it("returns the amount of hashes included") do
      test_hash = Hashbrowns.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("kittens", "cutes")
      expect(test_hash.hashbrowns_length()).to(eq(2))
    end
  end

  describe("#hashbrowns_merge") do
    it("returns the amount of hashes included") do
      test_hash_a = Hashbrowns.new()
      test_hash_b = Hashbrowns.new()
      test_hash_a.myStore("kitten", "cute")
      test_hash_b.myStore("kittens", "cutes")
      expect(test_hash_a.hashbrowns_merge(test_hash_b)).to(eq({"kitten"=>"cute", "kittens"=>"cutes"}))
    end
  end
end
