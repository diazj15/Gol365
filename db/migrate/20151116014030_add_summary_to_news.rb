class AddSummaryToNews < ActiveRecord::Migration
  def change
    add_column :news, :summary, :text
  end
end
