require "test_helper"

class AutresDepensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autres_depense = autres_depenses(:one)
  end

  test "should get index" do
    get autres_depenses_url
    assert_response :success
  end

  test "should get new" do
    get new_autres_depense_url
    assert_response :success
  end

  test "should create autres_depense" do
    assert_difference("AutresDepense.count") do
      post autres_depenses_url, params: { autres_depense: { apport_local_id: @autres_depense.apport_local_id, date_jour: @autres_depense.date_jour, description: @autres_depense.description, montant: @autres_depense.montant, titre: @autres_depense.titre } }
    end

    assert_redirected_to autres_depense_url(AutresDepense.last)
  end

  test "should show autres_depense" do
    get autres_depense_url(@autres_depense)
    assert_response :success
  end

  test "should get edit" do
    get edit_autres_depense_url(@autres_depense)
    assert_response :success
  end

  test "should update autres_depense" do
    patch autres_depense_url(@autres_depense), params: { autres_depense: { apport_local_id: @autres_depense.apport_local_id, date_jour: @autres_depense.date_jour, description: @autres_depense.description, montant: @autres_depense.montant, titre: @autres_depense.titre } }
    assert_redirected_to autres_depense_url(@autres_depense)
  end

  test "should destroy autres_depense" do
    assert_difference("AutresDepense.count", -1) do
      delete autres_depense_url(@autres_depense)
    end

    assert_redirected_to autres_depenses_url
  end
end
