require 'test_helper'

class DashboardUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_user_index_url
    assert_response :success
  end

end
