# frozen_string_literal: true

class Calculator
  def self.add(numbers)
    evaluate_string(numbers)
  end

  private

  def self.evaluate_string(string_number)
    return 0 if string_number.empty?

    @string_number = string_number
    validate_numbers
  end

  def self.validate_numbers
    return 'Invalid Input' unless valid_input?

    numbers = @string_number.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end

  def self.valid_input?
    numbers = @string_number.split(delimiter)
    numbers.select { |num| num.eql?("\n") }.empty?
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
