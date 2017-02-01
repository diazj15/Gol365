class CreateGameactions < ActiveRecord::Migration
  def change
    create_table :gameactions do |t|
      t.integer :action_id
      t.integer :game_id
      t.integer :team_id
      t.integer :minute
      t.integer :payer_id
      t.text :comments
      t.integer :half_number

      t.timestamps null: false
    end
  end
end
