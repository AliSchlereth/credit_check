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

  def test_each_even_position_is_doubled
    checker = CreditCheck.new
    numbers = ["4", "9", "2", "9", "7",
               "3", "5", "4", "7", "7",
               "2", "5", "0", "5", "4", "3"]
    
  end

end
