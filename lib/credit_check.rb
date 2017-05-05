class CreditCheck

  def valid?(number)
    double_even_positions(number.chars)
  end

  def double_even_positions(numbers)
    numbers.map do |num|
      num = num*2 if num.even?
    end
  end

end
