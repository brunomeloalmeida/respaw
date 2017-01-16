class AddAttachmentAvatarSkill4ToMonsters < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.attachment :avatar_skill_4
    end
  end

  def self.down
    remove_attachment :monsters, :avatar_skill_4
  end
end
