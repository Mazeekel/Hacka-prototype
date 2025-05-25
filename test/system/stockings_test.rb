require "application_system_test_case"

class StockingsTest < ApplicationSystemTestCase
  setup do
    @stocking = stockings(:one)
  end

  test "visiting the index" do
    visit stockings_url
    assert_selector "h1", text: "Stockings"
  end

  test "should create stocking" do
    visit stockings_url
    click_on "New stocking"

    fill_in "Material", with: @stocking.material
    fill_in "Quantity", with: @stocking.quantity
    fill_in "Treshould to request restock", with: @stocking.treshould_to_request_restock
    fill_in "Unit", with: @stocking.unit
    click_on "Create Stocking"

    assert_text "Stocking was successfully created"
    click_on "Back"
  end

  test "should update Stocking" do
    visit stocking_url(@stocking)
    click_on "Edit this stocking", match: :first

    fill_in "Material", with: @stocking.material
    fill_in "Quantity", with: @stocking.quantity
    fill_in "Treshould to request restock", with: @stocking.treshould_to_request_restock
    fill_in "Unit", with: @stocking.unit
    click_on "Update Stocking"

    assert_text "Stocking was successfully updated"
    click_on "Back"
  end

  test "should destroy Stocking" do
    visit stocking_url(@stocking)
    click_on "Destroy this stocking", match: :first

    assert_text "Stocking was successfully destroyed"
  end
end
