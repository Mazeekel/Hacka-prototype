require "application_system_test_case"

class DailyReportsTest < ApplicationSystemTestCase
  setup do
    @daily_report = daily_reports(:one)
  end

  test "visiting the index" do
    visit daily_reports_url
    assert_selector "h1", text: "Daily reports"
  end

  test "should create daily report" do
    visit daily_reports_url
    click_on "New daily report"

    fill_in "Climatic condition afternoon", with: @daily_report.climatic_condition_afternoon
    fill_in "Climatic condition morning", with: @daily_report.climatic_condition_morning
    fill_in "Construction responsible", with: @daily_report.construction_responsible_id
    fill_in "Service order", with: @daily_report.service_order_id
    fill_in "Supervisor", with: @daily_report.supervisor_id
    fill_in "Teams arrival time", with: @daily_report.teams_arrival_time
    fill_in "Teams departure time", with: @daily_report.teams_departure_time
    fill_in "Teams exit time", with: @daily_report.teams_exit_time
    fill_in "Teams return time", with: @daily_report.teams_return_time
    click_on "Create Daily report"

    assert_text "Daily report was successfully created"
    click_on "Back"
  end

  test "should update Daily report" do
    visit daily_report_url(@daily_report)
    click_on "Edit this daily report", match: :first

    fill_in "Climatic condition afternoon", with: @daily_report.climatic_condition_afternoon
    fill_in "Climatic condition morning", with: @daily_report.climatic_condition_morning
    fill_in "Construction responsible", with: @daily_report.construction_responsible_id
    fill_in "Service order", with: @daily_report.service_order_id
    fill_in "Supervisor", with: @daily_report.supervisor_id
    fill_in "Teams arrival time", with: @daily_report.teams_arrival_time
    fill_in "Teams departure time", with: @daily_report.teams_departure_time
    fill_in "Teams exit time", with: @daily_report.teams_exit_time
    fill_in "Teams return time", with: @daily_report.teams_return_time
    click_on "Update Daily report"

    assert_text "Daily report was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily report" do
    visit daily_report_url(@daily_report)
    click_on "Destroy this daily report", match: :first

    assert_text "Daily report was successfully destroyed"
  end
end
