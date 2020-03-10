require 'test_helper'

class AutostatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autostats_index_url
    assert_response :success
  end

end
