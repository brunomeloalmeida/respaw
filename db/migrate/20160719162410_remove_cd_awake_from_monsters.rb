class RemoveCdAwakeFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :cd_awake, :string
  end
end
