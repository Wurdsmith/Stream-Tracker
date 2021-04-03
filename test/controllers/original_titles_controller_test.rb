require "test_helper"

class OriginalTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @original_title = original_titles(:one)
  end

  test "should get index" do
    get original_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_original_title_url
    assert_response :success
  end

  test "should create original_title" do
    assert_difference('OriginalTitle.count') do
      post original_titles_url, params: { original_title: {  } }
    end

    assert_redirected_to original_title_url(OriginalTitle.last)
  end

  test "should show original_title" do
    get original_title_url(@original_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_original_title_url(@original_title)
    assert_response :success
  end

  test "should update original_title" do
    patch original_title_url(@original_title), params: { original_title: {  } }
    assert_redirected_to original_title_url(@original_title)
  end

  test "should destroy original_title" do
    assert_difference('OriginalTitle.count', -1) do
      delete original_title_url(@original_title)
    end

    assert_redirected_to original_titles_url
  end
end
