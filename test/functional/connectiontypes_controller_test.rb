require 'test_helper'

class ConnectiontypesControllerTest < ActionController::TestCase
  setup do
    @connectiontype = connectiontypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connectiontypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connectiontype" do
    assert_difference('Connectiontype.count') do
      post :create, connectiontype: { bezeichnung: @connectiontype.bezeichnung, name: @connectiontype.name, region_id: @connectiontype.region_id }
    end

    assert_redirected_to connectiontype_path(assigns(:connectiontype))
  end

  test "should show connectiontype" do
    get :show, id: @connectiontype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @connectiontype
    assert_response :success
  end

  test "should update connectiontype" do
    put :update, id: @connectiontype, connectiontype: { bezeichnung: @connectiontype.bezeichnung, name: @connectiontype.name, region_id: @connectiontype.region_id }
    assert_redirected_to connectiontype_path(assigns(:connectiontype))
  end

  test "should destroy connectiontype" do
    assert_difference('Connectiontype.count', -1) do
      delete :destroy, id: @connectiontype
    end

    assert_redirected_to connectiontypes_path
  end
end
