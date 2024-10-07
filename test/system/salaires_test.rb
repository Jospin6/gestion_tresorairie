require "application_system_test_case"

class SalairesTest < ApplicationSystemTestCase
  setup do
    @salaire = salaires(:one)
  end

  test "visiting the index" do
    visit salaires_url
    assert_selector "h1", text: "Salaires"
  end

  test "should create salaire" do
    visit salaires_url
    click_on "New salaire"

    fill_in "Annee", with: @salaire.annee
    fill_in "Apport local", with: @salaire.apport_local_id
    fill_in "Date jour", with: @salaire.date_jour
    fill_in "Employe", with: @salaire.employe_id
    fill_in "Mois", with: @salaire.mois
    fill_in "Montant", with: @salaire.montant
    click_on "Create Salaire"

    assert_text "Salaire was successfully created"
    click_on "Back"
  end

  test "should update Salaire" do
    visit salaire_url(@salaire)
    click_on "Edit this salaire", match: :first

    fill_in "Annee", with: @salaire.annee
    fill_in "Apport local", with: @salaire.apport_local_id
    fill_in "Date jour", with: @salaire.date_jour
    fill_in "Employe", with: @salaire.employe_id
    fill_in "Mois", with: @salaire.mois
    fill_in "Montant", with: @salaire.montant
    click_on "Update Salaire"

    assert_text "Salaire was successfully updated"
    click_on "Back"
  end

  test "should destroy Salaire" do
    visit salaire_url(@salaire)
    click_on "Destroy this salaire", match: :first

    assert_text "Salaire was successfully destroyed"
  end
end
