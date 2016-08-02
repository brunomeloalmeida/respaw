class AddFieldsAwakeToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :cr_awake, :string
    add_column :monsters, :cd_awake, :string
    add_column :monsters, :res_awake, :string
    add_column :monsters, :acc_awake, :string
  end
end
