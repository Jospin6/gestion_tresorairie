require "test_helper"

class FinancementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financement = financements(:one)
  end

  test "should get index" do
    get financements_url
    assert_response :success
  end

  test "should get new" do
    get new_financement_url
    assert_response :success
  end

  test "should create financement" do
    assert_difference("Financement.count") do
      post financements_url, params: { financement: { banque: @financement.banque, montant: @financement.montant, num_bordereau: @financement.num_bordereau, partenaire_id: @financement.partenaire_id, projet_id: @financement.projet_id } }
    end

    assert_redirected_to financement_url(Financement.last)
  end

  test "should show financement" do
    get financement_url(@financement)
    assert_response :success
  end

  test "should get edit" do
    get edit_financement_url(@financement)
    assert_response :success
  end

  test "should update financement" do
    patch financement_url(@financement), params: { financement: { banque: @financement.banque, montant: @financement.montant, num_bordereau: @financement.num_bordereau, partenaire_id: @financement.partenaire_id, projet_id: @financement.projet_id } }
    assert_redirected_to financement_url(@financement)
  end

  test "should destroy financement" do
    assert_difference("Financement.count", -1) do
      delete financement_url(@financement)
    end

    assert_redirected_to financements_url
  end
end
