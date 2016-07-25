class RenameNaturalFromMonsters < ActiveRecord::Migration
  def change
  	rename_column :monsters, :natural, :star
  end
end
