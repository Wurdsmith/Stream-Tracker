require "test_helper"

class TopTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @top_title = top_titles(:one)
  end

  test "should get index" do
    get top_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_top_title_url
    assert_response :success
  end

  test "should create top_title" do
    assert_difference('TopTitle.count') do
      post top_titles_url, params: { top_title: {  } }
    end

    assert_redirected_to top_title_url(TopTitle.last)
  end

  test "should show top_title" do
    get top_title_url(@top_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_top_title_url(@top_title)
    assert_response :success
  end

  test "should update top_title" do
    patch top_title_url(@top_title), params: { top_title: {  } }
    assert_redirected_to top_title_url(@top_title)
  end

  test "should destroy top_title" do
    assert_difference('TopTitle.count', -1) do
      delete top_title_url(@top_title)
    end

    assert_redirected_to top_titles_url
  end
end
