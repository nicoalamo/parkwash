require "application_system_test_case"

class VehicleSizesTest < ApplicationSystemTestCase
  setup do
    @vehicle_size = vehicle_sizes(:one)
  end

  test "visiting the index" do
    visit vehicle_sizes_url
    assert_selector "h1", text: "Vehicle Sizes"
  end

  test "creating a Vehicle size" do
    visit vehicle_sizes_url
    click_on "New Vehicle Size"

    fill_in "Vehicle Size Code", with: @vehicle_size.vehicle_size_code
    fill_in "Vehicle Size Description", with: @vehicle_size.vehicle_size_description
    fill_in "Vehicle Size Name", with: @vehicle_size.vehicle_size_name
    click_on "Create Vehicle size"

    assert_text "Vehicle size was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle size" do
    visit vehicle_sizes_url
    click_on "Edit", match: :first

    fill_in "Vehicle Size Code", with: @vehicle_size.vehicle_size_code
    fill_in "Vehicle Size Description", with: @vehicle_size.vehicle_size_description
    fill_in "Vehicle Size Name", with: @vehicle_size.vehicle_size_name
    click_on "Update Vehicle size"

    assert_text "Vehicle size was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle size" do
    visit vehicle_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle size was successfully destroyed"
  end
end
