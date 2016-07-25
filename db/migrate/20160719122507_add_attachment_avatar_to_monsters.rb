class AddAttachmentAvatarToMonsters < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :monsters, :avatar
  end
end
