require 'test_helper'

class IncategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incategory = incategories(:one)
  end

  test "should get index" do
    get incategories_url
    assert_response :success
  end

  test "should get new" do
    get new_incategory_url
    assert_response :success
  end

  test "should create incategory" do
    assert_difference('Incategory.count') do
      post incategories_url, params: { incategory: { description: @incategory.description, titre: @incategory.titre } }
    end

    assert_redirected_to incategory_url(Incategory.last)
  end

  test "should show incategory" do
    get incategory_url(@incategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_incategory_url(@incategory)
    assert_response :success
  end

  test "should update incategory" do
    patch incategory_url(@incategory), params: { incategory: { description: @incategory.description, titre: @incategory.titre } }
    assert_redirected_to incategory_url(@incategory)
  end

  test "should destroy incategory" do
    assert_difference('Incategory.count', -1) do
      delete incategory_url(@incategory)
    end

    assert_redirected_to incategories_url
  end
end
