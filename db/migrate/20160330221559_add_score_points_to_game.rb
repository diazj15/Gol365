class AddScorePointsToGame < ActiveRecord::Migration
  def change
    add_column :games, :scorepoints, :integer
  end
end
