class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.text :name
      t.integer :capacity
      t.text :city
      t.text :country

      t.timestamps null: false
    end
  end
end
