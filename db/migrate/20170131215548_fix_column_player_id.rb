class FixColumnPlayerId < ActiveRecord::Migration
 def self.up
    rename_column :gameplayers, :idplayer, :player_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
