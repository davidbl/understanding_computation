# frozen_string_literal: true

class LessThan < Expression
  def to_s
    "#{left} < #{right}"
  end

  private

  def reducer
    Boolean.new(left.value < right.value)
  end
end
