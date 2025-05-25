require "test_helper"

class StockingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stocking = stockings(:one)
  end

  test "should get index" do
    get stockings_url
    assert_response :success
  end

  test "should get new" do
    get new_stocking_url
    assert_response :success
  end

  test "should create stocking" do
    assert_difference("Stocking.count") do
      post stockings_url, params: { stocking: { material: @stocking.material, quantity: @stocking.quantity, treshould_to_request_restock: @stocking.treshould_to_request_restock, unit: @stocking.unit } }
    end

    assert_redirected_to stocking_url(Stocking.last)
  end

  test "should show stocking" do
    get stocking_url(@stocking)
    assert_response :success
  end

  test "should get edit" do
    get edit_stocking_url(@stocking)
    assert_response :success
  end

  test "should update stocking" do
    patch stocking_url(@stocking), params: { stocking: { material: @stocking.material, quantity: @stocking.quantity, treshould_to_request_restock: @stocking.treshould_to_request_restock, unit: @stocking.unit } }
    assert_redirected_to stocking_url(@stocking)
  end

  test "should destroy stocking" do
    assert_difference("Stocking.count", -1) do
      delete stocking_url(@stocking)
    end

    assert_redirected_to stockings_url
  end
end
