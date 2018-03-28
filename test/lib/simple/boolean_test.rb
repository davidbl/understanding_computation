require_relative "../../test_helper"

describe Boolean do
  describe "initialize" do
    it "accepts valid values" do
      t = Boolean.new(true)
      assert(t.value)
      f = Boolean.new(false)
      refute(f.value)
    end

    it "raises on invalid values" do
      assert_raises(ArgumentError) { Boolean.new("quark") }
    end
  end

  it "cannot be reduced" do
    t = Boolean.new(true)
    refute(t.reducible?)
  end
end
