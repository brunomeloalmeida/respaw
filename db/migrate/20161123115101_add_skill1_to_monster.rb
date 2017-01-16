class AddSkill1ToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :skill1, :text
  end
end
