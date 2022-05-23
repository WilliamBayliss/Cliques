require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has content" do
    assert_equal "test", comments(:one).content
  end

  test "it has a user" do
    assert_equal users(:one), comments(:one).user
  end

  test "it has comments" do
    assert_equal comments(:two), comments(:one).comments.first
  end

  test "it can be upvoted" do
    comments(:one).upvote_from users(:one)
    assert_equal 1, comments(:one).get_upvotes.count
  end

  test "it can be downvoted" do
    comments(:one).downvote_from users(:one)
    assert_equal 1, comments(:one).get_downvotes.count
  end
end
