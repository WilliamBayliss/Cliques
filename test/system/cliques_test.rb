require "application_system_test_case"

class CliquesTest < ApplicationSystemTestCase
  setup do
    @clique = cliques(:one)
  end

  test "visiting the index" do
    visit cliques_url
    assert_selector "h1", text: "Cliques"
  end

  test "should create clique" do
    visit cliques_url
    click_on "New clique"

    click_on "Create Clique"

    assert_text "Clique was successfully created"
    click_on "Back"
  end

  test "should update Clique" do
    visit clique_url(@clique)
    click_on "Edit this clique", match: :first

    click_on "Update Clique"

    assert_text "Clique was successfully updated"
    click_on "Back"
  end

  test "should destroy Clique" do
    visit clique_url(@clique)
    click_on "Destroy this clique", match: :first

    assert_text "Clique was successfully destroyed"
  end
end
