class RemoveResBaseFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :res_base, :string
  end
end
