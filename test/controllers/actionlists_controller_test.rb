require 'test_helper'

class ActionlistsControllerTest < ActionController::TestCase
  setup do
    @actionlist = actionlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actionlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actionlist" do
    assert_difference('Actionlist.count') do
      post :create, actionlist: { name: @actionlist.name }
    end

    assert_redirected_to actionlist_path(assigns(:actionlist))
  end

  test "should show actionlist" do
    get :show, id: @actionlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actionlist
    assert_response :success
  end

  test "should update actionlist" do
    patch :update, id: @actionlist, actionlist: { name: @actionlist.name }
    assert_redirected_to actionlist_path(assigns(:actionlist))
  end

  test "should destroy actionlist" do
    assert_difference('Actionlist.count', -1) do
      delete :destroy, id: @actionlist
    end

    assert_redirected_to actionlists_path
  end
end
