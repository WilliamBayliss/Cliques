require "test_helper"

class MembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = User.new(id: 1)
    @clique = Clique.new(id: 1)
    @membership = Membership.new(user_id: 1, clique_id: 1)  
  end

  test "it has a user" do
    assert_equal @user, @membership.user
  end

  test "it has a clique" do
    assert_equal @clique, @membership.clique
  end
end
