# frozen_string_literal: true

class Machine
  attr_accessor :expression, :verbose
  attr_reader :original_expression

  def initialize(expression, verbose = true)
    @expression = expression
    @original_expression = expression.dup
    @verbose = verbose
  end

  def run
    while expression.reducible?
      output
      step
    end
    output
    expression
  end

  private

  def step
    @expression = @expression.reduce
  end

  def output
    puts expression if verbose
  end

end
