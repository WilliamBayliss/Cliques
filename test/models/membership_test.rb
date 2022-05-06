require "test_helper"

class MembershipTest < ActiveSupport::TestCase
  setup do
    @membership = Membership.new(user: users(:one), clique: cliques(:one))
  end
  
  test "it has a user" do
    assert_equal users(:one), @membership.user
  end
end
