class RemoveIntegerFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :integer, :string
  end
end
