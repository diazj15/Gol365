class AddPositionToGamePlayers < ActiveRecord::Migration
  def change
    add_column :gameplayers, :position, :text
  end
end
