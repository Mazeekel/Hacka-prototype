require "test_helper"

class DailyReportEquipmentUsagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_report_equipment_usage = daily_report_equipment_usages(:one)
  end

  test "should get index" do
    get daily_report_equipment_usages_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_report_equipment_usage_url
    assert_response :success
  end

  test "should create daily_report_equipment_usage" do
    assert_difference("DailyReportEquipmentUsage.count") do
      post daily_report_equipment_usages_url, params: { daily_report_equipment_usage: { daily_report_id: @daily_report_equipment_usage.daily_report_id, equipment: @daily_report_equipment_usage.equipment, responsible_id: @daily_report_equipment_usage.responsible_id, usage_time: @daily_report_equipment_usage.usage_time } }
    end

    assert_redirected_to daily_report_equipment_usage_url(DailyReportEquipmentUsage.last)
  end

  test "should show daily_report_equipment_usage" do
    get daily_report_equipment_usage_url(@daily_report_equipment_usage)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_report_equipment_usage_url(@daily_report_equipment_usage)
    assert_response :success
  end

  test "should update daily_report_equipment_usage" do
    patch daily_report_equipment_usage_url(@daily_report_equipment_usage), params: { daily_report_equipment_usage: { daily_report_id: @daily_report_equipment_usage.daily_report_id, equipment: @daily_report_equipment_usage.equipment, responsible_id: @daily_report_equipment_usage.responsible_id, usage_time: @daily_report_equipment_usage.usage_time } }
    assert_redirected_to daily_report_equipment_usage_url(@daily_report_equipment_usage)
  end

  test "should destroy daily_report_equipment_usage" do
    assert_difference("DailyReportEquipmentUsage.count", -1) do
      delete daily_report_equipment_usage_url(@daily_report_equipment_usage)
    end

    assert_redirected_to daily_report_equipment_usages_url
  end
end
