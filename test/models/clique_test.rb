require "test_helper"

class CliqueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it has a title" do
    assert_equal "title", cliques(:one).title
  end
end
