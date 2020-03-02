require "application_system_test_case"

class DepensesTest < ApplicationSystemTestCase
  setup do
    @depense = depenses(:one)
  end

  test "visiting the index" do
    visit depenses_url
    assert_selector "h1", text: "Depenses"
  end

  test "creating a Depense" do
    visit depenses_url
    click_on "New Depense"

    fill_in "Automobile", with: @depense.automobile_id
    fill_in "Billed at", with: @depense.billed_at
    fill_in "Designation", with: @depense.designation
    fill_in "Prix", with: @depense.prix
    fill_in "Travaux", with: @depense.travaux
    click_on "Create Depense"

    assert_text "Depense was successfully created"
    click_on "Back"
  end

  test "updating a Depense" do
    visit depenses_url
    click_on "Edit", match: :first

    fill_in "Automobile", with: @depense.automobile_id
    fill_in "Billed at", with: @depense.billed_at
    fill_in "Designation", with: @depense.designation
    fill_in "Prix", with: @depense.prix
    fill_in "Travaux", with: @depense.travaux
    click_on "Update Depense"

    assert_text "Depense was successfully updated"
    click_on "Back"
  end

  test "destroying a Depense" do
    visit depenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Depense was successfully destroyed"
  end
end
