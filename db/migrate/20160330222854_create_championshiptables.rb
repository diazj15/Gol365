class CreateChampionshiptables < ActiveRecord::Migration
  def change
    create_table :championshiptables do |t|
      t.integer :pg
      t.integer :wg
      t.integer :tg
      t.integer :lg
      t.integer :sg
      t.integer :rg
      t.integer :gd
      t.integer :pts

      t.timestamps null: false
    end
  end
end
