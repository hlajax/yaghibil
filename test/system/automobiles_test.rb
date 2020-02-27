require "application_system_test_case"

class AutomobilesTest < ApplicationSystemTestCase
  setup do
    @automobile = automobiles(:one)
  end

  test "visiting the index" do
    visit automobiles_url
    assert_selector "h1", text: "Automobiles"
  end

  test "creating a Automobile" do
    visit automobiles_url
    click_on "New Automobile"

    fill_in "Administrateur", with: @automobile.administrateur_id
    fill_in "Couleur", with: @automobile.couleur
    fill_in "Marque", with: @automobile.marque
    fill_in "Matricule", with: @automobile.matricule
    fill_in "Modele", with: @automobile.modele
    fill_in "Prix", with: @automobile.prix
    click_on "Create Automobile"

    assert_text "Automobile was successfully created"
    click_on "Back"
  end

  test "updating a Automobile" do
    visit automobiles_url
    click_on "Edit", match: :first

    fill_in "Administrateur", with: @automobile.administrateur_id
    fill_in "Couleur", with: @automobile.couleur
    fill_in "Marque", with: @automobile.marque
    fill_in "Matricule", with: @automobile.matricule
    fill_in "Modele", with: @automobile.modele
    fill_in "Prix", with: @automobile.prix
    click_on "Update Automobile"

    assert_text "Automobile was successfully updated"
    click_on "Back"
  end

  test "destroying a Automobile" do
    visit automobiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Automobile was successfully destroyed"
  end
end
