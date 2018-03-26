# frozen_string_literal: true

class Value
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def reducible?
    false
  end

  def reduce
    raise "Not Implemented"
  end

  def to_s
    "#{value}"
  end

  def inspect
    "«#{self}»"
  end
end
