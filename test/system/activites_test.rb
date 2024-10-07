require "application_system_test_case"

class ActivitesTest < ApplicationSystemTestCase
  setup do
    @activite = activites(:one)
  end

  test "visiting the index" do
    visit activites_url
    assert_selector "h1", text: "Activites"
  end

  test "should create activite" do
    visit activites_url
    click_on "New activite"

    fill_in "Date debut", with: @activite.date_debut
    fill_in "Date fin", with: @activite.date_fin
    fill_in "Description", with: @activite.description
    fill_in "Projet", with: @activite.projet_id
    fill_in "Titre", with: @activite.titre
    click_on "Create Activite"

    assert_text "Activite was successfully created"
    click_on "Back"
  end

  test "should update Activite" do
    visit activite_url(@activite)
    click_on "Edit this activite", match: :first

    fill_in "Date debut", with: @activite.date_debut
    fill_in "Date fin", with: @activite.date_fin
    fill_in "Description", with: @activite.description
    fill_in "Projet", with: @activite.projet_id
    fill_in "Titre", with: @activite.titre
    click_on "Update Activite"

    assert_text "Activite was successfully updated"
    click_on "Back"
  end

  test "should destroy Activite" do
    visit activite_url(@activite)
    click_on "Destroy this activite", match: :first

    assert_text "Activite was successfully destroyed"
  end
end
