require "test_helper"

class DailyServiceConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_service_condition = daily_service_conditions(:one)
  end

  test "should get index" do
    get daily_service_conditions_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_service_condition_url
    assert_response :success
  end

  test "should create daily_service_condition" do
    assert_difference("DailyServiceCondition.count") do
      post daily_service_conditions_url, params: { daily_service_condition: { condition: @daily_service_condition.condition, daily_report_id: @daily_service_condition.daily_report_id } }
    end

    assert_redirected_to daily_service_condition_url(DailyServiceCondition.last)
  end

  test "should show daily_service_condition" do
    get daily_service_condition_url(@daily_service_condition)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_service_condition_url(@daily_service_condition)
    assert_response :success
  end

  test "should update daily_service_condition" do
    patch daily_service_condition_url(@daily_service_condition), params: { daily_service_condition: { condition: @daily_service_condition.condition, daily_report_id: @daily_service_condition.daily_report_id } }
    assert_redirected_to daily_service_condition_url(@daily_service_condition)
  end

  test "should destroy daily_service_condition" do
    assert_difference("DailyServiceCondition.count", -1) do
      delete daily_service_condition_url(@daily_service_condition)
    end

    assert_redirected_to daily_service_conditions_url
  end
end
