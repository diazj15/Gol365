require 'test_helper'

class ChampionshiptablesControllerTest < ActionController::TestCase
  setup do
    @championshiptable = championshiptables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:championshiptables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create championshiptable" do
    assert_difference('Championshiptable.count') do
      post :create, championshiptable: { gd: @championshiptable.gd, lg: @championshiptable.lg, pg: @championshiptable.pg, pts: @championshiptable.pts, rg: @championshiptable.rg, sg: @championshiptable.sg, tg: @championshiptable.tg, wg: @championshiptable.wg }
    end

    assert_redirected_to championshiptable_path(assigns(:championshiptable))
  end

  test "should show championshiptable" do
    get :show, id: @championshiptable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @championshiptable
    assert_response :success
  end

  test "should update championshiptable" do
    patch :update, id: @championshiptable, championshiptable: { gd: @championshiptable.gd, lg: @championshiptable.lg, pg: @championshiptable.pg, pts: @championshiptable.pts, rg: @championshiptable.rg, sg: @championshiptable.sg, tg: @championshiptable.tg, wg: @championshiptable.wg }
    assert_redirected_to championshiptable_path(assigns(:championshiptable))
  end

  test "should destroy championshiptable" do
    assert_difference('Championshiptable.count', -1) do
      delete :destroy, id: @championshiptable
    end

    assert_redirected_to championshiptables_path
  end
end
