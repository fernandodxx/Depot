require "test_helper"

class SupportRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get support_requests_index_url
    assert_response :success
  end
end
