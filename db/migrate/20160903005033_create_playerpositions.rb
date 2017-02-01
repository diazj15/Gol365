class CreatePlayerpositions < ActiveRecord::Migration
  def change
    create_table :playerpositions do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
