# frozen_string_literal: true

class Add < Expression
  def to_s
    "#{left} + #{right}"
  end
end
