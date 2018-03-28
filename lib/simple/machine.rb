# frozen_string_literal: true

class Machine
  attr_accessor :expression, :verbose

  def initialize(expression, verbose = false)
    @expression = expression
    @verbose = verbose
  end

  def run
    expr = @expression
    while expr.reducible?
      output(expr)
      expr = expr.reduce
    end
    output(expr)
    expr
  end

  private

  def output(expr)
    puts expr if verbose
  end
end
