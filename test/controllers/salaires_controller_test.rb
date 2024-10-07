require "test_helper"

class SalairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salaire = salaires(:one)
  end

  test "should get index" do
    get salaires_url
    assert_response :success
  end

  test "should get new" do
    get new_salaire_url
    assert_response :success
  end

  test "should create salaire" do
    assert_difference("Salaire.count") do
      post salaires_url, params: { salaire: { annee: @salaire.annee, apport_local_id: @salaire.apport_local_id, date_jour: @salaire.date_jour, employe_id: @salaire.employe_id, mois: @salaire.mois, montant: @salaire.montant } }
    end

    assert_redirected_to salaire_url(Salaire.last)
  end

  test "should show salaire" do
    get salaire_url(@salaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_salaire_url(@salaire)
    assert_response :success
  end

  test "should update salaire" do
    patch salaire_url(@salaire), params: { salaire: { annee: @salaire.annee, apport_local_id: @salaire.apport_local_id, date_jour: @salaire.date_jour, employe_id: @salaire.employe_id, mois: @salaire.mois, montant: @salaire.montant } }
    assert_redirected_to salaire_url(@salaire)
  end

  test "should destroy salaire" do
    assert_difference("Salaire.count", -1) do
      delete salaire_url(@salaire)
    end

    assert_redirected_to salaires_url
  end
end
