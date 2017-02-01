class AddCategoryToChampionshiptable < ActiveRecord::Migration
  def change
    add_column :championshiptables, :category, :integer
  end
end
