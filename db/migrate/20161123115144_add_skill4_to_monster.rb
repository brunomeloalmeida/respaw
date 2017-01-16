class AddSkill4ToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :skill4, :text
  end
end
