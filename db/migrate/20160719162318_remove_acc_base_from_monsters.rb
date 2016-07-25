class RemoveAccBaseFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :acc_base, :string
  end
end
