require 'test_helper'

class AutoincomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autoincome = autoincomes(:one)
  end

  test "should get index" do
    get autoincomes_url
    assert_response :success
  end

  test "should get new" do
    get new_autoincome_url
    assert_response :success
  end

  test "should create autoincome" do
    assert_difference('Autoincome.count') do
      post autoincomes_url, params: { autoincome: { billed_at: @autoincome.billed_at, description: @autoincome.description, designation: @autoincome.designation, price: @autoincome.price, travaux: @autoincome.travaux } }
    end

    assert_redirected_to autoincome_url(Autoincome.last)
  end

  test "should show autoincome" do
    get autoincome_url(@autoincome)
    assert_response :success
  end

  test "should get edit" do
    get edit_autoincome_url(@autoincome)
    assert_response :success
  end

  test "should update autoincome" do
    patch autoincome_url(@autoincome), params: { autoincome: { billed_at: @autoincome.billed_at, description: @autoincome.description, designation: @autoincome.designation, price: @autoincome.price, travaux: @autoincome.travaux } }
    assert_redirected_to autoincome_url(@autoincome)
  end

  test "should destroy autoincome" do
    assert_difference('Autoincome.count', -1) do
      delete autoincome_url(@autoincome)
    end

    assert_redirected_to autoincomes_url
  end
end
