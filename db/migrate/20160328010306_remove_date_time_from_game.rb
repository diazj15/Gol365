class RemoveDateTimeFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :date_time, :string
  end
end
