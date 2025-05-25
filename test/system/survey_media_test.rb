require "application_system_test_case"

class SurveyMediaTest < ApplicationSystemTestCase
  setup do
    @survey_medium = survey_media(:one)
  end

  test "visiting the index" do
    visit survey_media_url
    assert_selector "h1", text: "Survey media"
  end

  test "should create survey medium" do
    visit survey_media_url
    click_on "New survey medium"

    fill_in "Media", with: @survey_medium.media_id
    fill_in "Survey", with: @survey_medium.survey_id
    click_on "Create Survey medium"

    assert_text "Survey medium was successfully created"
    click_on "Back"
  end

  test "should update Survey medium" do
    visit survey_medium_url(@survey_medium)
    click_on "Edit this survey medium", match: :first

    fill_in "Media", with: @survey_medium.media_id
    fill_in "Survey", with: @survey_medium.survey_id
    click_on "Update Survey medium"

    assert_text "Survey medium was successfully updated"
    click_on "Back"
  end

  test "should destroy Survey medium" do
    visit survey_medium_url(@survey_medium)
    click_on "Destroy this survey medium", match: :first

    assert_text "Survey medium was successfully destroyed"
  end
end
