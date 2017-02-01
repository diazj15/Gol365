require 'test_helper'

class TeamfieldsControllerTest < ActionController::TestCase
  setup do
    @teamfield = teamfields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamfields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamfield" do
    assert_difference('Teamfield.count') do
      post :create, teamfield: { capacity: @teamfield.capacity, city: @teamfield.city, country: @teamfield.country, name: @teamfield.name }
    end

    assert_redirected_to teamfield_path(assigns(:teamfield))
  end

  test "should show teamfield" do
    get :show, id: @teamfield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamfield
    assert_response :success
  end

  test "should update teamfield" do
    patch :update, id: @teamfield, teamfield: { capacity: @teamfield.capacity, city: @teamfield.city, country: @teamfield.country, name: @teamfield.name }
    assert_redirected_to teamfield_path(assigns(:teamfield))
  end

  test "should destroy teamfield" do
    assert_difference('Teamfield.count', -1) do
      delete :destroy, id: @teamfield
    end

    assert_redirected_to teamfields_path
  end
end
