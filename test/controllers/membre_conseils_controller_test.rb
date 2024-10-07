require "test_helper"

class MembreConseilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membre_conseil = membre_conseils(:one)
  end

  test "should get index" do
    get membre_conseils_url
    assert_response :success
  end

  test "should get new" do
    get new_membre_conseil_url
    assert_response :success
  end

  test "should create membre_conseil" do
    assert_difference("MembreConseil.count") do
      post membre_conseils_url, params: { membre_conseil: { adresses: @membre_conseil.adresses, contact: @membre_conseil.contact, mail: @membre_conseil.mail, nom: @membre_conseil.nom, post_nom: @membre_conseil.post_nom } }
    end

    assert_redirected_to membre_conseil_url(MembreConseil.last)
  end

  test "should show membre_conseil" do
    get membre_conseil_url(@membre_conseil)
    assert_response :success
  end

  test "should get edit" do
    get edit_membre_conseil_url(@membre_conseil)
    assert_response :success
  end

  test "should update membre_conseil" do
    patch membre_conseil_url(@membre_conseil), params: { membre_conseil: { adresses: @membre_conseil.adresses, contact: @membre_conseil.contact, mail: @membre_conseil.mail, nom: @membre_conseil.nom, post_nom: @membre_conseil.post_nom } }
    assert_redirected_to membre_conseil_url(@membre_conseil)
  end

  test "should destroy membre_conseil" do
    assert_difference("MembreConseil.count", -1) do
      delete membre_conseil_url(@membre_conseil)
    end

    assert_redirected_to membre_conseils_url
  end
end
