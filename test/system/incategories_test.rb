require "application_system_test_case"

class IncategoriesTest < ApplicationSystemTestCase
  setup do
    @incategory = incategories(:one)
  end

  test "visiting the index" do
    visit incategories_url
    assert_selector "h1", text: "Incategories"
  end

  test "creating a Incategory" do
    visit incategories_url
    click_on "New Incategory"

    fill_in "Description", with: @incategory.description
    fill_in "Titre", with: @incategory.titre
    click_on "Create Incategory"

    assert_text "Incategory was successfully created"
    click_on "Back"
  end

  test "updating a Incategory" do
    visit incategories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @incategory.description
    fill_in "Titre", with: @incategory.titre
    click_on "Update Incategory"

    assert_text "Incategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Incategory" do
    visit incategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incategory was successfully destroyed"
  end
end
