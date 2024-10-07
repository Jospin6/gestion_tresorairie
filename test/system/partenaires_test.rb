require "application_system_test_case"

class PartenairesTest < ApplicationSystemTestCase
  setup do
    @partenaire = partenaires(:one)
  end

  test "visiting the index" do
    visit partenaires_url
    assert_selector "h1", text: "Partenaires"
  end

  test "should create partenaire" do
    visit partenaires_url
    click_on "New partenaire"

    fill_in "Adresse", with: @partenaire.adresse
    fill_in "Contact", with: @partenaire.contact
    fill_in "Mail", with: @partenaire.mail
    fill_in "Nom", with: @partenaire.nom
    fill_in "Type partenaire", with: @partenaire.type_partenaire
    click_on "Create Partenaire"

    assert_text "Partenaire was successfully created"
    click_on "Back"
  end

  test "should update Partenaire" do
    visit partenaire_url(@partenaire)
    click_on "Edit this partenaire", match: :first

    fill_in "Adresse", with: @partenaire.adresse
    fill_in "Contact", with: @partenaire.contact
    fill_in "Mail", with: @partenaire.mail
    fill_in "Nom", with: @partenaire.nom
    fill_in "Type partenaire", with: @partenaire.type_partenaire
    click_on "Update Partenaire"

    assert_text "Partenaire was successfully updated"
    click_on "Back"
  end

  test "should destroy Partenaire" do
    visit partenaire_url(@partenaire)
    click_on "Destroy this partenaire", match: :first

    assert_text "Partenaire was successfully destroyed"
  end
end
