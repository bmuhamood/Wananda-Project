require "application_system_test_case"

class PlacesTest < ApplicationSystemTestCase
  setup do
    @place = places(:one)
  end

  test "visiting the index" do
    visit places_url
    assert_selector "h1", text: "Places"
  end

  test "should create place" do
    visit places_url
    click_on "New place"

    fill_in "Closing time", with: @place.closing_time
    fill_in "Expiration date", with: @place.expiration_date
    fill_in "Images", with: @place.images
    fill_in "Landmark", with: @place.landmark
    fill_in "Main image", with: @place.main_image
    fill_in "Mobile", with: @place.mobile
    fill_in "Offer code", with: @place.offer_code
    fill_in "Offer instructions", with: @place.offer_instructions
    fill_in "Opening time", with: @place.opening_time
    fill_in "Shop number", with: @place.shop_number
    fill_in "Street", with: @place.street
    fill_in "Title", with: @place.title
    click_on "Create Place"

    assert_text "Place was successfully created"
    click_on "Back"
  end

  test "should update Place" do
    visit place_url(@place)
    click_on "Edit this place", match: :first

    fill_in "Closing time", with: @place.closing_time
    fill_in "Expiration date", with: @place.expiration_date
    fill_in "Images", with: @place.images
    fill_in "Landmark", with: @place.landmark
    fill_in "Main image", with: @place.main_image
    fill_in "Mobile", with: @place.mobile
    fill_in "Offer code", with: @place.offer_code
    fill_in "Offer instructions", with: @place.offer_instructions
    fill_in "Opening time", with: @place.opening_time
    fill_in "Shop number", with: @place.shop_number
    fill_in "Street", with: @place.street
    fill_in "Title", with: @place.title
    click_on "Update Place"

    assert_text "Place was successfully updated"
    click_on "Back"
  end

  test "should destroy Place" do
    visit place_url(@place)
    click_on "Destroy this place", match: :first

    assert_text "Place was successfully destroyed"
  end
end
