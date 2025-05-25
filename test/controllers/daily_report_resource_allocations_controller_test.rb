require "test_helper"

class DailyReportResourceAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_report_resource_allocation = daily_report_resource_allocations(:one)
  end

  test "should get index" do
    get daily_report_resource_allocations_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_report_resource_allocation_url
    assert_response :success
  end

  test "should create daily_report_resource_allocation" do
    assert_difference("DailyReportResourceAllocation.count") do
      post daily_report_resource_allocations_url, params: { daily_report_resource_allocation: { daily_report_id: @daily_report_resource_allocation.daily_report_id, quantity: @daily_report_resource_allocation.quantity, stocking_id: @daily_report_resource_allocation.stocking_id, unit: @daily_report_resource_allocation.unit } }
    end

    assert_redirected_to daily_report_resource_allocation_url(DailyReportResourceAllocation.last)
  end

  test "should show daily_report_resource_allocation" do
    get daily_report_resource_allocation_url(@daily_report_resource_allocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_report_resource_allocation_url(@daily_report_resource_allocation)
    assert_response :success
  end

  test "should update daily_report_resource_allocation" do
    patch daily_report_resource_allocation_url(@daily_report_resource_allocation), params: { daily_report_resource_allocation: { daily_report_id: @daily_report_resource_allocation.daily_report_id, quantity: @daily_report_resource_allocation.quantity, stocking_id: @daily_report_resource_allocation.stocking_id, unit: @daily_report_resource_allocation.unit } }
    assert_redirected_to daily_report_resource_allocation_url(@daily_report_resource_allocation)
  end

  test "should destroy daily_report_resource_allocation" do
    assert_difference("DailyReportResourceAllocation.count", -1) do
      delete daily_report_resource_allocation_url(@daily_report_resource_allocation)
    end

    assert_redirected_to daily_report_resource_allocations_url
  end
end
