require "test_helper"

class ClientControllerTest < ActionDispatch::IntegrationTest
  test "should get file" do
    get client_file_url
    assert_response :success
  end
end
