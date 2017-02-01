class AddPointsToGame < ActiveRecord::Migration
  def change
    add_column :games, :points, :integer
  end
end
