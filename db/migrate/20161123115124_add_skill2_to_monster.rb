class AddSkill2ToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :skill2, :text
  end
end
