class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.text :name
      t.text :country
      t.date :startDate
      t.date :endDate

      t.timestamps null: false
    end
  end
end
