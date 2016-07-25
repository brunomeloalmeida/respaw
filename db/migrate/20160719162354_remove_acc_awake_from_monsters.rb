class RemoveAccAwakeFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :acc_awake, :string
  end
end
