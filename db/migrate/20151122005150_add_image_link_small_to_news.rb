class AddImageLinkSmallToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_link_small, :text
  end
end
