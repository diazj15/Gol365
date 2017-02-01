require 'test_helper'

class GameplayersControllerTest < ActionController::TestCase
  setup do
    @gameplayer = gameplayers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gameplayers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gameplayer" do
    assert_difference('Gameplayer.count') do
      post :create, gameplayer: { idgame: @gameplayer.idgame, idplayer: @gameplayer.idplayer, iteam: @gameplayer.iteam }
    end

    assert_redirected_to gameplayer_path(assigns(:gameplayer))
  end

  test "should show gameplayer" do
    get :show, id: @gameplayer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gameplayer
    assert_response :success
  end

  test "should update gameplayer" do
    patch :update, id: @gameplayer, gameplayer: { idgame: @gameplayer.idgame, idplayer: @gameplayer.idplayer, iteam: @gameplayer.iteam }
    assert_redirected_to gameplayer_path(assigns(:gameplayer))
  end

  test "should destroy gameplayer" do
    assert_difference('Gameplayer.count', -1) do
      delete :destroy, id: @gameplayer
    end

    assert_redirected_to gameplayers_path
  end
end
