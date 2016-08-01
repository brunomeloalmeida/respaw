require 'test_helper'

class MyMonstersControllerTest < ActionController::TestCase
  setup do
    @my_monster = my_monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_monster" do
    assert_difference('MyMonster.count') do
      post :create, my_monster: { acc: @my_monster.acc, atk_base: @my_monster.atk_base, atk_rune: @my_monster.atk_rune, cd: @my_monster.cd, cr: @my_monster.cr, def_base: @my_monster.def_base, def_rune: @my_monster.def_rune, hp_base: @my_monster.hp_base, hp_rune: @my_monster.hp_rune, level: @my_monster.level, monster_id: @my_monster.monster_id, res: @my_monster.res, runes: @my_monster.runes, summoner_id: @my_monster.summoner_id, vel_base: @my_monster.vel_base, vel_rune: @my_monster.vel_rune }
    end

    assert_redirected_to my_monster_path(assigns(:my_monster))
  end

  test "should show my_monster" do
    get :show, id: @my_monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_monster
    assert_response :success
  end

  test "should update my_monster" do
    patch :update, id: @my_monster, my_monster: { acc: @my_monster.acc, atk_base: @my_monster.atk_base, atk_rune: @my_monster.atk_rune, cd: @my_monster.cd, cr: @my_monster.cr, def_base: @my_monster.def_base, def_rune: @my_monster.def_rune, hp_base: @my_monster.hp_base, hp_rune: @my_monster.hp_rune, level: @my_monster.level, monster_id: @my_monster.monster_id, res: @my_monster.res, runes: @my_monster.runes, summoner_id: @my_monster.summoner_id, vel_base: @my_monster.vel_base, vel_rune: @my_monster.vel_rune }
    assert_redirected_to my_monster_path(assigns(:my_monster))
  end

  test "should destroy my_monster" do
    assert_difference('MyMonster.count', -1) do
      delete :destroy, id: @my_monster
    end

    assert_redirected_to my_monsters_path
  end
end
