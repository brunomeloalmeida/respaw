class AddAwakeToMyMonsters < ActiveRecord::Migration
  def change
    add_column :my_monsters, :awake, :boolean
  end
end
