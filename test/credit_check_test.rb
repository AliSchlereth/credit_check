require "minitest/autorun"
require "minitest/pride"
require './lib/credit_check'
require "pry"

class CreditCheckTest < Minitest::Test

  def test_the_files_talk_to_each_other
    checker = CreditCheck.new
    cc_number = "4929735477250543"

    refute checker.valid?(cc_number)
  end

  def test_input_number_is_converted_to_an_array_of_integers
    checker = CreditCheck.new
    cc_number = "4929735477250543"
    converted = [3, 4, 5, 0, 5,
                 2, 7, 7, 4, 5,
                 3, 7, 9, 2, 9, 4]

    assert_equal converted, checker.convert_to_integers(cc_number)
  end

  def test_each_odd_position_is_doubled
    checker = CreditCheck.new
    numbers = [3, 4, 5, 0, 5,
               2, 7, 7, 4, 5,
               3, 7, 9, 2, 9, 4]
    odd_doubled =  [3, 8, 5, 0, 5,
                    4, 7, 14, 4, 10,
                    3, 14, 9, 4, 9, 8]

    assert_equal odd_doubled, checker.double_odd_positions(numbers)
  end

end
