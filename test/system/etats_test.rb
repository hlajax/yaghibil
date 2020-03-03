require "application_system_test_case"

class EtatsTest < ApplicationSystemTestCase
  setup do
    @etat = etats(:one)
  end

  test "visiting the index" do
    visit etats_url
    assert_selector "h1", text: "Etats"
  end

  test "creating a Etat" do
    visit etats_url
    click_on "New Etat"

    fill_in "Titre", with: @etat.titre
    click_on "Create Etat"

    assert_text "Etat was successfully created"
    click_on "Back"
  end

  test "updating a Etat" do
    visit etats_url
    click_on "Edit", match: :first

    fill_in "Titre", with: @etat.titre
    click_on "Update Etat"

    assert_text "Etat was successfully updated"
    click_on "Back"
  end

  test "destroying a Etat" do
    visit etats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Etat was successfully destroyed"
  end
end
