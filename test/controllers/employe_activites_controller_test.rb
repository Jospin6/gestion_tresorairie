require "test_helper"

class EmployeActivitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employe_activite = employe_activites(:one)
  end

  test "should get index" do
    get employe_activites_url
    assert_response :success
  end

  test "should get new" do
    get new_employe_activite_url
    assert_response :success
  end

  test "should create employe_activite" do
    assert_difference("EmployeActivite.count") do
      post employe_activites_url, params: { employe_activite: { activite_id: @employe_activite.activite_id, employe_id: @employe_activite.employe_id } }
    end

    assert_redirected_to employe_activite_url(EmployeActivite.last)
  end

  test "should show employe_activite" do
    get employe_activite_url(@employe_activite)
    assert_response :success
  end

  test "should get edit" do
    get edit_employe_activite_url(@employe_activite)
    assert_response :success
  end

  test "should update employe_activite" do
    patch employe_activite_url(@employe_activite), params: { employe_activite: { activite_id: @employe_activite.activite_id, employe_id: @employe_activite.employe_id } }
    assert_redirected_to employe_activite_url(@employe_activite)
  end

  test "should destroy employe_activite" do
    assert_difference("EmployeActivite.count", -1) do
      delete employe_activite_url(@employe_activite)
    end

    assert_redirected_to employe_activites_url
  end
end
