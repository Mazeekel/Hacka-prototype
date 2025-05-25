require "test_helper"

class SurveyMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_medium = survey_media(:one)
  end

  test "should get index" do
    get survey_media_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_medium_url
    assert_response :success
  end

  test "should create survey_medium" do
    assert_difference("SurveyMedium.count") do
      post survey_media_url, params: { survey_medium: { media_id: @survey_medium.media_id, survey_id: @survey_medium.survey_id } }
    end

    assert_redirected_to survey_medium_url(SurveyMedium.last)
  end

  test "should show survey_medium" do
    get survey_medium_url(@survey_medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_medium_url(@survey_medium)
    assert_response :success
  end

  test "should update survey_medium" do
    patch survey_medium_url(@survey_medium), params: { survey_medium: { media_id: @survey_medium.media_id, survey_id: @survey_medium.survey_id } }
    assert_redirected_to survey_medium_url(@survey_medium)
  end

  test "should destroy survey_medium" do
    assert_difference("SurveyMedium.count", -1) do
      delete survey_medium_url(@survey_medium)
    end

    assert_redirected_to survey_media_url
  end
end
