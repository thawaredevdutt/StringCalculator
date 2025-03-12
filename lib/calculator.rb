# frozen_string_literal: true

class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?+    @string_number = numbers
    numbers.split(/#{delimiter}|\n/).map(&:to_i).sum
  end

  private

  def self.delimiter
    str = ','
    if @string_number.start_with?('//')
      str, _numbers = @string_number.split("\n", 2)
      str = str[2..]
    end
    str    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
