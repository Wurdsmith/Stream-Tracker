require "application_system_test_case"

class OriginalTitlesTest < ApplicationSystemTestCase
  setup do
    @original_title = original_titles(:one)
  end

  test "visiting the index" do
    visit original_titles_url
    assert_selector "h1", text: "Original Titles"
  end

  test "creating a Original title" do
    visit original_titles_url
    click_on "New Original Title"

    click_on "Create Original title"

    assert_text "Original title was successfully created"
    click_on "Back"
  end

  test "updating a Original title" do
    visit original_titles_url
    click_on "Edit", match: :first

    click_on "Update Original title"

    assert_text "Original title was successfully updated"
    click_on "Back"
  end

  test "destroying a Original title" do
    visit original_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Original title was successfully destroyed"
  end
end
