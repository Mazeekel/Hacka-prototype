require "test_helper"

class ServiceResponsiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_responsible = service_responsibles(:one)
  end

  test "should get index" do
    get service_responsibles_url
    assert_response :success
  end

  test "should get new" do
    get new_service_responsible_url
    assert_response :success
  end

  test "should create service_responsible" do
    assert_difference("ServiceResponsible.count") do
      post service_responsibles_url, params: { service_responsible: { authorization: @service_responsible.authorization, daily_report_id: @service_responsible.daily_report_id, responsible_function: @service_responsible.responsible_function, responsible_id: @service_responsible.responsible_id } }
    end

    assert_redirected_to service_responsible_url(ServiceResponsible.last)
  end

  test "should show service_responsible" do
    get service_responsible_url(@service_responsible)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_responsible_url(@service_responsible)
    assert_response :success
  end

  test "should update service_responsible" do
    patch service_responsible_url(@service_responsible), params: { service_responsible: { authorization: @service_responsible.authorization, daily_report_id: @service_responsible.daily_report_id, responsible_function: @service_responsible.responsible_function, responsible_id: @service_responsible.responsible_id } }
    assert_redirected_to service_responsible_url(@service_responsible)
  end

  test "should destroy service_responsible" do
    assert_difference("ServiceResponsible.count", -1) do
      delete service_responsible_url(@service_responsible)
    end

    assert_redirected_to service_responsibles_url
  end
end
