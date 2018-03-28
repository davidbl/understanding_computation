# frozen_string_literal: true

class Multiply < Expression
  def to_s
    "#{left} * #{right}"
  end

  private

  def reducer
    Number.new(left.value * right.value)
  end
end
