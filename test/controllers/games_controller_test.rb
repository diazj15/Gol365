require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { datetime: @game.datetime, home_team: @game.home_team, home_team_result: @game.home_team_result, integer: @game.integer, stadium: @game.stadium, start_date: @game.start_date, status: @game.status, tournament_id: @game.tournament_id, visit_team: @game.visit_team, visit_team_result: @game.visit_team_result }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { datetime: @game.datetime, home_team: @game.home_team, home_team_result: @game.home_team_result, integer: @game.integer, stadium: @game.stadium, start_date: @game.start_date, status: @game.status, tournament_id: @game.tournament_id, visit_team: @game.visit_team, visit_team_result: @game.visit_team_result }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
