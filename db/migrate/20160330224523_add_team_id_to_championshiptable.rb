class AddTeamIdToChampionshiptable < ActiveRecord::Migration
  def change
    add_column :championshiptables, :team_id, :integer
  end
end
