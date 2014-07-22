require 'test_helper'

class VectorTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @v1 = Vector[0,1]
    @v2 = Vector[5,6]
  end

  def test_01a_add_integer
    assert_raises TypeError do
      @v2 + 1
    end
  end

end
