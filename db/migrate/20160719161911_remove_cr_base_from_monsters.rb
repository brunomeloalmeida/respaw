class RemoveCrBaseFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :cr_base, :string
  end
end
