class AddStarToMyMonsters < ActiveRecord::Migration
  def change
    add_column :my_monsters, :star, :integer
  end
end
