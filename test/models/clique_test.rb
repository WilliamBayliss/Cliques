require "test_helper"

class CliqueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has a title" do
    assert_equal "title", cliques(:one).title
  end

  test "it has a description" do
    assert_equal "description", cliques(:one).description
  end

  test "it has memberships" do
    assert_equal memberships(:one), cliques(:one).memberships.first
  end
  
  test "it has retreivable users" do
    assert_equal users(:one), cliques(:one).users.first
  end

  test "it has adminships" do
    assert_equal adminships(:one), cliques(:one).adminships.first
  end

  test "it has administrators through adminships" do
    assert_equal users(:one), cliques(:one).administrators.first
  end
end
