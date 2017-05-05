class CreditCheck

  def validate(number)
    result = if valid?(number)
      "The number is valid!"
    else
      "The number is invalid!"
    end
    p result
  end


  def valid?(number)
    cleaned       = convert_to_integers(number)
    doubled       = double_odd_positions(cleaned)
    doubles_added = convert_double_digits(doubled)
    total         = add_all_digits(doubles_added)
    multiple_of_ten?(total)
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

  def convert_double_digits(odd_doubled)
    odd_doubled.map do |num|
      if num > 9
        add_double_digits(num)
      else
        num
      end
    end
  end

  def add_double_digits(num)
    num.to_s.chars.reduce(0) do |result, num|
      result += num.to_i
    end
  end

  def add_all_digits(doubles_added)
    doubles_added.reduce(0) do |result, num|
      result += num
    end
  end

  def multiple_of_ten?(total)
    total % 10 == 0
  end

end
