class AddFieldsToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :cr, :string
    add_column :monsters, :cd, :string
    add_column :monsters, :res, :string
    add_column :monsters, :acc, :string
  end
end
