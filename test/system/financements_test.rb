require "application_system_test_case"

class FinancementsTest < ApplicationSystemTestCase
  setup do
    @financement = financements(:one)
  end

  test "visiting the index" do
    visit financements_url
    assert_selector "h1", text: "Financements"
  end

  test "should create financement" do
    visit financements_url
    click_on "New financement"

    fill_in "Banque", with: @financement.banque
    fill_in "Montant", with: @financement.montant
    fill_in "Num bordereau", with: @financement.num_bordereau
    fill_in "Partenaire", with: @financement.partenaire_id
    fill_in "Projet", with: @financement.projet_id
    click_on "Create Financement"

    assert_text "Financement was successfully created"
    click_on "Back"
  end

  test "should update Financement" do
    visit financement_url(@financement)
    click_on "Edit this financement", match: :first

    fill_in "Banque", with: @financement.banque
    fill_in "Montant", with: @financement.montant
    fill_in "Num bordereau", with: @financement.num_bordereau
    fill_in "Partenaire", with: @financement.partenaire_id
    fill_in "Projet", with: @financement.projet_id
    click_on "Update Financement"

    assert_text "Financement was successfully updated"
    click_on "Back"
  end

  test "should destroy Financement" do
    visit financement_url(@financement)
    click_on "Destroy this financement", match: :first

    assert_text "Financement was successfully destroyed"
  end
end
