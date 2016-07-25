class RemoveCdBaseFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :cd_base, :string
  end
end
