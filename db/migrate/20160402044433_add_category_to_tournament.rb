class AddCategoryToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :category, :integer
  end
end
