# frozen_string_literal: true

class Machine
  attr_accessor :expression, :verbose, :environment

  def initialize(expression, environment = {}, verbose = false)
    @expression = expression
    @environment = environment
    @verbose = verbose
  end

  def run
    expr = @expression
    while expr.reducible?
      output(expr)
      expr = expr.reduce(environment)
    end
    output(expr)
    expr
  end

  private

  def output(expr)
    puts expr if verbose
  end
end
