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
      self.class.new(left.reduce, right)
    elsif right.reducible?
      self.class.new(left, right.reduce)
    else
      reducer
    end
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

  private

  def reducer
    raise "Not Implemented"
  end
end
