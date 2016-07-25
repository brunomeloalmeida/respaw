class RemoveResAwakeFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :res_awake, :string
  end
end
