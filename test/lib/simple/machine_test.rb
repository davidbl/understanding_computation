require_relative "../../test_helper"

describe Machine do
  it "runs expressions" do
    m1 = Multiply.new(Number.new(6), Number.new(5))
    m2 = Multiply.new(Number.new(4), Number.new(3))
    a3 = Add.new(m1, m2)
    m = Machine.new(a3, false)
    m.run
    m.expression.must_equal Number.new(42)
  end

  it "preserves the original expression" do
    m1 = Multiply.new(Number.new(6), Number.new(5))
    m2 = Multiply.new(Number.new(4), Number.new(3))
    a3 = Add.new(m1, m2)
    m = Machine.new(a3, false)
    m.run
    m.expression.must_equal Number.new(42)
    m.original_expression.must_equal a3
  end
end
