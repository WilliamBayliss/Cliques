require "test_helper"

class FriendshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has a user" do
    assert_equal users(:one), friendships(:one).user
  end

  test "it has a requested friend" do
    assert_equal users(:two), friendships(:one).friend
  end

  test "it keeps track of if request has been accepted" do
    assert_equal true, friendships(:one).accepted
  end

  test "it keeps track of if request has not been accepted" do
    assert_equal false, friendships(:two).accepted
  end
end
