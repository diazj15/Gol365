class RemoveTournamentIdFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :tournament_id, :string
  end
end
