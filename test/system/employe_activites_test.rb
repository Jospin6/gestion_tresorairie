require "application_system_test_case"

class EmployeActivitesTest < ApplicationSystemTestCase
  setup do
    @employe_activite = employe_activites(:one)
  end

  test "visiting the index" do
    visit employe_activites_url
    assert_selector "h1", text: "Employe activites"
  end

  test "should create employe activite" do
    visit employe_activites_url
    click_on "New employe activite"

    fill_in "Activite", with: @employe_activite.activite_id
    fill_in "Employe", with: @employe_activite.employe_id
    click_on "Create Employe activite"

    assert_text "Employe activite was successfully created"
    click_on "Back"
  end

  test "should update Employe activite" do
    visit employe_activite_url(@employe_activite)
    click_on "Edit this employe activite", match: :first

    fill_in "Activite", with: @employe_activite.activite_id
    fill_in "Employe", with: @employe_activite.employe_id
    click_on "Update Employe activite"

    assert_text "Employe activite was successfully updated"
    click_on "Back"
  end

  test "should destroy Employe activite" do
    visit employe_activite_url(@employe_activite)
    click_on "Destroy this employe activite", match: :first

    assert_text "Employe activite was successfully destroyed"
  end
end
