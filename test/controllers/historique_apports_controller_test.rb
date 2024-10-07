require "test_helper"

class HistoriqueApportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historique_apport = historique_apports(:one)
  end

  test "should get index" do
    get historique_apports_url
    assert_response :success
  end

  test "should get new" do
    get new_historique_apport_url
    assert_response :success
  end

  test "should create historique_apport" do
    assert_difference("HistoriqueApport.count") do
      post historique_apports_url, params: { historique_apport: { date_jour: @historique_apport.date_jour, membre_conseil_id: @historique_apport.membre_conseil_id, montant_recu: @historique_apport.montant_recu } }
    end

    assert_redirected_to historique_apport_url(HistoriqueApport.last)
  end

  test "should show historique_apport" do
    get historique_apport_url(@historique_apport)
    assert_response :success
  end

  test "should get edit" do
    get edit_historique_apport_url(@historique_apport)
    assert_response :success
  end

  test "should update historique_apport" do
    patch historique_apport_url(@historique_apport), params: { historique_apport: { date_jour: @historique_apport.date_jour, membre_conseil_id: @historique_apport.membre_conseil_id, montant_recu: @historique_apport.montant_recu } }
    assert_redirected_to historique_apport_url(@historique_apport)
  end

  test "should destroy historique_apport" do
    assert_difference("HistoriqueApport.count", -1) do
      delete historique_apport_url(@historique_apport)
    end

    assert_redirected_to historique_apports_url
  end
end
