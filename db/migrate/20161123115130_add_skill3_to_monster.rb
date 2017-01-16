class AddSkill3ToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :skill3, :text
  end
end
