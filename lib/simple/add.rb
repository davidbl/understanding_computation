# frozen_string_literal: true

class Add < Expression
  def reduce
    if left.reducible?
      Add.new(left.reduce, right)
    elsif right.reducible?
      Add.new(left, right.reduce)
    else
      Number.new(left.value + right.value)
    end
  end

  def to_s
    "#{left} + #{right}"
  end
end
