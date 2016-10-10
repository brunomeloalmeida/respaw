class AddAttachmentAvatarAwakeToMonsters < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.attachment :avatar_awake
    end
  end

  def self.down
    remove_attachment :monsters, :avatar_awake
  end
end
