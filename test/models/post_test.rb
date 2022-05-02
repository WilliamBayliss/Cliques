require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "it has content" do
    assert_equal "MyString", posts(:one).content
  end

  test "it won't save without content" do
    post = Post.new
    assert_not post.save
  end

  test "it has a user_id as foreign key" do
    assert_equal 1, posts(:one).user_id
  end

  test "it can be built from a User model" do
    user = User.new
    post = user.posts.build
    assert_equal user, post.user
  end

  test "it has a retreivable user" do
    user = User.new
    post = user.posts.build(content: "test")
    assert_equal user, post.user
  end
end
