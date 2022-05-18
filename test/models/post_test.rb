require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "it has content" do
    assert_equal "MyString", posts(:one).content
  end

  test "it won't save without content" do
    post = Post.new(content: "test")
    assert_not post.save
  end

  test "it has a user" do
    assert_equal users(:one), posts(:one).user
  end

  test "it has a clique" do
    assert_equal cliques(:one), posts(:one).clique
  end

  test "it can be built from a User model" do
    user = User.new(id: 1)
    post = user.posts.build(content: "test")
    assert_equal user, post.user
  end

  test "it has a retreivable user" do
    user = User.new(id: 1)
    post = user.posts.build(content: "test")
    assert_equal user, post.user
  end
  test "it has comments" do
    assert_equal posts(:one).comments.first, comments(:one)
  end
end
