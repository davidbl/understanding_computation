# frozen_string_literal: true

class LessThan < Expression
  def to_s
    "#{left} < #{right}"
  end

  def reduce
    if left.reducible?
      LessThan.new(left.reduce, right)
    elsif right.reducible?
      LessThan.new(left, right.reduce)
    else
      Boolean.new(left.value < right.value)
    end
  end
end
