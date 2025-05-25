require "application_system_test_case"

class DailyReportEquipmentUsagesTest < ApplicationSystemTestCase
  setup do
    @daily_report_equipment_usage = daily_report_equipment_usages(:one)
  end

  test "visiting the index" do
    visit daily_report_equipment_usages_url
    assert_selector "h1", text: "Daily report equipment usages"
  end

  test "should create daily report equipment usage" do
    visit daily_report_equipment_usages_url
    click_on "New daily report equipment usage"

    fill_in "Daily report", with: @daily_report_equipment_usage.daily_report_id
    fill_in "Equipment", with: @daily_report_equipment_usage.equipment
    fill_in "Responsible", with: @daily_report_equipment_usage.responsible_id
    fill_in "Usage time", with: @daily_report_equipment_usage.usage_time
    click_on "Create Daily report equipment usage"

    assert_text "Daily report equipment usage was successfully created"
    click_on "Back"
  end

  test "should update Daily report equipment usage" do
    visit daily_report_equipment_usage_url(@daily_report_equipment_usage)
    click_on "Edit this daily report equipment usage", match: :first

    fill_in "Daily report", with: @daily_report_equipment_usage.daily_report_id
    fill_in "Equipment", with: @daily_report_equipment_usage.equipment
    fill_in "Responsible", with: @daily_report_equipment_usage.responsible_id
    fill_in "Usage time", with: @daily_report_equipment_usage.usage_time
    click_on "Update Daily report equipment usage"

    assert_text "Daily report equipment usage was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily report equipment usage" do
    visit daily_report_equipment_usage_url(@daily_report_equipment_usage)
    click_on "Destroy this daily report equipment usage", match: :first

    assert_text "Daily report equipment usage was successfully destroyed"
  end
end
