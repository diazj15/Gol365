require 'test_helper'

class GameactionsControllerTest < ActionController::TestCase
  setup do
    @gameaction = gameactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gameactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gameaction" do
    assert_difference('Gameaction.count') do
      post :create, gameaction: { action_id: @gameaction.action_id, comments: @gameaction.comments, game_id: @gameaction.game_id, half_number: @gameaction.half_number, minute: @gameaction.minute, payer_id: @gameaction.payer_id, team_id: @gameaction.team_id }
    end

    assert_redirected_to gameaction_path(assigns(:gameaction))
  end

  test "should show gameaction" do
    get :show, id: @gameaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gameaction
    assert_response :success
  end

  test "should update gameaction" do
    patch :update, id: @gameaction, gameaction: { action_id: @gameaction.action_id, comments: @gameaction.comments, game_id: @gameaction.game_id, half_number: @gameaction.half_number, minute: @gameaction.minute, payer_id: @gameaction.payer_id, team_id: @gameaction.team_id }
    assert_redirected_to gameaction_path(assigns(:gameaction))
  end

  test "should destroy gameaction" do
    assert_difference('Gameaction.count', -1) do
      delete :destroy, id: @gameaction
    end

    assert_redirected_to gameactions_path
  end
end
