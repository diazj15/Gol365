class AddAttachmentImageToPlayerpositions < ActiveRecord::Migration
  def self.up
    change_table :playerpositions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :playerpositions, :image
  end
end
