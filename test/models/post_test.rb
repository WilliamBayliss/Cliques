require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it exists" do
    assert_equal "MyString", posts(:one).content
  end
end
