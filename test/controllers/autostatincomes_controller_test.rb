require 'test_helper'

class AutostatincomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autostatincomes_index_url
    assert_response :success
  end

end
