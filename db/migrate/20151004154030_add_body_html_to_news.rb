class AddBodyHtmlToNews < ActiveRecord::Migration
  def change
    add_column :news, :body_html, :string
  end
end
