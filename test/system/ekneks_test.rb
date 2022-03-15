require "application_system_test_case"

class EkneksTest < ApplicationSystemTestCase
  setup do
    @eknek = ekneks(:one)
  end

  test "visiting the index" do
    visit ekneks_url
    assert_selector "h1", text: "Ekneks"
  end

  test "should create eknek" do
    visit ekneks_url
    click_on "New eknek"

    fill_in "Description", with: @eknek.description
    fill_in "Title", with: @eknek.title
    click_on "Create Eknek"

    assert_text "Eknek was successfully created"
    click_on "Back"
  end

  test "should update Eknek" do
    visit eknek_url(@eknek)
    click_on "Edit this eknek", match: :first

    fill_in "Description", with: @eknek.description
    fill_in "Title", with: @eknek.title
    click_on "Update Eknek"

    assert_text "Eknek was successfully updated"
    click_on "Back"
  end

  test "should destroy Eknek" do
    visit eknek_url(@eknek)
    click_on "Destroy this eknek", match: :first

    assert_text "Eknek was successfully destroyed"
  end
end
