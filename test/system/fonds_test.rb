require "application_system_test_case"

class FondsTest < ApplicationSystemTestCase
  setup do
    @fond = fonds(:one)
  end

  test "visiting the index" do
    visit fonds_url
    assert_selector "h1", text: "Fonds"
  end

  test "creating a Fond" do
    visit fonds_url
    click_on "New Fond"

    fill_in "Montant", with: @fond.montant
    fill_in "Titre", with: @fond.titre
    click_on "Create Fond"

    assert_text "Fond was successfully created"
    click_on "Back"
  end

  test "updating a Fond" do
    visit fonds_url
    click_on "Edit", match: :first

    fill_in "Montant", with: @fond.montant
    fill_in "Titre", with: @fond.titre
    click_on "Update Fond"

    assert_text "Fond was successfully updated"
    click_on "Back"
  end

  test "destroying a Fond" do
    visit fonds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fond was successfully destroyed"
  end
end
