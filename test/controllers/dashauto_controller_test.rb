require 'test_helper'

class DashautoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashauto_index_url
    assert_response :success
  end

end
