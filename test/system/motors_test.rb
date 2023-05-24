require "application_system_test_case"

class MotorsTest < ApplicationSystemTestCase
  setup do
    @motor = motors(:one)
  end

  test "visiting the index" do
    visit motors_url
    assert_selector "h1", text: "Motors"
  end

  test "should create motor" do
    visit motors_url
    click_on "New motor"

    fill_in "Content", with: @motor.content
    fill_in "Title", with: @motor.title
    click_on "Create Motor"

    assert_text "Motor was successfully created"
    click_on "Back"
  end

  test "should update Motor" do
    visit motor_url(@motor)
    click_on "Edit this motor", match: :first

    fill_in "Content", with: @motor.content
    fill_in "Title", with: @motor.title
    click_on "Update Motor"

    assert_text "Motor was successfully updated"
    click_on "Back"
  end

  test "should destroy Motor" do
    visit motor_url(@motor)
    click_on "Destroy this motor", match: :first

    assert_text "Motor was successfully destroyed"
  end
end
