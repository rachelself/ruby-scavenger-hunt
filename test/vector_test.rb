require 'test_helper'
require 'vector'

class VectorTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @v1 = My_Vector[0,1]
    @v2 = My_Vector[1,2]
    @v4 = My_Vector[1,0]
    @v5 = My_Vector[2,2]
  end

  # def test_01_add_integer
  #   @v3 = My_Vector[1,1]
  #   assert_equal @v5, @v3 + 1
  # end

  def test_02_shovel_integer
    assert_respond_to @v1, :<<
    assert_equal My_Vector[0,1,4], @v1 << 4
  end

  def test_03_calculate_angle_with_class_method
    angle = My_Vector.calculate_angle(@v1, @v4)
    assert_equal angle, Math::PI/2
  end

  def test_04_calculate_angle_with_instance_method
    angle = My_Vector[0,5].calculate_angle(@v4)
    assert_equal angle, Math::PI/2
  end
end
