require "application_system_test_case"

class StreamingServicesTest < ApplicationSystemTestCase
  setup do
    @streaming_service = streaming_services(:one)
  end

  test "visiting the index" do
    visit streaming_services_url
    assert_selector "h1", text: "Streaming Services"
  end

  test "creating a Streaming service" do
    visit streaming_services_url
    click_on "New Streaming Service"

    click_on "Create Streaming service"

    assert_text "Streaming service was successfully created"
    click_on "Back"
  end

  test "updating a Streaming service" do
    visit streaming_services_url
    click_on "Edit", match: :first

    click_on "Update Streaming service"

    assert_text "Streaming service was successfully updated"
    click_on "Back"
  end

  test "destroying a Streaming service" do
    visit streaming_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Streaming service was successfully destroyed"
  end
end
