require "test_helper"

class DailyReportServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_report_service = daily_report_services(:one)
  end

  test "should get index" do
    get daily_report_services_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_report_service_url
    assert_response :success
  end

  test "should create daily_report_service" do
    assert_difference("DailyReportService.count") do
      post daily_report_services_url, params: { daily_report_service: { area: @daily_report_service.area, daily_report_id: @daily_report_service.daily_report_id, service_description: @daily_report_service.service_description, unit: @daily_report_service.unit } }
    end

    assert_redirected_to daily_report_service_url(DailyReportService.last)
  end

  test "should show daily_report_service" do
    get daily_report_service_url(@daily_report_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_report_service_url(@daily_report_service)
    assert_response :success
  end

  test "should update daily_report_service" do
    patch daily_report_service_url(@daily_report_service), params: { daily_report_service: { area: @daily_report_service.area, daily_report_id: @daily_report_service.daily_report_id, service_description: @daily_report_service.service_description, unit: @daily_report_service.unit } }
    assert_redirected_to daily_report_service_url(@daily_report_service)
  end

  test "should destroy daily_report_service" do
    assert_difference("DailyReportService.count", -1) do
      delete daily_report_service_url(@daily_report_service)
    end

    assert_redirected_to daily_report_services_url
  end
end
