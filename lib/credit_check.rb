class CreditCheck

  def valid?(number)
    cleaned = convert_to_integers(number)
    double_odd_positions(cleaned)
  end

  def convert_to_integers(number)
    number.chars.reverse.map do |num|
      num.to_i
    end
  end

  def double_odd_positions(numbers)
    numbers.map.with_index do |num, index|
      if index.odd?
        num*2
      else
        num
      end
    end
  end

end
