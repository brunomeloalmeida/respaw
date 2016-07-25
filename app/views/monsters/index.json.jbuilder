json.array!(@monsters) do |monster|
  json.extract! monster, :id, :name, :element, :natural, :hp_base, :atk_base, :def_base, :vel_base, :cr_base, :cd_base, :res_base, :acc_base, :hp_awake, :atk_awake, :def_awake, :vel_awake, :cr_awake, :cd_awake, :res_awake, :acc_awake, :high_essence_elemental, :mid_essence_elemental, :low_essence_elemental, :high_essence_magic, :mid_essence_magic, :low_essence_magic, :runes
  json.url monster_url(monster, format: :json)
end
