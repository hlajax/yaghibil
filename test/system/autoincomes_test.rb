require "application_system_test_case"

class AutoincomesTest < ApplicationSystemTestCase
  setup do
    @autoincome = autoincomes(:one)
  end

  test "visiting the index" do
    visit autoincomes_url
    assert_selector "h1", text: "Autoincomes"
  end

  test "creating a Autoincome" do
    visit autoincomes_url
    click_on "New Autoincome"

    fill_in "Billed at", with: @autoincome.billed_at
    fill_in "Description", with: @autoincome.description
    fill_in "Designation", with: @autoincome.designation
    fill_in "Price", with: @autoincome.price
    fill_in "Travaux", with: @autoincome.travaux
    click_on "Create Autoincome"

    assert_text "Autoincome was successfully created"
    click_on "Back"
  end

  test "updating a Autoincome" do
    visit autoincomes_url
    click_on "Edit", match: :first

    fill_in "Billed at", with: @autoincome.billed_at
    fill_in "Description", with: @autoincome.description
    fill_in "Designation", with: @autoincome.designation
    fill_in "Price", with: @autoincome.price
    fill_in "Travaux", with: @autoincome.travaux
    click_on "Update Autoincome"

    assert_text "Autoincome was successfully updated"
    click_on "Back"
  end

  test "destroying a Autoincome" do
    visit autoincomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autoincome was successfully destroyed"
  end
end
