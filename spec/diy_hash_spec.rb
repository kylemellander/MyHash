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
end
