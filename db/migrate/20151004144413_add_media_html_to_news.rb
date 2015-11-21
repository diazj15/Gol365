class AddMediaHtmlToNews < ActiveRecord::Migration
  def change
    add_column :news, :media_html, :string
  end
end
