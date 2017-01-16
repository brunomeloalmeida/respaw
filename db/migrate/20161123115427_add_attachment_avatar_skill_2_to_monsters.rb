class AddAttachmentAvatarSkill2ToMonsters < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.attachment :avatar_skill_2
    end
  end

  def self.down
    remove_attachment :monsters, :avatar_skill_2
  end
end
