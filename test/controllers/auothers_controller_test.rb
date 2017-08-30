require 'test_helper'

class AuothersControllerTest < ActionController::TestCase
  setup do
    @auother = auothers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auothers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auother" do
    assert_difference('Auother.count') do
      post :create, auother: { name: @auother.name }
    end

    assert_redirected_to auother_path(assigns(:auother))
  end

  test "should show auother" do
    get :show, id: @auother
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auother
    assert_response :success
  end

  test "should update auother" do
    patch :update, id: @auother, auother: { name: @auother.name }
    assert_redirected_to auother_path(assigns(:auother))
  end

  test "should destroy auother" do
    assert_difference('Auother.count', -1) do
      delete :destroy, id: @auother
    end

    assert_redirected_to auothers_path
  end
end
