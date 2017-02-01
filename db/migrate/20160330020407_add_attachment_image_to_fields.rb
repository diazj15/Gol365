class AddAttachmentImageToFields < ActiveRecord::Migration
  def self.up
    change_table :fields do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fields, :image
  end
end
