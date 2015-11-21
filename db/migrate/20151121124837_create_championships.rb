class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.integer :confederation_id

      t.timestamps null: false
    end
  end
end
