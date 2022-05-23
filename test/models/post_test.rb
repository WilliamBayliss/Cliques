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

  test "it can be upvoted" do
    posts(:one).upvote_from users(:one)
    assert_equal 1, posts(:one).get_upvotes.count
  end

  test "it can be downvoted" do
    posts(:one).downvote_from users(:one)
    assert_equal 1, posts(:one).get_downvotes.count
  end
end
