class AddEliminatedTeamsToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :eliminatedteams, :integer
  end
end
