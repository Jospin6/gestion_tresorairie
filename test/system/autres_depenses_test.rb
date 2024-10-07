require "application_system_test_case"

class AutresDepensesTest < ApplicationSystemTestCase
  setup do
    @autres_depense = autres_depenses(:one)
  end

  test "visiting the index" do
    visit autres_depenses_url
    assert_selector "h1", text: "Autres depenses"
  end

  test "should create autres depense" do
    visit autres_depenses_url
    click_on "New autres depense"

    fill_in "Apport local", with: @autres_depense.apport_local_id
    fill_in "Date jour", with: @autres_depense.date_jour
    fill_in "Description", with: @autres_depense.description
    fill_in "Montant", with: @autres_depense.montant
    fill_in "Titre", with: @autres_depense.titre
    click_on "Create Autres depense"

    assert_text "Autres depense was successfully created"
    click_on "Back"
  end

  test "should update Autres depense" do
    visit autres_depense_url(@autres_depense)
    click_on "Edit this autres depense", match: :first

    fill_in "Apport local", with: @autres_depense.apport_local_id
    fill_in "Date jour", with: @autres_depense.date_jour
    fill_in "Description", with: @autres_depense.description
    fill_in "Montant", with: @autres_depense.montant
    fill_in "Titre", with: @autres_depense.titre
    click_on "Update Autres depense"

    assert_text "Autres depense was successfully updated"
    click_on "Back"
  end

  test "should destroy Autres depense" do
    visit autres_depense_url(@autres_depense)
    click_on "Destroy this autres depense", match: :first

    assert_text "Autres depense was successfully destroyed"
  end
end
