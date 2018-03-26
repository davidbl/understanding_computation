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
    raise "Not Implemented"
  end

  def to_s
    "#{left} #{right}"
  end

  def inspect
    "«#{self}»"
  end
end
