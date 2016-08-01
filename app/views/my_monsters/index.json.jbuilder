json.array!(@my_monsters) do |my_monster|
  json.extract! my_monster, :id, :monster_id, :summoner_id, :level, :hp_base, :hp_rune, :atk_base, :atk_rune, :def_base, :def_rune, :vel_base, :vel_rune, :cr, :cd, :res, :acc, :runes
  json.url my_monster_url(my_monster, format: :json)
end
