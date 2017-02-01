require 'test_helper'

class PlayerpositionsControllerTest < ActionController::TestCase
  setup do
    @playerposition = playerpositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playerpositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playerposition" do
    assert_difference('Playerposition.count') do
      post :create, playerposition: { description: @playerposition.description }
    end

    assert_redirected_to playerposition_path(assigns(:playerposition))
  end

  test "should show playerposition" do
    get :show, id: @playerposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playerposition
    assert_response :success
  end

  test "should update playerposition" do
    patch :update, id: @playerposition, playerposition: { description: @playerposition.description }
    assert_redirected_to playerposition_path(assigns(:playerposition))
  end

  test "should destroy playerposition" do
    assert_difference('Playerposition.count', -1) do
      delete :destroy, id: @playerposition
    end

    assert_redirected_to playerpositions_path
  end
end
