require "application_system_test_case"

class ApportLocalsTest < ApplicationSystemTestCase
  setup do
    @apport_local = apport_locals(:one)
  end

  test "visiting the index" do
    visit apport_locals_url
    assert_selector "h1", text: "Apport locals"
  end

  test "should create apport local" do
    visit apport_locals_url
    click_on "New apport local"

    fill_in "Montant", with: @apport_local.montant
    click_on "Create Apport local"

    assert_text "Apport local was successfully created"
    click_on "Back"
  end

  test "should update Apport local" do
    visit apport_local_url(@apport_local)
    click_on "Edit this apport local", match: :first

    fill_in "Montant", with: @apport_local.montant
    click_on "Update Apport local"

    assert_text "Apport local was successfully updated"
    click_on "Back"
  end

  test "should destroy Apport local" do
    visit apport_local_url(@apport_local)
    click_on "Destroy this apport local", match: :first

    assert_text "Apport local was successfully destroyed"
  end
end
