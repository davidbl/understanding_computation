require_relative "../../test_helper"

describe Add do
  it "reduces" do
    add = Add.new(Number.new(6), Number.new(5))
    add.reduce.must_equal Number.new(11)
  end

  it "reduces complex expressions" do
    a1 = Add.new(Number.new(6), Number.new(5))
    a2 = Add.new(Number.new(4), Number.new(3))
    a3 = Add.new(a1, a2)
    a3.reduce.must_equal Add.new(Number.new(11), a2)
    a3.reduce.reduce.reduce.must_equal Number.new(18)
  end
end
