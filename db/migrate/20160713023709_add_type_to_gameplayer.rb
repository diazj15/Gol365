class AddTypeToGameplayer < ActiveRecord::Migration
  def change
    add_column :gameplayers, :type, :string
  end
end
