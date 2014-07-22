require 'test_helper'
require 'integer_class'

class Integer_ClassTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.

  end

  def test_01_factors
    integer = 12
    assert_equal [2, 3, 4, 6], integer.factors
  end

end
