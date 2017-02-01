class RemoveStartDateFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :start_date, :string
  end
end
