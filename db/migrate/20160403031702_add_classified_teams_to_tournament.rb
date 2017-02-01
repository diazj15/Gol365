class AddClassifiedTeamsToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :classifiedteams, :integer
  end
end
