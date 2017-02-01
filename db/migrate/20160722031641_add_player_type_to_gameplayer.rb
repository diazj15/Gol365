class AddPlayerTypeToGameplayer < ActiveRecord::Migration
  def change
    add_column :gameplayers, :playertype, :text
  end
end
