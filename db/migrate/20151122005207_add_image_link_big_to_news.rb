class AddImageLinkBigToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_link_big, :text
  end
end
