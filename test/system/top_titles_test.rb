require "application_system_test_case"

class TopTitlesTest < ApplicationSystemTestCase
  setup do
    @top_title = top_titles(:one)
  end

  test "visiting the index" do
    visit top_titles_url
    assert_selector "h1", text: "Top Titles"
  end

  test "creating a Top title" do
    visit top_titles_url
    click_on "New Top Title"

    click_on "Create Top title"

    assert_text "Top title was successfully created"
    click_on "Back"
  end

  test "updating a Top title" do
    visit top_titles_url
    click_on "Edit", match: :first

    click_on "Update Top title"

    assert_text "Top title was successfully updated"
    click_on "Back"
  end

  test "destroying a Top title" do
    visit top_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Top title was successfully destroyed"
  end
end
