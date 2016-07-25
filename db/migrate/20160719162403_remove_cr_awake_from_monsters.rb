class RemoveCrAwakeFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :cr_awake, :string
  end
end
