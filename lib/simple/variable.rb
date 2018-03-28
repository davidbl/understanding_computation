# frozen_string_literal: true

class Variable
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def to_s
    name.to_s
  end

  def inspect
    "«#{self}»"
  end

  def reducible?
    true
  end

  def reduce(env)
    env[name]
  end
end
