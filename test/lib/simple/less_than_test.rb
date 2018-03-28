require_relative "../../test_helper"

describe LessThan do
  it "reduces" do
    ls1 = LessThan.new(Number.new(6), Number.new(5))
    assert_instance_of(Boolean, ls1.reduce)
    refute(ls1.reduce.value)

    ls2 = LessThan.new(Number.new(5), Number.new(6))
    assert_instance_of(Boolean, ls2.reduce)
    assert(ls2.reduce.value)
  end

  it "can reduce complex expressions" do
    add1 = Add.new(Number.new(1), Number.new(2))
    add2 = Add.new(Number.new(3), Number.new(4))
    ls = LessThan.new(add1, add2)
    r1 = ls.reduce
    assert_instance_of(LessThan, r1)
    r2 = r1.reduce
    assert_instance_of(LessThan, r2)
    r3 = r2.reduce
    assert_instance_of(Boolean, r3)
    assert(r3.value)
  end
end
