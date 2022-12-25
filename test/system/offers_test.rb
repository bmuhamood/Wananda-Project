require "application_system_test_case"

class OffersTest < ApplicationSystemTestCase
  setup do
    @offer = offers(:one)
  end

  test "visiting the index" do
    visit offers_url
    assert_selector "h1", text: "Offers"
  end

  test "should create offer" do
    visit offers_url
    click_on "New offer"

    fill_in "Address", with: @offer.address
    fill_in "Closing time", with: @offer.closing_time
    fill_in "Expiration date", with: @offer.expiration_date
    fill_in "Images", with: @offer.images
    fill_in "Main image", with: @offer.main_image
    fill_in "Mobile", with: @offer.mobile
    fill_in "Offer code", with: @offer.offer_code
    fill_in "Offer instructions", with: @offer.offer_instructions
    fill_in "Opening time", with: @offer.opening_time
    fill_in "Title", with: @offer.title
    click_on "Create Offer"

    assert_text "Offer was successfully created"
    click_on "Back"
  end

  test "should update Offer" do
    visit offer_url(@offer)
    click_on "Edit this offer", match: :first

    fill_in "Address", with: @offer.address
    fill_in "Closing time", with: @offer.closing_time
    fill_in "Expiration date", with: @offer.expiration_date
    fill_in "Images", with: @offer.images
    fill_in "Main image", with: @offer.main_image
    fill_in "Mobile", with: @offer.mobile
    fill_in "Offer code", with: @offer.offer_code
    fill_in "Offer instructions", with: @offer.offer_instructions
    fill_in "Opening time", with: @offer.opening_time
    fill_in "Title", with: @offer.title
    click_on "Update Offer"

    assert_text "Offer was successfully updated"
    click_on "Back"
  end

  test "should destroy Offer" do
    visit offer_url(@offer)
    click_on "Destroy this offer", match: :first

    assert_text "Offer was successfully destroyed"
  end
end
