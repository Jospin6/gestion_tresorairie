require "test_helper"

class ApportLocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apport_local = apport_locals(:one)
  end

  test "should get index" do
    get apport_locals_url
    assert_response :success
  end

  test "should get new" do
    get new_apport_local_url
    assert_response :success
  end

  test "should create apport_local" do
    assert_difference("ApportLocal.count") do
      post apport_locals_url, params: { apport_local: { montant: @apport_local.montant } }
    end

    assert_redirected_to apport_local_url(ApportLocal.last)
  end

  test "should show apport_local" do
    get apport_local_url(@apport_local)
    assert_response :success
  end

  test "should get edit" do
    get edit_apport_local_url(@apport_local)
    assert_response :success
  end

  test "should update apport_local" do
    patch apport_local_url(@apport_local), params: { apport_local: { montant: @apport_local.montant } }
    assert_redirected_to apport_local_url(@apport_local)
  end

  test "should destroy apport_local" do
    assert_difference("ApportLocal.count", -1) do
      delete apport_local_url(@apport_local)
    end

    assert_redirected_to apport_locals_url
  end
end
