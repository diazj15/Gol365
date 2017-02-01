class AddChampionshipIdToChampionshiptable < ActiveRecord::Migration
  def change
    add_column :championshiptables, :championship_id, :integer
  end
end
