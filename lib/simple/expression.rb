# frozen_string_literal: true

class Expression
  attr_accessor :left, :right

  def initialize(left, right)
    @left = left
    @right = right
  end

  def reducible?
    true
  end

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
    "#{left} #{right}"
  end

  def inspect
    "«#{self}»"
  end
end
