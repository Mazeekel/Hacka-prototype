require "application_system_test_case"

class ServiceOrdersTest < ApplicationSystemTestCase
  setup do
    @service_order = service_orders(:one)
  end

  test "visiting the index" do
    visit service_orders_url
    assert_selector "h1", text: "Service orders"
  end

  test "should create service order" do
    visit service_orders_url
    click_on "New service order"

    fill_in "Attendimment feedback", with: @service_order.attendimment_feedback
    fill_in "Finished at", with: @service_order.finished_at
    fill_in "Requirement", with: @service_order.requirement_id
    fill_in "Service cost", with: @service_order.service_cost
    fill_in "Status", with: @service_order.status
    fill_in "Type of service", with: @service_order.type_of_service
    click_on "Create Service order"

    assert_text "Service order was successfully created"
    click_on "Back"
  end

  test "should update Service order" do
    visit service_order_url(@service_order)
    click_on "Edit this service order", match: :first

    fill_in "Attendimment feedback", with: @service_order.attendimment_feedback
    fill_in "Finished at", with: @service_order.finished_at
    fill_in "Requirement", with: @service_order.requirement_id
    fill_in "Service cost", with: @service_order.service_cost
    fill_in "Status", with: @service_order.status
    fill_in "Type of service", with: @service_order.type_of_service
    click_on "Update Service order"

    assert_text "Service order was successfully updated"
    click_on "Back"
  end

  test "should destroy Service order" do
    visit service_order_url(@service_order)
    click_on "Destroy this service order", match: :first

    assert_text "Service order was successfully destroyed"
  end
end
