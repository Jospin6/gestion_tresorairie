require "application_system_test_case"

class HistoriqueApportsTest < ApplicationSystemTestCase
  setup do
    @historique_apport = historique_apports(:one)
  end

  test "visiting the index" do
    visit historique_apports_url
    assert_selector "h1", text: "Historique apports"
  end

  test "should create historique apport" do
    visit historique_apports_url
    click_on "New historique apport"

    fill_in "Date jour", with: @historique_apport.date_jour
    fill_in "Membre conseil", with: @historique_apport.membre_conseil_id
    fill_in "Montant recu", with: @historique_apport.montant_recu
    click_on "Create Historique apport"

    assert_text "Historique apport was successfully created"
    click_on "Back"
  end

  test "should update Historique apport" do
    visit historique_apport_url(@historique_apport)
    click_on "Edit this historique apport", match: :first

    fill_in "Date jour", with: @historique_apport.date_jour
    fill_in "Membre conseil", with: @historique_apport.membre_conseil_id
    fill_in "Montant recu", with: @historique_apport.montant_recu
    click_on "Update Historique apport"

    assert_text "Historique apport was successfully updated"
    click_on "Back"
  end

  test "should destroy Historique apport" do
    visit historique_apport_url(@historique_apport)
    click_on "Destroy this historique apport", match: :first

    assert_text "Historique apport was successfully destroyed"
  end
end
