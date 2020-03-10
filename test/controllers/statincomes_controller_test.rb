require 'test_helper'

class StatincomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statincomes_index_url
    assert_response :success
  end

end
