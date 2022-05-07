require "test_helper"

class AdminshipTest < ActiveSupport::TestCase
  test "it has a user" do
    assert_equal users(:one), adminships(:one).user
  end
end
