require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has email" do 
    assert_equal "test@test.com", users(:one).email
  end

  test "it can have posts" do
    user = User.new
    user.posts.build
    assert_not nil, user.posts
  end

  test "it has retreivable posts" do
    user = User.new
    post = user.posts.build
    assert_equal post, user.posts.first
  end
end
