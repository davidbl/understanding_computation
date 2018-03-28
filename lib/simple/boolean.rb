# frozen_string_literal: true

class Boolean < Value
  def initialize(value)
    raise ArgumentError.new("Invalid Boolean #{value}") unless valid_value(value)
    @value = value
  end

  private

  def valid_value(value)
    [true, false].include?(value)
  end
end
