require "application_system_test_case"

class PlacesTest < ApplicationSystemTestCase
  setup do
    @place = places(:one)
  end

  test "visiting the index" do
    visit places_url
    assert_selector "h1", text: "Places"
  end

  test "creating a Place" do
    visit places_url
    click_on "New Place"

    fill_in "Place Address", with: @place.place_address
    fill_in "Place City", with: @place.place_city
    fill_in "Place Commune", with: @place.place_commune
    fill_in "Place Contact Cellphone", with: @place.place_contact_cellphone
    fill_in "Place Contact Email", with: @place.place_contact_email
    fill_in "Place Contact Name", with: @place.place_contact_name
    fill_in "Place Name", with: @place.place_name
    click_on "Create Place"

    assert_text "Place was successfully created"
    click_on "Back"
  end

  test "updating a Place" do
    visit places_url
    click_on "Edit", match: :first

    fill_in "Place Address", with: @place.place_address
    fill_in "Place City", with: @place.place_city
    fill_in "Place Commune", with: @place.place_commune
    fill_in "Place Contact Cellphone", with: @place.place_contact_cellphone
    fill_in "Place Contact Email", with: @place.place_contact_email
    fill_in "Place Contact Name", with: @place.place_contact_name
    fill_in "Place Name", with: @place.place_name
    click_on "Update Place"

    assert_text "Place was successfully updated"
    click_on "Back"
  end

  test "destroying a Place" do
    visit places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Place was successfully destroyed"
  end
end
