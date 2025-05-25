require "application_system_test_case"

class ServiceResponsiblesTest < ApplicationSystemTestCase
  setup do
    @service_responsible = service_responsibles(:one)
  end

  test "visiting the index" do
    visit service_responsibles_url
    assert_selector "h1", text: "Service responsibles"
  end

  test "should create service responsible" do
    visit service_responsibles_url
    click_on "New service responsible"

    fill_in "Authorization", with: @service_responsible.authorization
    fill_in "Daily report", with: @service_responsible.daily_report_id
    fill_in "Responsible function", with: @service_responsible.responsible_function
    fill_in "Responsible", with: @service_responsible.responsible_id
    click_on "Create Service responsible"

    assert_text "Service responsible was successfully created"
    click_on "Back"
  end

  test "should update Service responsible" do
    visit service_responsible_url(@service_responsible)
    click_on "Edit this service responsible", match: :first

    fill_in "Authorization", with: @service_responsible.authorization
    fill_in "Daily report", with: @service_responsible.daily_report_id
    fill_in "Responsible function", with: @service_responsible.responsible_function
    fill_in "Responsible", with: @service_responsible.responsible_id
    click_on "Update Service responsible"

    assert_text "Service responsible was successfully updated"
    click_on "Back"
  end

  test "should destroy Service responsible" do
    visit service_responsible_url(@service_responsible)
    click_on "Destroy this service responsible", match: :first

    assert_text "Service responsible was successfully destroyed"
  end
end
