require "test_helper"

class PartenairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partenaire = partenaires(:one)
  end

  test "should get index" do
    get partenaires_url
    assert_response :success
  end

  test "should get new" do
    get new_partenaire_url
    assert_response :success
  end

  test "should create partenaire" do
    assert_difference("Partenaire.count") do
      post partenaires_url, params: { partenaire: { adresse: @partenaire.adresse, contact: @partenaire.contact, mail: @partenaire.mail, nom: @partenaire.nom, type_partenaire: @partenaire.type_partenaire } }
    end

    assert_redirected_to partenaire_url(Partenaire.last)
  end

  test "should show partenaire" do
    get partenaire_url(@partenaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_partenaire_url(@partenaire)
    assert_response :success
  end

  test "should update partenaire" do
    patch partenaire_url(@partenaire), params: { partenaire: { adresse: @partenaire.adresse, contact: @partenaire.contact, mail: @partenaire.mail, nom: @partenaire.nom, type_partenaire: @partenaire.type_partenaire } }
    assert_redirected_to partenaire_url(@partenaire)
  end

  test "should destroy partenaire" do
    assert_difference("Partenaire.count", -1) do
      delete partenaire_url(@partenaire)
    end

    assert_redirected_to partenaires_url
  end
end
