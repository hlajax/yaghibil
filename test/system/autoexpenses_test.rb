require "application_system_test_case"

class AutoexpensesTest < ApplicationSystemTestCase
  setup do
    @autoexpense = autoexpenses(:one)
  end

  test "visiting the index" do
    visit autoexpenses_url
    assert_selector "h1", text: "Autoexpenses"
  end

  test "creating a Autoexpense" do
    visit autoexpenses_url
    click_on "New Autoexpense"

    fill_in "Billed at", with: @autoexpense.billed_at
    fill_in "Description", with: @autoexpense.description
    fill_in "Designation", with: @autoexpense.designation
    fill_in "Price", with: @autoexpense.price
    fill_in "Travaux", with: @autoexpense.travaux
    click_on "Create Autoexpense"

    assert_text "Autoexpense was successfully created"
    click_on "Back"
  end

  test "updating a Autoexpense" do
    visit autoexpenses_url
    click_on "Edit", match: :first

    fill_in "Billed at", with: @autoexpense.billed_at
    fill_in "Description", with: @autoexpense.description
    fill_in "Designation", with: @autoexpense.designation
    fill_in "Price", with: @autoexpense.price
    fill_in "Travaux", with: @autoexpense.travaux
    click_on "Update Autoexpense"

    assert_text "Autoexpense was successfully updated"
    click_on "Back"
  end

  test "destroying a Autoexpense" do
    visit autoexpenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autoexpense was successfully destroyed"
  end
end
