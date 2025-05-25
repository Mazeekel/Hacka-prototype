require "application_system_test_case"

class DailyReportServicesTest < ApplicationSystemTestCase
  setup do
    @daily_report_service = daily_report_services(:one)
  end

  test "visiting the index" do
    visit daily_report_services_url
    assert_selector "h1", text: "Daily report services"
  end

  test "should create daily report service" do
    visit daily_report_services_url
    click_on "New daily report service"

    fill_in "Area", with: @daily_report_service.area
    fill_in "Daily report", with: @daily_report_service.daily_report_id
    fill_in "Service description", with: @daily_report_service.service_description
    fill_in "Unit", with: @daily_report_service.unit
    click_on "Create Daily report service"

    assert_text "Daily report service was successfully created"
    click_on "Back"
  end

  test "should update Daily report service" do
    visit daily_report_service_url(@daily_report_service)
    click_on "Edit this daily report service", match: :first

    fill_in "Area", with: @daily_report_service.area
    fill_in "Daily report", with: @daily_report_service.daily_report_id
    fill_in "Service description", with: @daily_report_service.service_description
    fill_in "Unit", with: @daily_report_service.unit
    click_on "Update Daily report service"

    assert_text "Daily report service was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily report service" do
    visit daily_report_service_url(@daily_report_service)
    click_on "Destroy this daily report service", match: :first

    assert_text "Daily report service was successfully destroyed"
  end
end
