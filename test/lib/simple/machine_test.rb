require_relative "../../test_helper"

describe Machine do
  let(:m1) { Multiply.new(Number.new(6), Number.new(5)) }
  let(:m2) { Multiply.new(Number.new(4), Number.new(3)) }
  let(:add) { Add.new(m1, m2) }
  let(:machine) { Machine.new(add) }

  it "runs expressions" do
    result = machine.run
    assert_equal(result, Number.new(42))
  end

  it "does not mutate the expression" do
    result = machine.run
    assert_equal(result, Number.new(42))
    assert_equal(machine.expression, add)
  end
end
