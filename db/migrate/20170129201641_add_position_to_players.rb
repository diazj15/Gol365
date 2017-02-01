class AddPositionToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :position, :text
  end
end
