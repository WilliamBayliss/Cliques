require "test_helper"

class AdminshipTest < ActiveSupport::TestCase
  test "it has a user" do
    assert_equal users(:one), adminships(:one).user
  end
  test "it has a clique" do
    assert_equal cliques(:one), adminships(:one).clique 
  end
end
