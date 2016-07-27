class AddSummonerToMyMonster < ActiveRecord::Migration
  def change
    add_reference :my_monsters, :summoner, index: true, foreign_key: true
  end
end
