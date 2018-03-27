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

  def ==(other)
    other.is_a?(self.class) && other.left == left && other.right == right
  end
end
