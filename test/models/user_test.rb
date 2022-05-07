require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has email" do 
    assert_equal "test@test.com", users(:one).email
  end

  test "it can have posts" do
    assert_not nil, users(:one).posts
  end

  test "it has retreivable posts" do
    assert_equal posts(:one), users(:one).posts.first
  end

  test "it has memberships" do
    assert_not_nil users(:one).memberships
  end

  test "it has retreivable cliques" do
    assert_equal cliques(:one), users(:one).cliques.first
  end

  test "it has adminships" do
    assert_equal adminships(:one), users(:one).adminships.first
  end
end
