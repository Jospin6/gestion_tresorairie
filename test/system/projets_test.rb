require "application_system_test_case"

class ProjetsTest < ApplicationSystemTestCase
  setup do
    @projet = projets(:one)
  end

  test "visiting the index" do
    visit projets_url
    assert_selector "h1", text: "Projets"
  end

  test "should create projet" do
    visit projets_url
    click_on "New projet"

    fill_in "Date debut", with: @projet.date_debut
    fill_in "Date fin", with: @projet.date_fin
    fill_in "Description", with: @projet.description
    fill_in "Titre", with: @projet.titre
    click_on "Create Projet"

    assert_text "Projet was successfully created"
    click_on "Back"
  end

  test "should update Projet" do
    visit projet_url(@projet)
    click_on "Edit this projet", match: :first

    fill_in "Date debut", with: @projet.date_debut
    fill_in "Date fin", with: @projet.date_fin
    fill_in "Description", with: @projet.description
    fill_in "Titre", with: @projet.titre
    click_on "Update Projet"

    assert_text "Projet was successfully updated"
    click_on "Back"
  end

  test "should destroy Projet" do
    visit projet_url(@projet)
    click_on "Destroy this projet", match: :first

    assert_text "Projet was successfully destroyed"
  end
end
