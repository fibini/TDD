# frozen_string_literal: true

# comment
class Solver
  # attr_reader :reverse, :fizzbuzz
  def factorial(num)
    if num.zero?
      1
    elsif num.negative?
      raise StandardError
    end
    (1..num).inject(:*) || 1
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
