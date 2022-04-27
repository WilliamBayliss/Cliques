require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it exists" do 
    assert_equal "test@test.com", users(:one).email
  end
end
