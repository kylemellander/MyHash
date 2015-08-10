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
end
