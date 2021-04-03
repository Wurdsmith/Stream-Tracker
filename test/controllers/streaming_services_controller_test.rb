require "test_helper"

class StreamingServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @streaming_service = streaming_services(:one)
  end

  test "should get index" do
    get streaming_services_url
    assert_response :success
  end

  test "should get new" do
    get new_streaming_service_url
    assert_response :success
  end

  test "should create streaming_service" do
    assert_difference('StreamingService.count') do
      post streaming_services_url, params: { streaming_service: {  } }
    end

    assert_redirected_to streaming_service_url(StreamingService.last)
  end

  test "should show streaming_service" do
    get streaming_service_url(@streaming_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_streaming_service_url(@streaming_service)
    assert_response :success
  end

  test "should update streaming_service" do
    patch streaming_service_url(@streaming_service), params: { streaming_service: {  } }
    assert_redirected_to streaming_service_url(@streaming_service)
  end

  test "should destroy streaming_service" do
    assert_difference('StreamingService.count', -1) do
      delete streaming_service_url(@streaming_service)
    end

    assert_redirected_to streaming_services_url
  end
end
