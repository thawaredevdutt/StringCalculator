# frozen_string_literal: true

class Calculator
  def self.add(numbers)
    evaluate_string(numbers)
  end

  private

  def self.evaluate_string(string_number)
    return 0 if string_number.empty?

    @string_number = string_number

    numbers = @string_number.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end

  def self.delimiter
    str = ','
    if @string_number.start_with?('//')
      str, _numbers = @string_number.split("\n", 2)
      str = str[2..]
    end
    str    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
