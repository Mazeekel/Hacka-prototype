require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  setup do
    @survey = surveys(:one)
  end

  test "visiting the index" do
    visit surveys_url
    assert_selector "h1", text: "Surveys"
  end

  test "should create survey" do
    visit surveys_url
    click_on "New survey"

    fill_in "Report", with: @survey.report
    fill_in "Service order", with: @survey.service_order_id
    click_on "Create Survey"

    assert_text "Survey was successfully created"
    click_on "Back"
  end

  test "should update Survey" do
    visit survey_url(@survey)
    click_on "Edit this survey", match: :first

    fill_in "Report", with: @survey.report
    fill_in "Service order", with: @survey.service_order_id
    click_on "Update Survey"

    assert_text "Survey was successfully updated"
    click_on "Back"
  end

  test "should destroy Survey" do
    visit survey_url(@survey)
    click_on "Destroy this survey", match: :first

    assert_text "Survey was successfully destroyed"
  end
end
