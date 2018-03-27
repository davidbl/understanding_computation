require_relative "../../test_helper"

describe Expression do
  it "can test for equality" do
    five = Number.new(5)
    six = Number.new(6)
    add = Add.new(five, six)
    add2 = Add.new(six, five)
    add3 = Add.new(six, five)
    mult = Multiply.new(five, six)

    refute(add == add2)
    refute(add == mult)

    assert(add2 == add3)
    assert(mult == mult)
    assert(add == add)
  end
end
