require "application_system_test_case"

class MembreConseilsTest < ApplicationSystemTestCase
  setup do
    @membre_conseil = membre_conseils(:one)
  end

  test "visiting the index" do
    visit membre_conseils_url
    assert_selector "h1", text: "Membre conseils"
  end

  test "should create membre conseil" do
    visit membre_conseils_url
    click_on "New membre conseil"

    fill_in "Adresses", with: @membre_conseil.adresses
    fill_in "Contact", with: @membre_conseil.contact
    fill_in "Mail", with: @membre_conseil.mail
    fill_in "Nom", with: @membre_conseil.nom
    fill_in "Post nom", with: @membre_conseil.post_nom
    click_on "Create Membre conseil"

    assert_text "Membre conseil was successfully created"
    click_on "Back"
  end

  test "should update Membre conseil" do
    visit membre_conseil_url(@membre_conseil)
    click_on "Edit this membre conseil", match: :first

    fill_in "Adresses", with: @membre_conseil.adresses
    fill_in "Contact", with: @membre_conseil.contact
    fill_in "Mail", with: @membre_conseil.mail
    fill_in "Nom", with: @membre_conseil.nom
    fill_in "Post nom", with: @membre_conseil.post_nom
    click_on "Update Membre conseil"

    assert_text "Membre conseil was successfully updated"
    click_on "Back"
  end

  test "should destroy Membre conseil" do
    visit membre_conseil_url(@membre_conseil)
    click_on "Destroy this membre conseil", match: :first

    assert_text "Membre conseil was successfully destroyed"
  end
end
