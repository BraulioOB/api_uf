require "test_helper"

class InflationAdjustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inflation_adjust = inflation_adjusts(:one)
  end

  test "should get index" do
    get inflation_adjusts_url, as: :json
    assert_response :success
  end

  test "should create inflation_adjust" do
    assert_difference('InflationAdjust.count') do
      post inflation_adjusts_url, params: { inflation_adjust: { day: @inflation_adjust.day, price: @inflation_adjust.price } }, as: :json
    end

    assert_response 201
  end

  test "should show inflation_adjust" do
    get inflation_adjust_url(@inflation_adjust), as: :json
    assert_response :success
  end

  test "should update inflation_adjust" do
    patch inflation_adjust_url(@inflation_adjust), params: { inflation_adjust: { day: @inflation_adjust.day, price: @inflation_adjust.price } }, as: :json
    assert_response 200
  end

  test "should destroy inflation_adjust" do
    assert_difference('InflationAdjust.count', -1) do
      delete inflation_adjust_url(@inflation_adjust), as: :json
    end

    assert_response 204
  end
end
