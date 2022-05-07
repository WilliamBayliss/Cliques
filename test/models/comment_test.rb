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
end
