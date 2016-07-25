require 'test_helper'

class MonstersControllerTest < ActionController::TestCase
  setup do
    @monster = monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster" do
    assert_difference('Monster.count') do
      post :create, monster: { acc_awake: @monster.acc_awake, acc_base: @monster.acc_base, atk_awake: @monster.atk_awake, atk_base: @monster.atk_base, cd_awake: @monster.cd_awake, cd_base: @monster.cd_base, cr_awake: @monster.cr_awake, cr_base: @monster.cr_base, def_awake: @monster.def_awake, def_base: @monster.def_base, element: @monster.element, high_essence_elemental: @monster.high_essence_elemental, high_essence_magic: @monster.high_essence_magic, hp_awake: @monster.hp_awake, hp_base: @monster.hp_base, low_essence_elemental: @monster.low_essence_elemental, low_essence_magic: @monster.low_essence_magic, mid_essence_elemental: @monster.mid_essence_elemental, mid_essence_magic: @monster.mid_essence_magic, name: @monster.name, natural: @monster.natural, res_awake: @monster.res_awake, res_base: @monster.res_base, runes: @monster.runes, vel_awake: @monster.vel_awake, vel_base: @monster.vel_base }
    end

    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should show monster" do
    get :show, id: @monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monster
    assert_response :success
  end

  test "should update monster" do
    patch :update, id: @monster, monster: { acc_awake: @monster.acc_awake, acc_base: @monster.acc_base, atk_awake: @monster.atk_awake, atk_base: @monster.atk_base, cd_awake: @monster.cd_awake, cd_base: @monster.cd_base, cr_awake: @monster.cr_awake, cr_base: @monster.cr_base, def_awake: @monster.def_awake, def_base: @monster.def_base, element: @monster.element, high_essence_elemental: @monster.high_essence_elemental, high_essence_magic: @monster.high_essence_magic, hp_awake: @monster.hp_awake, hp_base: @monster.hp_base, low_essence_elemental: @monster.low_essence_elemental, low_essence_magic: @monster.low_essence_magic, mid_essence_elemental: @monster.mid_essence_elemental, mid_essence_magic: @monster.mid_essence_magic, name: @monster.name, natural: @monster.natural, res_awake: @monster.res_awake, res_base: @monster.res_base, runes: @monster.runes, vel_awake: @monster.vel_awake, vel_base: @monster.vel_base }
    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should destroy monster" do
    assert_difference('Monster.count', -1) do
      delete :destroy, id: @monster
    end

    assert_redirected_to monsters_path
  end
end
