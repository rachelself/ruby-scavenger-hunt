require 'test_helper'

class VectorTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @v1 = My_Vector[0,1]
    @v2 = My_Vector[1,2]
  end

  def test_01_add_integer
    @v3 = My_Vector[1,1]
    assert_equal @v2, @v3+1
  end

  def test_02_shovel_integer
    @v1 << 1
    assert_equal @v1, [0,1,1]
  end

end
