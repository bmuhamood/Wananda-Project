require "application_system_test_case"

class CoupansTest < ApplicationSystemTestCase
  setup do
    @coupan = coupans(:one)
  end

  test "visiting the index" do
    visit coupans_url
    assert_selector "h1", text: "Coupans"
  end

  test "should create coupan" do
    visit coupans_url
    click_on "New coupan"

    click_on "Create Coupan"

    assert_text "Coupan was successfully created"
    click_on "Back"
  end

  test "should update Coupan" do
    visit coupan_url(@coupan)
    click_on "Edit this coupan", match: :first

    click_on "Update Coupan"

    assert_text "Coupan was successfully updated"
    click_on "Back"
  end

  test "should destroy Coupan" do
    visit coupan_url(@coupan)
    click_on "Destroy this coupan", match: :first

    assert_text "Coupan was successfully destroyed"
  end
end
