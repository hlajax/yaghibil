require 'test_helper'

class AutoexpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autoexpense = autoexpenses(:one)
  end

  test "should get index" do
    get autoexpenses_url
    assert_response :success
  end

  test "should get new" do
    get new_autoexpense_url
    assert_response :success
  end

  test "should create autoexpense" do
    assert_difference('Autoexpense.count') do
      post autoexpenses_url, params: { autoexpense: { billed_at: @autoexpense.billed_at, description: @autoexpense.description, designation: @autoexpense.designation, price: @autoexpense.price, travaux: @autoexpense.travaux } }
    end

    assert_redirected_to autoexpense_url(Autoexpense.last)
  end

  test "should show autoexpense" do
    get autoexpense_url(@autoexpense)
    assert_response :success
  end

  test "should get edit" do
    get edit_autoexpense_url(@autoexpense)
    assert_response :success
  end

  test "should update autoexpense" do
    patch autoexpense_url(@autoexpense), params: { autoexpense: { billed_at: @autoexpense.billed_at, description: @autoexpense.description, designation: @autoexpense.designation, price: @autoexpense.price, travaux: @autoexpense.travaux } }
    assert_redirected_to autoexpense_url(@autoexpense)
  end

  test "should destroy autoexpense" do
    assert_difference('Autoexpense.count', -1) do
      delete autoexpense_url(@autoexpense)
    end

    assert_redirected_to autoexpenses_url
  end
end
