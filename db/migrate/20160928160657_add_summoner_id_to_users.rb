class AddSummonerIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :summoner, index: true, foreign_key: true
  end
end
