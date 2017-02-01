class CreateGameplayers < ActiveRecord::Migration
  def change
    create_table :gameplayers do |t|
      t.integer :idgame
      t.integer :iteam
      t.integer :idplayer

      t.timestamps null: false
    end
  end
end
