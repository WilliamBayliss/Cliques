require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "it has content" do
    assert_equal "MyString", posts(:one).content
  end

  test "it has a user_id as foreign key" do
    assert_equal 1, posts(:one).user_id
  end

  test "it can be built from a User model" do
    user = User.new
    post = user.posts.build(content: "test")
    assert_equal user.id, post.id
  end
end
