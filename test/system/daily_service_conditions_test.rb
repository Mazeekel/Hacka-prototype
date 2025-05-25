require "application_system_test_case"

class DailyServiceConditionsTest < ApplicationSystemTestCase
  setup do
    @daily_service_condition = daily_service_conditions(:one)
  end

  test "visiting the index" do
    visit daily_service_conditions_url
    assert_selector "h1", text: "Daily service conditions"
  end

  test "should create daily service condition" do
    visit daily_service_conditions_url
    click_on "New daily service condition"

    fill_in "Condition", with: @daily_service_condition.condition
    fill_in "Daily report", with: @daily_service_condition.daily_report_id
    click_on "Create Daily service condition"

    assert_text "Daily service condition was successfully created"
    click_on "Back"
  end

  test "should update Daily service condition" do
    visit daily_service_condition_url(@daily_service_condition)
    click_on "Edit this daily service condition", match: :first

    fill_in "Condition", with: @daily_service_condition.condition
    fill_in "Daily report", with: @daily_service_condition.daily_report_id
    click_on "Update Daily service condition"

    assert_text "Daily service condition was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily service condition" do
    visit daily_service_condition_url(@daily_service_condition)
    click_on "Destroy this daily service condition", match: :first

    assert_text "Daily service condition was successfully destroyed"
  end
end
