require "application_system_test_case"

class DailyReportResourceAllocationsTest < ApplicationSystemTestCase
  setup do
    @daily_report_resource_allocation = daily_report_resource_allocations(:one)
  end

  test "visiting the index" do
    visit daily_report_resource_allocations_url
    assert_selector "h1", text: "Daily report resource allocations"
  end

  test "should create daily report resource allocation" do
    visit daily_report_resource_allocations_url
    click_on "New daily report resource allocation"

    fill_in "Daily report", with: @daily_report_resource_allocation.daily_report_id
    fill_in "Quantity", with: @daily_report_resource_allocation.quantity
    fill_in "Stocking", with: @daily_report_resource_allocation.stocking_id
    fill_in "Unit", with: @daily_report_resource_allocation.unit
    click_on "Create Daily report resource allocation"

    assert_text "Daily report resource allocation was successfully created"
    click_on "Back"
  end

  test "should update Daily report resource allocation" do
    visit daily_report_resource_allocation_url(@daily_report_resource_allocation)
    click_on "Edit this daily report resource allocation", match: :first

    fill_in "Daily report", with: @daily_report_resource_allocation.daily_report_id
    fill_in "Quantity", with: @daily_report_resource_allocation.quantity
    fill_in "Stocking", with: @daily_report_resource_allocation.stocking_id
    fill_in "Unit", with: @daily_report_resource_allocation.unit
    click_on "Update Daily report resource allocation"

    assert_text "Daily report resource allocation was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily report resource allocation" do
    visit daily_report_resource_allocation_url(@daily_report_resource_allocation)
    click_on "Destroy this daily report resource allocation", match: :first

    assert_text "Daily report resource allocation was successfully destroyed"
  end
end
