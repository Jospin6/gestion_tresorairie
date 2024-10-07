require "test_helper"

class ProjetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projet = projets(:one)
  end

  test "should get index" do
    get projets_url
    assert_response :success
  end

  test "should get new" do
    get new_projet_url
    assert_response :success
  end

  test "should create projet" do
    assert_difference("Projet.count") do
      post projets_url, params: { projet: { date_debut: @projet.date_debut, date_fin: @projet.date_fin, description: @projet.description, titre: @projet.titre } }
    end

    assert_redirected_to projet_url(Projet.last)
  end

  test "should show projet" do
    get projet_url(@projet)
    assert_response :success
  end

  test "should get edit" do
    get edit_projet_url(@projet)
    assert_response :success
  end

  test "should update projet" do
    patch projet_url(@projet), params: { projet: { date_debut: @projet.date_debut, date_fin: @projet.date_fin, description: @projet.description, titre: @projet.titre } }
    assert_redirected_to projet_url(@projet)
  end

  test "should destroy projet" do
    assert_difference("Projet.count", -1) do
      delete projet_url(@projet)
    end

    assert_redirected_to projets_url
  end
end
