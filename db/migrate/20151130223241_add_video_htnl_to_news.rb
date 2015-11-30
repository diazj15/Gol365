class AddVideoHtnlToNews < ActiveRecord::Migration
  def change
    add_column :news, :video_html, :text
  end
end
