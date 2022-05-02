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

  
end
